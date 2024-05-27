#include<stdio.h>
#include<stdlib.h>

int main()
{   
    int i, n;
    int *arr;

    printf("Enter the size of array : ");
    scanf("%d", &n);
    
    arr = (int*) malloc (n*sizeof(int));        // defining the malloc n=5 --> 5*4 = 20 bytes are allocated on the memory in heap
    
  //  arr = (int*) calloc (n,sizeof(int));        // defining the calloc n=5 --> 5 , 4 = 20 bytes are allocated on the memory in heap

   // arr = (int*) realloc (arr, (n+1)* ,sizeof(int));        // defining the malloc n=5 --> 5*4 = 20 bytes are allocated on the memory in heap

    if(arr != NULL)                             // if there is spaace only memory is allocated on the memory
    {
        printf("Memory allocation successfull\n");
    }
    else
    {
        exit(0);
    }

    printf("Enter the array elemnts\n");
    for ( i = 0; i < n; i++)        
    {
     //   scanf("%d", (arr+i));
        scanf("%d", &arr[i]);

    }
    printf("The array elemnts are\n");
    for ( i = 0; i < n; i++)
    {
      //  printf("%d\t", *(arr+i));
        printf("%d\t", arr[i]);

    }
    
    
    return 0;
}