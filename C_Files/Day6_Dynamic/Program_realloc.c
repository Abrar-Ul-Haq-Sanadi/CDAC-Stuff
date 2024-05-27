#include<stdio.h>
#include<stdlib.h>

int main()
{
    int n,i;
    int *arr;

    printf("Enter the size of array : ");
    scanf("%d", &n);


    arr = (int*)calloc(n,sizeof(int));


    if(arr != NULL)
        {
        printf("Memory allocation successfull\n");
        }
    else
    {
        exit(0);
    }


    // printf("Enter the array elemnts\n");
    // for ( i = 0; i < n; i++)        
    // {
    //  //   scanf("%d", (arr+i));
    //     scanf("%d", &arr[i]);
    // }

    for (int i = 0; i < n; i++)
    {
        printf("%d\t",*(arr+i));
    }
    
    int n1;     //n1 is new size of array
    printf("\nEnter the New size of array : ");
    scanf("%d", &n1);

    arr = (int*) realloc (arr, n1*sizeof(int));
    for ( i = 0; i < n1; i++)
    {
        printf("%d\t", *(arr+i));
    }
    


return 0;

}