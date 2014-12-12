#include<stdio.h>
#include<math.h>

#define INF 1000000
#define ZERO 0.000001
#define N 4

double f(double x)
{
//	return x;
	return sin(x)/x;
}

	
int main()
{
	double h,n,sum=0,i;
	double a=ZERO,b=INF;
	n=INF;
	h=(b-a)/n;
	for(i=a;i<b;i+=h)
	{
		sum+=h*f(i);
	}
	printf("%f %f",sum,3.14/2);
	
	return 0;
}
