//Write code for searching greatest number in the array


#include<stdio.h>
int main()
{
    int i;
    int arr[5];
    int biggest;
    printf("enter the element of array: \n");
    for ( i = 0; i < 5; i++)                             // taking input of array by using for loop
    {
      scanf("\n%d", &arr[i]); 
    }
    biggest == arr[0];
    for ( i = 0; i < 5; i++)
    {
        if (biggest < arr[i] )
        {
           biggest = arr[i];
        }
    }
    printf("The Greatest elemnt in the array is %d\n", biggest);

return 0;

}