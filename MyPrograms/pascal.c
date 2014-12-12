#include<stdio.h>

int fact(int);

int main()
{
    int row,i,j,n=5;
    for(row=0;row<=n;row++)
    {
        j=n-i;
        while(j--) printf(" ");
        for(j=0;j<n;j++)
          printf("%d ",fact(row)/fact(j)*fact(row-j));
    }
    scanf("%d",&n);
    return 0;
}

int fact(int n)
{
    if(n==0||n==1) return 1;
    
    return (n*fact(n-1));
}
