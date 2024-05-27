#include<stdio.h>
int main()
{
    int arr[5]= {1,2,3,4,5};
    printf("The value is %d\n", arr[0]);
    printf("The value using Pointer notation is %d\n", *arr); //the name of array represnts the address of the first element so derefernce it to get its value

    printf("The value is %d\n", arr[1]);
    printf("The value using Pointer notation is %d\n", *(arr+1));

    printf("The address is %d\n", &arr[0]);
    printf("The adress using array notation is %d\n", arr);  // the name of array represnts the address of the first element

    printf("The address is %d\n", &arr[1]);
    printf("The adress using array notation is %d\n", arr+1);

    return 0;
}