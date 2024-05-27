#include<stdio.h>

int add(int, int);      // function declaration
int sub(int,int);
int mul(int, int);
int div(int, int);



int main()
{
    int choice;
    int a= 10, b=20,sum;
    printf("enter your choice");
    scanf("%d", &choice);

    switch (choice)
    {
    case 1:
        printf("the addition of two numbers is %d\n",add(a,b));
        break;
    
     case 2:
        printf("the Substraction of two numbers is %d\n",sub(a,b));
        break;

    case 3:
        printf("the Multiplication of two numbers is %d\n",mul(a,b));
        break;

    case 4:
        printf("the Division of two numbers is %d\n",div(a,b));
        break;  


    default:
        printf("EXIT WRONG CHOICE!!!!!\n");
        break;
    }

}



    int add(int p, int q)
    {
        int add ;
        add= p+q;
        return add;
        printf("In Addition function\n");
       // return p+q;
    }



    int sub(int p, int q)
    {
        int sub ;
        sub= p-q;
        return sub;
        printf("In substraction function\n");
       // return p+q;
    }

    int mul(int p, int q)
    {
        int mul ;
        mul= p*q;
        return mul;
        printf("In Mul function\n");
       // return p+q;
    }

int div(int p, int q)
    {
        int div ;
        div= p/q;
        return div;
        printf("In div function\n");
       // return p+q;
    } 