/*
 * author : zjs
 * date : 2014.02.15
 */

#include "cachelab.h"
#include <time.h>
#include <getopt.h>
#include <stdlib.h>
#include <unistd.h>
#include <stdio.h>
#include <ctype.h>
#define MAXLINE 200

void get_opt();
void do_init();
void do_deinit();
void do_L(void *addr, int size);
void do_M(void *addr, int size);
void do_S(void *addr, int size);
int  getset(void *addr);
long gettag(void *addr);

// data structure of one specific set entry
// the size of array is the number of lines from command line, i.e. -E 1
struct oneSet
{
    int *v;
    clock_t *last_access_time;
    long *tag;    
};

int hits, misses, evicts;
struct oneSet *setptr;          // the global pointer to the cache, setptr[n] stands for the nth set entry
int s = 0, E = 0, b = 0;
char *file = NULL;
long clocktime = 0;             // used to record the access time

int main(int argc, char **argv)
{
    get_opt(argc, argv);
    do_init();
   
    FILE *fp = fopen(file, "r");
    if (fp == NULL)
    {
        fprintf(stderr, "open file error\n");
        exit(0);
    } 

    char op[MAXLINE];
    void *addr;
    int size;
    char buf[MAXLINE];
    while (fgets(buf, MAXLINE, fp) != NULL)
    {
        //printf("\nline read: %s\n", buf);
        sscanf(buf, "%s %p,%d", op, &addr, &size);
        //printf("op = %s, addr = %p, size = %d\n", op, addr, size);
        if (*op == 'L')
        {
            do_L(addr, size);
        }
        else if (*op == 'M')
        {
            do_M(addr, size);
        }
        else if (*op == 'S')
        {
            do_S(addr, size);
        }
    }

    do_deinit();
    printSummary(hits, misses, evicts);
    return 0;
}

// get the program parameter using getopt library
void get_opt(int argc, char **argv)
{
    int c;

    while ((c = getopt(argc, argv, "s:E:b:t:")) != -1)
    {
        switch (c)
        {
            case 's':
                s = atoi(optarg);
                break;
            case 'E':
                E = atoi(optarg);
                break;
            case 'b':
                b = atoi(optarg);
                break;
            case 't':
                file = optarg;
                break;
            default:
                printf("illegal opt\n");
                exit(0);
        }
    }
}

// using malloc to initialize data structure
void do_init()
{
    int S = (1 << s);
    if ( S <= 0)
    {
        fprintf(stderr, "S is nonpositive\n");
        exit(0);
    }
    setptr = (struct oneSet*)malloc(sizeof(struct oneSet) * S);
    
    for (int ind = 0; ind < S; ++ind)
    {
        setptr[ind].v = (int *)malloc(sizeof(int) * E);
        setptr[ind].last_access_time = (clock_t *)malloc(sizeof(clock_t) * E);
        setptr[ind].tag = (long *)malloc(sizeof(long) * E);

        for(int Eind = 0 ; Eind < E; Eind++)
        {
            setptr[ind].v[Eind] = 0;
            setptr[ind].last_access_time[Eind] = 0;
            setptr[ind].tag[Eind] = 0;
        }
    }
}

// explicitly return the space back to heap
void do_deinit()
{
    int S = (1 << s);
    
    setptr = (struct oneSet*)malloc(sizeof(struct oneSet) * S);
    for (int ind = 0; ind < S; ++ind)
    {
        free(setptr[ind].v);
        free(setptr[ind].last_access_time);
        free(setptr[ind].tag);
    }

    free(setptr);
}

// do a LOAD operation
void do_L(void *addr, int size)
{
    int setnum = getset(addr);
    printf("setnum = %d, ", setnum);
    struct oneSet *this_set = &setptr[setnum];

    int index;
    int full = 1;
    int empty_item = 0;         // if not full, keep track of the empty item
    int last_item = 0;          // if full, keep track of the evict item
    int last_time = this_set->last_access_time[0];  

    for (index = 0; index < E; index++)
    {   
        // find, update the access time
        if (this_set->v[index] == 1 && gettag(addr) == this_set->tag[index])
        {
            this_set->last_access_time[index] = ++clocktime;
            break;
        }
        // not valid, then this entry is considered empty which means cache is not full
        else if (this_set->v[index] == 0)
        {
            full = 0;
            empty_item = index;
        }    
        // valid but tag not equal
        else
        { 
            // keep track of the LRU item, ready for eviction
            if (this_set->last_access_time[index] < last_time)
            {
                last_item = index;
                last_time = this_set->last_access_time[index];
            }
        }
    }

    if (index == E) // miss
    {
        misses++;
        if (full)   //evict
        {
            this_set->tag[last_item] = gettag(addr);
            this_set->last_access_time[last_item] = ++clocktime;
            evicts++;
        }
        else
        {
            this_set->v[empty_item] = 1;
            this_set->tag[empty_item] = gettag(addr);
            this_set->last_access_time[empty_item] = ++clocktime;
        }
    }
    else    // hit
    {
        hits++;
    }    

}

//the difference between S and M is that S only load when miss, while M always load first then store
void do_S(void *addr, int size)
{
    int setnum = getset(addr);
    printf("setnum = %d, ", setnum);
    struct oneSet *this_set = &setptr[setnum];

    int index;
    for (index = 0; index < E; ++index)
    {
        if (this_set->v[index] == 1 && gettag(addr) == this_set->tag[index])    //find
        {
            this_set->last_access_time[index] = ++clocktime;
            break;
        }
    } 

    if (index == E) // store miss
    {
        do_L(addr, size);   // if miss, then load
    }
    else            // store hit
    {
        hits++;
    }
}

// do a MODIFY operation, which do S afer L
void do_M(void *addr, int size)
{
    int setnum = getset(addr);
    printf("setnum = %d, ", setnum);

    do_L(addr, size);
    do_S(addr, size);
}

// get the set number from the address
int getset(void *addr)
{
    return (int)( ((long)addr >> b) & ((1 << s) - 1) );
}

// get the tag number from the address
long gettag(void *addr)
{
    return (long)((long)addr >> (s + b));
}
