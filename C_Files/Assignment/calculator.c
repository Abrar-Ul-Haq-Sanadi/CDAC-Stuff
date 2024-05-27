#include<stdio.h>
int main()
{
    int choice;
    int a,b;
    printf("enter the choice from 1 to 4 :\n");
    scanf("%d", &choice);

    switch (choice)
    {
    case  1:
       int Add;
       printf("Welcome to the addition!! \n");
       printf("enter two number a and b \n");
       scanf("%d" "%d", &a, &b);
       Add = a+b ;
                    printf("Addition of two numbers a= %d and b=%d is Add =%d\n", a,b, Add);
        break;
    
    case 2:
     int Sub;
        printf("Welcome to the Subtstraction!! \n");
        printf("enter two number a and b \n");
        scanf("%d" "%d", &a, &b);
        Sub = a-b ;
        
                    printf("Sunstraction of two numbers a= %d and b=%d is Sub =%d\n", a,b, Sub);
        break;

    case 3:
        int Mul;
        printf("Welcome to the Multiplication!! \n");
        printf("enter two number a and b \n");
        scanf("%d" "%d", &a, &b);
        Mul = a*b ;
        
                     printf("Multiplication of two numbers a= %d and b=%d is Mul =%d\n", a,b, Mul);
        break;


    case 4:
        float Div;
        printf("Welcome to the Division!! \n");
        printf("enter two number a and b \n");
        scanf("%d" "%d", &a, &b);
      if(b==0)
        {
                    printf("Not a valid input as output will be infinite if denominator is 0 ");
        
        }
        else 
            {
                Div = (float)a/b ;
                    printf("Division of two numbers a= %d and b=%d is Div =%0.2f\n", a,b, Div);
            }
        break;

    default:
        printf("EXIT WRONG CHOICE!!!!!\n");
        break;
    }

    return 0;
}
