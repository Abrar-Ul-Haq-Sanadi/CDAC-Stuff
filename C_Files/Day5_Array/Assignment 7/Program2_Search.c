//2. Find a particular element in the array. Take the input for the element to search from the
//   user. Also display the no if times the element occurs in the array.

#include<stdio.h>
int main()
{
    int i,sum=0;
    int num;
    int count=0;
    int arr[5];
    printf("enter the element of array: \n");
    for ( i = 0; i < 5; i++)                             // taking input of array by using for loop
    {
      scanf("\n%d", &arr[i]); 
    }

    printf("Enter the element to search: \n");
    scanf("%d",&num);

for ( i = 0; i < 5; i++)
{
    if(arr[i] == num)
    {
    printf("%d found at location %u\n", num, (arr+i));
    count ++;
    } 
}
    printf("The elemnt has occured %d times\n",count);


return 0;
}