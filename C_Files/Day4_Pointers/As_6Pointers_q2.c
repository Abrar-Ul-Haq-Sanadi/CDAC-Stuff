//Pointer arithmetic( try out for various data types )p=&x; p1=p+5; p2=p-5; p1++; p2--; p1-p2


#include<stdio.h>
int main()
{
    int x=20;
 //   int *p = NULL;
    int *p1 = NULL;
    int *p2 = NULL;

    int *p = &x;

    printf("the address of x is %u\n", &x);
    printf("the address of x is %u\n", p);

    p1= p+5;
    printf("P1= %u\n", p1);

    p2= p-5;
    printf("P2= %u\n", p2);

    printf("P1= %u\n", p1++);
    printf("P1= %u\n", p1);
   printf("P1= %u\n", ++p1);
    
    printf("P2= %u\n", p2--);
    printf("P2= %u\n", p2);
    printf("P2= %u\n", --p2);

    printf("P1-P2 = %u\n", p1-p2);
    printf("P1+P2 = %u\n", p1+p2);      // we cannot add two pointers since there are chances that the new adress after addition may not exist in the memory

    printf("*p1= %u\n", *p1);
    printf("*p2= %u\n", *p2);

    


} 