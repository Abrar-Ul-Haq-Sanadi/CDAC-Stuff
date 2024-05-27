#include<stdio.h>

    union PG
    {
        char name[10];
        int rating;
        float distance;
    };

int main()
{
    union PG p1,p2;                                                 // union size will be the size of biggest data  members here char name[10]-->10~12
    printf("Size of Union PG = %ld\n", sizeof(union PG));           // actual 10bytes ~but its rounded to 12(multiple of 4)
    printf("Size of PG P1 = %ld\n", sizeof(p1));                    // 12
    
    //print the address of union members

    printf("Address of p1.name is %u\n", &p1.name);                 // all the address will be same since  in uniuon all it members begin at same location
    printf("Address of p1.rating is %u\n", &p1.rating);             // union has shared memory location
    printf("Address of p1.distance is %u\n", &p1.distance);
    
    p1.rating=5;
    printf("Pg p1 rating is %d\n", p1.rating);              // 5
    p1.distance= 20.5;
    printf("Pg p1 distance is %f\n", p1.distance);          //20.5
    

    printf("Enter the name of PG p1: \n");
    fgets(p1.name, 10, stdin);                              // includes even whitespaces
    //scanf("%s", p1.name);                                 // excludes whitespaces
    printf(" the name of PG p1=%s \n", p1.name );
    //printf("Pg p1 rating is %d\n", p1.rating);

    return 0;   
}