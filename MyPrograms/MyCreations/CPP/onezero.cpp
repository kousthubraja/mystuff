#include<cstdio>
int main()
{
    int t,n,i,m,j,f;
    scanf("%d",&t);
    while(t--)
    {
              scanf("%d",&n);
              j=n;
              i=1;
              f=0;
              while(1)
              {
                      j*=i;
                      while(j>0)
                      {
                                m=j%10;
                                j=j/10;
                                if(j!=1||j!=0)
                                {
                                         break;
                                }
                                printf("%d",j
                      }
                      i++;
              }
    }
    return 0;
}
