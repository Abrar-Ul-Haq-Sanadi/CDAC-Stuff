//Find the no of odd and even elements in the array.


#include<stdio.h>
int main()
{
    int i;
    int arr[5];
    int even = 0, odd=0;
    printf("enter the element of array: \n");
    for ( i = 0; i < 5; i++)                             // taking input of array by using for loop
    {
      scanf("\n%d", &arr[i]); 
    }
    for ( i = 0; i < 5; i++)
    {
        if(arr[i]%2==0)
            even++ ;

        else
            odd++ ;
    }
        printf("Thenumber of Even elemnts are %d\n", even);
        printf("Thenumber of odd elemnts are %d\n", odd);
return 0;
}