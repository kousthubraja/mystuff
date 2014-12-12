#include<stdio.h>

int checkprime(int);

int main()
{
    int n1,n2,i;
    printf("Enter two numbers : ");
    scanf("%d %d",&n1,&n2);
    for(i=n1;i<=n2;i++)
    {
       if(checkprime(i))
          printf("%d\t",i);
    }
    scanf("%d",&i);
}
    
int checkprime(int n)
{
    int i;
    for(i=2;i<n/2;i++)
        if(n%i==0)
           return 0;

    return 1;
}           
    
