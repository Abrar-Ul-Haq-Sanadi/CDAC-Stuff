# include<stdio.h>
int main(){
int a, b, c;
printf("Enter two numbers a and b\n");
scanf("%d,%d", &a, &b);
c=a;
a=b;
b=c;
printf("a and b after swapping are %d, %d\n" ,a, b);
    return 0;
}