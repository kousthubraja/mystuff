#include<stdio.h>

int fact(int);

int main()
{
    int n;
    printf("Enter the number : ");
    scanf("%d",&n);
    printf("Factorial is %d",fact(n));
    scanf("%f",&n);
}

int fact(int n)
{
    if(n==1)
      return 1;
    else
      return n*fact(n-1);
}
