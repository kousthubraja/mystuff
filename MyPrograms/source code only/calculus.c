#include <stdio.h>
#include <stdlib.h>
#include <math.h>

#define ZERO 0.0000001

double deriv(double (*func)(double),double x)
{
	double val;
	val=func(x+ZERO)-func(x);
	val/=ZERO;
	return val;
}

double x(double x)
{
	return x;
}

int main()
{

	printf("%f\n",deriv(sin,3.14));
	system("pause");
	return 0;
}
