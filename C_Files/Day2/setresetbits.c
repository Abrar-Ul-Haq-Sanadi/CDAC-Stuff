# include<stdio.h>
# include<math.h>
int main()
{
    int num,bitpos,set,reset,choice;
    num = 0x6d;
    printf("press 1 for set and 0 for reset:\n");
    scanf("%d", &choice);
    printf("Enter the bit position\n");
    scanf("%d",&bitpos);
    if (choice)
    {
        printf("Choice entered is Set\n");
        set = num | (1<< bitpos);
        printf("the Set result is  %x \n", set);
    }
    else
    {
        printf("Choice entered is Reset\n");
        reset = num & ~(1<<bitpos);
          printf("the Reset result is  %x \n", reset);

    }

   
    /*set = h | (1<< bitpos);
    reset = h & ~(1<<bitpos);
    printf("the Set result is  %x \n", set);
    printf("the Reset result is  %x \n", reset);
*/
    return 0;
}