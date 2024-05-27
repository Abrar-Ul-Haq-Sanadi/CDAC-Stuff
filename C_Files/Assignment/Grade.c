#include<stdio.h>
int main()
{
    int eng=66, maths=77, geo=79, phy=82, chem= 88,total_marks;
    float perc;
    total_marks = eng+ maths+ geo + phy + chem ;
    perc = (total_marks*100) / 500.0;
    printf("marks scored is %d\n", total_marks);
    printf("perc scored is %f\n", perc);

    if(perc>=90)
    printf("Grade is A");

    else if(perc>=70 && perc<90)
    printf("Grade is B");

    else if(perc>=50 && perc<70)
    printf("Grade is C");
      
     else if(perc>=35 && perc<50)
    printf("Grade is D");

    else
    printf("FAIL!!!!!");
     
    
}