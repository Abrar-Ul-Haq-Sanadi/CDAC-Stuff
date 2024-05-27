#include <stdio.h>
int main()
{
int num1,num2;
float result;
char ch; 
int option;                           //to store operator choice

printf("Welcome to Simple Calculator\n");
printf("Press \n1.continue \n2.Exit");
scanf("%d",&option);

while (option!=0 && option ==1)
{
    printf("\nEnter first number: ");
    scanf("%d",&num1);
    printf("Enter second number: ");
    scanf("%d",&num2);

    printf("Choose operation to perform (+,-,*,/): ");
    scanf(" %c",&ch);
    result=0;

        switch(ch)    
        {
            case '+':
                result=num1+num2;
                break;
            case '-':
                result=num1-num2;
                break;
            case '*':
                result=num1*num2;
                break;
            case '/':
                if(num2!=0)
                {
                    result=(float)num1/(float)num2;
                    break;
                }
                else
                {
                    printf("Numerator cant be Zero, please enter non zero value\n\n");
                    goto skip;
                }
            default:
                printf("Invalid Choice.\n\n");
                goto skip;
        }
        printf("Result: %d %c %d = %0.2f\n",num1,ch,num2,result);
    
          printf("!!!Results done!!!\n\n");
    skip: printf("Enter your choice \n1.continue \n2.Exit ");
    scanf("%d", &option);
    if(option == 2)
    exit(0);        
}
return 0;
}