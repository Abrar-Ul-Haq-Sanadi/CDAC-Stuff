//Write a C program to capture Alphabets from a given string of mixed alphabets, numeric 
// and special characters. Store the captured data in another array.

#include<stdio.h>
#include<string.h>
int main()
{
    int j=0;
    char str1[50] = "23w%#e$$lco--,me" ;
    char str2[50];
    int len = strlen(str1);
    printf("The lenght of string is %d\n", len);
    char ch;

    for ( int i = 0; i < len; i++)
    {
            if((str1[i] >= 'a' && str1[i] <= 'z') || (str1[i] >= 'A' && str1[i] <= 'Z') )
            { 
                        str2[j] = str1[i];
                        j++;
            }
         
    }
    puts(str2);
    //printf("The Extracted string is %s", str2);
    

    return 0;

}
