#include<stdio.h>

int main()
{
    int n,i=1,sum=0,var=1;
    printf("Enter value of n : ");
    scanf("%d",&n);
    while(i<=n)
    {
      sum+=var;
      var+=2;
      i++;
    }
    printf("Sum is %d",sum);
    scanf("%d",&n);
}
    
