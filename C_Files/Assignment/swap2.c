# include<stdio.h>
int main(){
int a, b;
printf("Enter two numbers a and b\n");
scanf("%d,%d", &a, &b);
a=a+b;
b=a-b;
a=a-b;
printf("a and b after swapping are %d, %d\n" ,a, b);
    return 0;
}