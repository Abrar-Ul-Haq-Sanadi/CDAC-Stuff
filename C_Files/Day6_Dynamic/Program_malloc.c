#include<stdio.h>
#include<stdlib.h>

int main()
{
    int *ptr;
   // ptr = (int*) malloc(sizeof(int));

    if(ptr != NULL)
        {
        printf("Memory allocation successfull\n");
        }
    else
    {
        exit(0);
    }
    //Address of the heap
    printf("Address from the heap memory= %u \n",ptr);

    //input
    printf("Enter the Integer value : ");
    scanf("%d", ptr);

    //display
    printf("value= %d\n", *ptr);

    //free the heap memory
    free(ptr);

    }