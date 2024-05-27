//Write a C program to reverse the string “Welcome to CDAC Pune”.

#include<stdio.h>
#include<string.h>

int main()
{
    char str[] = "Welcome to CDAC Pune";
    int i;
    char temp;
  
    int len = strlen(str);
    printf("The lenght of the string is %d\n",len);

    for ( i = 0; i < len/2; i++)
    {
        temp = str[i];
        str[i] = str [len-i-1];
        str [len-i-1] = temp;
    }
    printf("Reversed String is : \n");
    puts(str);
    return 0;
}