#include<stdio.h>

int nCr(int,int);
int nPr(int,int);

int main()
{
    int n,r;
    printf("Enter value of n and r : ");
    scanf("%d %d",&n,&r);
    printf("%dP%d = %d\n",n,r,nPr(n,r));
    printf("%dC%d = %d\n",n,r,nCr(n,r));
    scanf("%f",&n);
}

int fact(int n)
{
    if(n==1 || n==0)
      return 1;
    else
      return n*fact(n-1);
}

int nCr(int n, int r)
{
    return fact(n)/(fact(r)*fact(n-r));
}

int nPr(int n, int r)
{
    return fact(n)/fact(n-r);
}
