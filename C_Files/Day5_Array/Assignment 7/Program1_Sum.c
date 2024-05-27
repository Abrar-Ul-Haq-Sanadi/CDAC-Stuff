#include<stdio.h>
int main()
{
    int i,sum=0;
    int arr[5];
    printf("enter the element of array: \n");
    for ( i = 0; i < 5; i++)                             // taking input of array by using for loop
    {
      scanf("\n%d", &arr[i]); 
    }

    
    for ( i = 0; i < 5; i++)                           //Printing the elemnts and address of array
    {
        printf("Address of a[%d] is %u and Element is %d\n",i,&arr[i], arr[i]);
        // &arr[0] = 6000 , arr[0] = 1          ; array notation
        // &arr[0] = 6004 , arr[0] = 2
       
        
        // the name of array will represent the address of the first element or it points to the first elemnt 
        printf("Address of a[%d] is %u and Element is %d\n",i, (arr+i), *(arr+i));
        //(arr+0) = 6000  *(arr+0)= 1            ; pointer notation of an array
        //(arr+1) = 6004  *(arr+0)= 2  
    }

    for ( i = 0; i < 5; i++)                            // prinitng the sum of elemnts in array
    {  
        sum = sum + arr[i];
    }
    
    printf("\nSum of Elemnts of array is %d \n",sum) ;

return 0;
}

