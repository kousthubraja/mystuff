#include<cstdio>
#include<cmath>
int main()
{
    int t,i,n,s;
    float sq;
    scanf("%d",&t);
    while(t--)
    {
              scanf("%d",&n);
              if(n==1||n==0){printf("0\n");continue;}
              sq=sqrt(n);
              s=1;
              for(i=2;i<=sq;i++){
                            if(n%i==0){
                                       s+=i;
                                       s+=n/i;
                                       if(i==sq){s-=n/i;}
                                       }
              }
              printf("%d\n",s);
    }
    return 0;
}
