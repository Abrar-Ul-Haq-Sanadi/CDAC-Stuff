//Write a function to swap two variables using Pass by reference

#include<stdio.h>
int swap(int* , int*);

int main()
{
    int a ;     
    int b;
    printf("Enter value of a: ");
    scanf("%d", &a);
    printf("Enter value of b: ");
    scanf("%d", &b);

    printf("Befor swapping the a = %d and b= %d\n",a, b);
    swap(&a, &b);
    printf("After swapping the a = %d and b= %d\n", a,b);
    return 0;

}


int swap(int *x, int *y)                    
{
int temp = *x;                   // int *x = &a;
 *x = *y;                        // int *y = &b;  
 *y = temp; 
return 0;
}