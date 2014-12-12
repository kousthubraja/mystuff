#include<stdio.h>

int main()
{
    int n,i,r=0,s;
    printf("Enter the number : ");
    scanf("%d",&n);

    
    while(n>0)
    {
        s=n%10;
        r+=s;
        n/=10;
    }
	
	scanf("%d",&i);
        return 0;
}           
    
