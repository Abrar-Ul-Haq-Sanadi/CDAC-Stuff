//5. Reverse all the array elements (do not reverse print!!!!!!!!!)

#include<stdio.h>
int main()
{
    int i;
    int arr[5];
    int temp;
    printf("enter the element of array: \n");
    for ( i = 0; i < 5; i++)                             // taking input of array by using for loop
    {
      scanf("\n%d", &arr[i]); 
    }
    for ( i = 0; i < 5/2; i++)
    {
        temp = arr[i];
        arr[i] = arr[4-i];
        arr[4-i] = temp;
    }
    for ( i = 0; i < 5; i++)
    {
        printf("The reversed array is %d\n", arr[i]);

    }
    
    
return 0;
}