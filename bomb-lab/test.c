#include <stdio.h>

int g = 2;

int main()
{
    int* a = &g;
    printf("a = %x\n", a);
    return 0;
}
