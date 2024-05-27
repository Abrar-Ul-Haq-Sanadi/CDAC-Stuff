// Implement a calculator program with the help of pointers, note that no function should return any value, use pointers to implement the same.


#include<stdio.h>
int add(int *a, int *b, int *result);
int diff(int *a, int *b, int *result);
int mul(int *a, int *b, int *result);
float div(int *a, int *b, float *res);


int main()
{
    int a ,b,result;
    float res;
    int choice;
    printf("Enter a: ");
    scanf("%d", &a);
    printf("Enter b: ");
    scanf("%d", &b);

    printf("Enter Choice: ");
    scanf("%d", &choice);

switch(choice)
{
    case 1: 
    add(&a,&b, &result);
    printf("the Addition of %d and %d is %d\n", a,b,result);
    break;
    
    case 2: 
    diff (&a,&b, &result);
    printf("the Substraction of %d and %d is %d\n", a,b,result);
    break;

    case 3: 
    mul(&a,&b, &result);
    printf("the Multiplication of %d and %d is %d\n", a,b,result);
    break;

    case 4: 
    div(&a,&b, &res);
    printf("the Division of %d and %d is %f\n", a,b,res);
    break;

    default :
    printf("Invalid Input");
    break;
}
    return 0 ;
}


int add(int *x, int *y, int *result)
{
     *result = *x + *y;
     return *result;
}

int diff (int *x, int *y, int *result)
{
     *result = *x - *y;
     return *result;
}

int mul (int *x, int *y, int *result)
{
     *result = *x * *y;
     return *result;
}


float div (int *x, int *y, float *res)
{
     *res = (*x) / *y;
     return *res;
}

