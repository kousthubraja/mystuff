#include<stdio.h>
#include<math.h>
int main()
{
    int n,i=1,sum=0,X,sign=1,term=1;
    printf("Enter value of X and n : ");
    scanf("%d %d",&X,&n);
    for(i=1;term<=n;i+=2)
    {
      sum+=(pow(X,i)/fact(i))*sign;
      sign*=-1;
      term++;
    }  
    printf("Sum is %d",sum);
    scanf("%d",&n);
}
    
int fact(int n)
{
    if(n==1)
      return 1;
    else
      return n*fact(n-1);
}
