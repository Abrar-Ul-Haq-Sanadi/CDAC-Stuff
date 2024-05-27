#include<stdio.h>
 

    struct student
    {
        char name[9];
        int roll;
        int marks;
    };

int main()
{
    struct student s1 ={"Abrar", 5, 89};
    struct student s2;


    //address of each structure member
    printf("Address of &s1.name is %u\n", &s1.name);
    printf("Address of &s1.roll is %u\n", &s1.roll);
    printf("Address of &s1.marks is %u\n", &s1.marks);

     printf("Address of &s2.name is %u\n", &s2.name);
     printf("Address of &s2.roll is %u\n", &s2.roll);
     printf("Address of &s2.marks is %u\n", &s2.marks);

    //size of an structure variable
    printf("Sizeof(struct student)= %ld\n", sizeof(struct student));
   printf("Sizeof(s1) = %ld\n", sizeof(s1));

  //inputs for the structure variables

   // strcpy(s2.name, "Jeaavn");
    //printf("S2 name: %s\n", s2.name);

    printf("Enter the name of s2: \n");
    scanf("%s", s2.name);

    printf("Enter roll no of s2: \n");
    scanf("%d",&s2.roll);
    printf("S2 Roll: %d\n", s2.roll);

    printf("Enter Marks  of s2: \n");
    scanf("%d",&s2.marks);
    printf("S2 marks: %d\n", s2.marks);

///printing the ouput of the variables



    return 0;
}