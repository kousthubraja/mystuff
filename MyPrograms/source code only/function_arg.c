#include<stdio.h>

void add(int a,int b)
{
	printf("%d",a+b);
}

void test(int (*fun)(int,int))
{
	fun(5,6);
}

int main()
{
	test(add);

	system("pause");
	return 0;
}
