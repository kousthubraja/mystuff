#include <cstdlib>
#include <iostream>
#include "graphics.h"
#include <math.h>

#define H 0.0001
#define PI 3.14

using namespace std;

double deriv(double x)
{
	return (sin(x+H)-sin(x))/H;
}

void plot(double x,double y)
{
  putpixel(200+30*x,200+y*30,255);
}

int main(int argc, char *argv[])
{
		initwindow(400,400,"window");
		double x,y,n,an=0,bn=0,sum;
		double w,h,cx,cy;
		w=getmaxx();
		y=getmaxy();
		cx=w/2;
		cy=y/2;

		for(x=-5;x<5;x+=0.001)
		{
//		  plot(cx+30*x,cy+sin(x)*30);
// 		  plot(cx+30*x,cy+deriv(x)*30);
 		  sum=0;
  		for(n=1;n<50;n++)
			{
//				sum+=an*cos(n*PI*x)+8/(n*n*PI*PI)*sin(n*PI/2)*sin(n*x);//2/n*cos(n*PI)*sin(n*x);
				sum+=2/2*sin(n*PI/2)/(n*PI/2)*cos(n*PI*x/2)+bn*sin(n*x);

			}
		  plot(x,sum);

		}

		system("PAUSE");
    return EXIT_SUCCESS;
}
