#include<stdio.h>

int main()
{
    int i,n,sum;
    for(n=1;n<=1000;n++)
    {
       sum=0;
       for(i=1;i<=n/2;i++)
       {
           if(n%i==0)
           {
                     sum+=i;
           }
       }
       if(sum==n)
          printf("%d\t",n);
    }
    scanf("%d",&n);
}
    
