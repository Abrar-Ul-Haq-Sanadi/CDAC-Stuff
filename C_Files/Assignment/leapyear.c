# include<stdio.h>
int main(){
int a;
printf("Enter a year\n");
scanf("%d", &a);
if (   (a%4==0) && (a%100!=0) ||  (a%400==0)  )
{
   printf("year is leap year\n");
}
else
printf("year is not leap year\n");

    return 0;
}