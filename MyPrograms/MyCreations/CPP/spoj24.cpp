#include<cstdio>
int main()
{
    int t,n,i;
    unsigned long f=1;
    scanf("%d",&t);
    while(t--)
    {
              scanf("%d",&n);
              f=1;
              for(i=2;i<=n;i++)
              {
                               f=f*i;
              }
              printf("%d\n",f);                 
    }
return 0;
}
