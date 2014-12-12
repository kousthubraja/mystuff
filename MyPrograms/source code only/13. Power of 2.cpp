#include<stdio.h>

int main()
{
    int n,flag=1;
    printf("Enter the number : ");
    scanf("%d",&n);
    while(n>1)
    {
      if(n%2!=0)
        flag=0;
      n/=2;
    }
    if(flag)
      printf("Power of two");
    else
      printf("Not Power of two");

    scanf("%f",&n);
}
