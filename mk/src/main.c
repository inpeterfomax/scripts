#include<stdio.h>
#include<stdlib.h>

#include"../heads/my_api_add.h"
#include"../heads/my_api_sub.h"
#include"../heads/my_api_mul.h"

int main(int argc,char *argv[])
{
	int a=1,b=13;

	add(a,b);
	sub(a,b);
	mul(a,b);

	printf("operations done\n");

	return 0;
}
