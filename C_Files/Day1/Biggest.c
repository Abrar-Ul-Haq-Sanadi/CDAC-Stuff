# include <stdio.h>
int main(){
    int a, b, c, Biggest;
    scanf("%d, %d, %d", &a, &b, &c);
    Biggest=a;
    if (Biggest<b)
    Biggest=b;
    if (Biggest<c)
    Biggest=c;
    printf("the biggest number is %d",Biggest);
    
    return 0;}

