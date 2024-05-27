
// Write a program to find how many times a function is being called (use local static variable as count)
//local auto variable in comparison to static

#include<stdio.h>
int fun();

int main()
{
	
    static int count ;
    printf("%d ", fun());
	printf("%d ", fun());

	return 0;
}
 
// Function
int fun()
{
	static int count = 0;           //static retains its value even after function call as it saved in data segment
	count++;                        //but just a variable (int count) losses its value after  function call has been executed
                                    //printf("the function call has been made %d times\n", count);
	return count;
}
