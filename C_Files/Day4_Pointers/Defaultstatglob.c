// default value of static local globa; variable
#include <stdio.h>
int glob_var;
int main()
{
	static int x;
	int y;
	printf("static int x =%d \nlocal int y%d\nglob_var %d", x, y,glob_var);
    return 0;
}
