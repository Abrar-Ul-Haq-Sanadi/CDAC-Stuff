#include<stdio.h>
int main()
{
    unsigned int x = 0x11223344;
    char *c ;
    c = &x;
    printf("the value of *c is %x", *c);
    return 0;
}
 