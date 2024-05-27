//Write a C program to Find the Frequency of a Character in a string


#include<stdio.h>
#include<string.h>
int main()
{
    //char str[10]="Abrarulhaq";        // initialzed string
    char str[100];                      // or just declare the string to take input from user
    char ch;
    int count=0;
    int i;

    printf("Enter the String: \n");
    fgets(str,100,stdin);               //user inputed string, fgets overcomes white spaces and takes care of max size inputed of inputed string

    int len = strlen(str);               // lenght of the string
    printf("The lengh of the string is %d\n",len);
   // printf("The lengh of the string is %d\n",sizeof(str));
   
    printf("Enter the character to get its frequency: \n");
    scanf("%c", &ch);
   // gets(str);
    for ( i = 0; i < len ; i++)
    {
        if (ch==str[i]) 
        {
            count++;
        }
    }  
        printf(" the character %c is repteated %d times: \n", ch,count);
        return 0;
}