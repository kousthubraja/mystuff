//Written by Kousthub Raja
//1/11/10 12:00PM
//Answer for Edex problem in edition 39.
#include<cstdio>
int main()
{
int l=3,b=3,h=3,v,a;
while(1)
{
	while(1)
	{
		while(1)
		{
			v=l*b*h;
			a=2*(l*b+l*h+b*h);
			if(v>=100 && v<=999)
			{
				if(a>=1000&&a<=9999)
				{
					printf("v = %d\n",v);
					printf("a = %d\n",a);
					printf("l b h = %d %d %d\n",l,b,h);
					return 0;
				}
			}
			h+=2;
		}
		b+=2;
	}
	l+=2;
}
}
