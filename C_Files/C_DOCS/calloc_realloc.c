// dymanic memory allocation for an array
#include<stdio.h>
#include<stdlib.h>

int main(){

    int n;  // no of array elemnst
    int *arr;
    printf("Enter no of array elemnst: ");
    scanf("%d", &n);

    // arr = (int *) malloc(n * sizeof(int));
    arr = (int *) calloc(n,sizeof(int));
    // n = 5, malloc allocates 20 bytes on heap
    // memory check
    if(arr != NULL){
        printf("memory allocation successful\n");
    }
    else{
        return -1;
    }
    printf("Values in heap memory via calloc\n");
    for(int i=0;i<n;i++){
        printf("%d\n",*(arr+i));
    }
    // using realloc
    int new_n;
    printf("Enter the new size to be allocated: ");
    scanf("%d",&new_n);

    // allocating additional bytes with new_n
    arr = (int *) realloc(arr , (n+new_n)*sizeof(int));
    // memory check
    if(arr != NULL){
        printf("memory allocation successful\n");
    }
    else{
        return -1;
    }

     for(int i=0;i<(n+new_n);i++){
        printf("%d\n",*(arr+i));
    }
    free(arr);
}