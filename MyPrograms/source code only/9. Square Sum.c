#include<stdio.h>

int main()
{
    char in[100],out[100],state=0;
    int i,j=0,sq,n1,n2;
        
    for(i=32;i<=99;i++)
    {
        sq=i*i;
        n1=sq/100;
        n2=sq%100;
        if(n1+n2==i)
         printf("%d*%d = %d; %d + %d = %d\n",i,i,sq,n1,n2,i);
    }
    return 0;
}
    
