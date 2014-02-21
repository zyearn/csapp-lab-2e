/*
 * proxy.c - CS:APP Web proxy
 *
 * TEAM MEMBERS:
 *     Andrew Carnegie, ac00@cs.cmu.edu 
 *     Harry Q. Bovik, bovik@cs.cmu.edu
 * 
 * IMPORTANT: Give a high level description of your code here. You
 * must also provide a header comment at the beginning of each
 * function that describes what that function does.
 */ 

#include "csapp.h"
#define DEFPORT 8080    // default port

/*
 * Golbal variables
*/
extern sem_t sem_log;   // defined in csapp.h
extern sem_t sem_dns;   // defined in csapp.h
FILE *log_file;

/*
 * Function prototypes
 */
int parse_uri(char *uri, char *target_addr, char *path, int  *port);
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, char *uri, int size);
void client_error(int fd, char *cause, char *errnum, char *shortmsg, char *longmsg);
void *do_it(void *);
int read_body_and_send(rio_t *rio, char *body, int len, int fd);
void close_fd(int fd1, int fd2);
/* 
 * main - Main routine for the proxy program 
 */

struct thread_args
{
    int fd;
    struct sockaddr_in sock;
};

int main(int argc, char **argv)
{
    /* Check arguments */
    Signal(SIGPIPE, SIG_IGN);
    int port = (argc == 2) ? atoi(argv[1]) : DEFPORT;
    
    sem_init(&sem_log, 0, 1);
    sem_init(&sem_dns, 0, 1);
    log_file = fopen("./proxy.log", "a");

    int connfd;
    int listenfd = Open_listenfd(port);
    int clientlen;
    struct sockaddr_in clientaddr;
    pthread_t tid;
    struct thread_args args;
    while (1)
    {
        clientlen= sizeof(clientaddr);
        printf("listening..\n");
        struct thread_args *argsp = (struct thread_args *) malloc(sizeof(struct thread_args));
        connfd = Accept(listenfd, (SA *)(&(argsp->sock)), &clientlen); 
        argsp->fd = connfd;
        Pthread_create(&tid, NULL, do_it, (void *)argsp);
        //do_it(connfd, &clientaddr);
    }

    exit(0);
}

void client_error(int fd, char *cause, char *errnum, 
                 char *shortmsg, char *longmsg) 
{
    char buf[MAXLINE], body[MAXBUF];

    /* Build the HTTP response body */
    sprintf(body, "%s: %s\r\n", errnum, shortmsg);
    sprintf(body, "%s%s: %s", body, longmsg, cause);

    /* Print the HTTP response */
    sprintf(buf, "HTTP/1.0 %s %s\r\n", errnum, shortmsg);
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-type: text/html\r\n");
    Rio_writen(fd, buf, strlen(buf));
    sprintf(buf, "Content-length: %d\r\n\r\n", (int)strlen(body));
    Rio_writen(fd, buf, strlen(buf));
    Rio_writen(fd, body, strlen(body));
}

void *do_it(void *vargs)
{
    Pthread_detach(pthread_self());

    struct thread_args *args = (struct thread_args *)vargs;
    int fd = args->fd;
    struct sockaddr_in sock;
    memcpy(&sock, &(args->sock), sizeof(struct sockaddr_in));
    free(args);
    
    char buf[MAXLINE];
    rio_t rio;
    Rio_readinitb(&rio, fd);
    Rio_readlineb(&rio, buf, MAXLINE);
    
    char method[MAXLINE], uri[MAXLINE], version[MAXLINE];
    if (sscanf(buf, "%s %s %s", method, uri, version) < 3)
    {
        fprintf(stderr, "bad request, sscanf error");
        fprintf(stderr, "req line = %s\n", buf);
        client_error(fd, method, "400", "Bad Request", "sscanf error");
        close_fd(fd, 0);
        return NULL;
    }
    
    if (strcmp(method, "GET"))
    {
        fprintf(stderr, "Not implement: %s\n", method);
        fprintf(stderr, "req line = %s\n", buf);
        client_error(fd, method, "501", "Not Implemented", "Not Implemented");
        close_fd(fd, 0);
        return NULL;
    }

    char hostname[MAXLINE], pathname[MAXLINE];
    int port;
    if (parse_uri(uri, hostname, pathname, &port))
    {
        fprintf(stderr, "parse_uri error\n");
        client_error(fd, method, "400", "Bad Request", "parse_uri error");
        close_fd(fd, 0);
        return NULL;
    }

    printf("normal\n");
    //read rest header
    char line[MAXLINE];
    sprintf(line, "%s %s %s\r\n", method, pathname, version);
    //client part
    rio_t rio_client;
    int client_fd = Open_clientfd(hostname, port);
    Rio_readinitb(&rio_client, client_fd);  
    Rio_writen(client_fd, line, strlen(line));
    printf("header from client: %s", line);
    while (Rio_readlineb(&rio, line, MAXLINE) > 2)
    {
        if (strstr(line, "Proxy-Connection"))
            strcpy(line, "Proxy-Connection: close\r\n");
        else if (strstr(line, "Connection"))
            strcpy(line, "Connection: close\r\n");

        printf("header from client: %s", line);
        
        Rio_writen(client_fd, line, strlen(line));

    }
    Rio_writen(client_fd, "\r\n", 2);

    // read content from server
    // first read header
    int len = 0;
    int found = 0;
    while (Rio_readlineb(&rio_client, buf, MAXLINE) > 2)
    {
        char *result = strstr(buf, "Content-Length");
        if (result)
        {
            found = 1;
            result += 16;
            len = atoi(result);
        }
        
        printf("header read from real server: %s", buf);
        Rio_writen(fd, buf, strlen(buf));
    }
    
    Rio_writen(fd, "\r\n", 2);
    char body[MAXLINE];
    int total_size = 0;
    //send back to browser
    if (found)
    {
        printf("len = %d\n", len);
        printf("ready to read\n");
        total_size = read_body_and_send(&rio_client, body, len, fd);
    }
    else{
        printf("not found content_length\n");
        int size;
        while ((size = Rio_readnb(&rio_client, body, MAXLINE)) > 0)
            Rio_writen(fd, body, size);
    }

    printf("ready to write log\n");
    format_log_entry(buf, &sock, uri, total_size);
    fprintf(log_file, "%s\n", buf);
    fflush(log_file);
    close_fd(client_fd, fd);    
    return NULL;
}

int read_body_and_send(rio_t *rio, char *body, int len, int fd)
{
    int total_size = 0;
    int size;
    while (len > 0)
    {
        int readn = (len > MAXLINE) ? MAXLINE : len;
        if ((size = Rio_readnb(rio, body, readn)) != readn)
        {
            fprintf(stderr, "read from server error\n");
            close_fd(rio->rio_fd, fd);
            exit(0);
        }
        total_size += size;
        Rio_writen(fd, body, size);
        len -= readn;
    }
    return total_size;
}

void close_fd(int fd1, int fd2)
{
    if (fd1 > 0)
        Close(fd1);

    if (fd2 > 0)
        Close(fd2);
}

/*
 * parse_uri - URI parser
 * 
 * Given a URI from an HTTP proxy GET request (i.e., a URL), extract
 * the host name, path name, and port.  The memory for hostname and
 * pathname must already be allocated and should be at least MAXLINE
 * bytes. Return -1 if there are any problems.
 */
int parse_uri(char *uri, char *hostname, char *pathname, int *port)
{
    char *hostbegin;
    char *hostend;
    char *pathbegin;
    int len;

    if (strncasecmp(uri, "http://", 7) != 0) {
	hostname[0] = '\0';
	return -1;
    }
       
    /* Extract the host name */
    hostbegin = uri + 7;
    printf("hostbegin = %s\n", hostbegin);
    hostend = strpbrk(hostbegin, " :/\r\n\0");
    printf("begin = %p, end = %p\n", hostbegin, hostend);
    if (hostend == 0)
    {
        fprintf(stderr, "error: hostend = 0\n");
        return -1;
    }
    len = hostend - hostbegin;
    printf("len = %d\n", len);
    strncpy(hostname, hostbegin, len);
    hostname[len] = '\0';
    
    /* Extract the port number */
    *port = 80; /* default */
    if (*hostend == ':')   
	*port = atoi(hostend + 1);
    
    /* Extract the path */
    pathbegin = strchr(hostbegin, '/');
    if (pathbegin == NULL) {
	pathname[0] = '\0';
    }
    else {
	pathbegin++;
	strcpy(pathname, pathbegin);
    }

    char tmp[MAXLINE];
    sprintf(tmp, "/%s", pathname);
    strcpy(pathname, tmp);
    printf("pathname = %s\n", pathname);
    return 0;
}

/*
 * format_log_entry - Create a formatted log entry in logstring. 
 * 
 * The inputs are the socket address of the requesting client
 * (sockaddr), the URI from the request (uri), and the size in bytes
 * of the response from the server (size).
 */
void format_log_entry(char *logstring, struct sockaddr_in *sockaddr, 
		      char *uri, int size)
{
    time_t now;
    char time_str[MAXLINE];
    unsigned long host;
    unsigned char a, b, c, d;

    /* Get a formatted time string */
    now = time(NULL);
    strftime(time_str, MAXLINE, "%a %d %b %Y %H:%M:%S %Z", localtime(&now));

    /* 
     * Convert the IP address in network byte order to dotted decimal
     * form. Note that we could have used inet_ntoa, but chose not to
     * because inet_ntoa is a Class 3 thread unsafe function that
     * returns a pointer to a static variable (Ch 13, CS:APP).
     */
    host = ntohl(sockaddr->sin_addr.s_addr);
    a = host >> 24;
    b = (host >> 16) & 0xff;
    c = (host >> 8) & 0xff;
    d = host & 0xff;


    /* Return the formatted log entry string */
    sprintf(logstring, "%s: %d.%d.%d.%d %s %d", time_str, a, b, c, d, uri, size);
}


