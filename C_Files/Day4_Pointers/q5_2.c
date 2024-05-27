//Try register storage class for local, global variables. Can we get address of register variable

#include<stdio.h>
int x = 20;
//register int y =20;                             // register can only be used in local( within the block) it cannot be used global scope(outside main )
                                                  // register can only be used in local we cannot have a global variable as a register
                                                // bcz global variables are on Data Segment but register are in cpu
int main()
{
    register int a=10;                            // we can have a local variable as a register 
    printf("the value of x is %d\n", x);
    printf("the address of x is %p\n", &x);

    //printf("the value of y is %d\n", x);          // register can only be used in local we cannot have a global variable as a register
    //printf("the address of y is %p\n", &x);       // we cannot have the address for the cpu register

    printf("the value of a is %d\n", a);             // prints the values of register variable
  //  printf("the address of a is %p\n", &a);        //  accessing address of register is invalid
    return 0;
}
    