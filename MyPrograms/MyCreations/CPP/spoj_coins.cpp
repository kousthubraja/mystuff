#include<cstdio>
int main()
{
    int t=10,n,r2,r3,r4,s;
    while(t--)
    {
              scanf("%d",&n);
              if(n==1){
                       printf("1\n");
              }
              else if(n==2){
                       printf("2\n");
              }
              else
              {
              r2=n/2;
              r3=n/3;
              r4=n/4;
              s=r2+r3+r4;
              printf("%d\n",s);
                }
    }
    return 0;
}
