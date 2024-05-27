#include<stdio.h>
int main()
{
        
/*
int x=20;

const int *p= &x;                   //p is pointer which is pointing to integer which is constant 
printf("P++ is %d\n", p++);     // we can change the value of pointer 
//printf("%u", *p=*p+1);        // but we can not change the value of constant variable x 
*/



/*
int x=20;

int const *p= &x;                                                   //p is pointer which is pointing to integer which is constant 
printf("P++ is %d\n", p++);                                     // we can change the value of pointer 
//printf("the Incremented value of x is %u\n", *p = *p+1);         // but we can not change the value of constant variable x  as *p is read only
 */


/*
int x=20;
int *const p =&x;                               // we are making pointer to be constant *const p 
printf(" P++ is %d", p++);                     // therefore we cannot increment the value of pointer  (Read only for pointer)
//printf(" the Incremented value of x by appllying *p=*p+1 is  is %d", *p=*p+1);      // But we can inrement the value of variable x 


*/



/*

int x=20;
const int *const p = &x;                    // we are making both integer as well as pointer as constant   hence both are read only
//printf(" P++ is %d", p++);                  // therefor pointer cannot be incremented (changes)
printf(" the Incremented value of x by appllying *p=*p+1 is  is %d", *p=*p+1);      // as well as integer variable x cannot be incremented(changed)


*/
return 0;



}