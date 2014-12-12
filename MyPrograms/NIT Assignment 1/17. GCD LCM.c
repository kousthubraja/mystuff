#include<stdio.h>
#include<math.h>

int gcd(int,int);
int lcm(int,int);


int main()
{
    int a,b;
    printf("Enter two numbers : ");
    scanf("%d %d",&a,&b);
    printf("%d",gcd(a,b));
    printf("\n");
    return 0;
}

int gcd(int a,int b)
{
    int i;
	i=(a>b)?a:b;
	while(i)
	{
		if(b%i==0 && a%i==0)
			return i;
		i--;
	}
}

int lcm(int a,int b)
{
	int n1=a,n2=b;
	while(n1!=n2)
	{
		if(n1>n2)
			n1-=n2;
		else
			n2-=n1;
	}
	
	return a*b/n1;

}