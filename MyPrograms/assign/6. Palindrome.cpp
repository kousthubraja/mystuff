#include<stdio.h>

int checkpal(int);

int main()
{
    int n,i;
    printf("Enter the number : ");
    scanf("%d",&n);
    if(checkpal(n))
      printf("Paliendrome");
    else
      printf("Not Paliendrome");

    scanf("%d",&i);
}
    
int checkpal(int n)
{
    int num=n,r=0,s;
    while(n>0)
    {
        s=n%10;
        r=r*10+s;
        n/=10;
    }
    if(r==num)
        return 1;
    else
        return 0;
}           
    
