/*P9.2 Dereferencing pointer variables*/


	float b=4.5;
	int *p1=&a;
	float *p2=&b;
	printf("Value of p1 = Address of a = %p\n",p1); // 2000
	printf("Value of p2 = Address of b = %p\n",p2); // 6000
	
	printf("Address of p1 = %p\n",&p1); // 3000
	printf("Address of p2 = %p\n",&p2); // 8000
						//87 87  87
	printf("Value of a = %d  %d  %d\n",a,*p1,*(&a));  //
	
	printf("Value of b = %.1f  %.1f  %.1f\n",b,*p2,*(&b));
	return 0;
}