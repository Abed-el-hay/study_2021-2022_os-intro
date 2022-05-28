#include <stdio.h>
#include <stdlib.h>
int main()
{
	int n;
	printf("Enter number: \n");
	scanf("%d",&n);

	if(n>0){printf("Larger then 0 \n"); }
	else if(n<0){printf("Less then 0 \n"); }
	else {printf("It is 0\n");}
	exit(n);
	return 0;
}
