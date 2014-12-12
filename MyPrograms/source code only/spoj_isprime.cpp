#include<cstdio>
#include<math.h>
int main(){
    unsigned long x,i;
f:    while(scanf("%d",&x)!=EOF)
    {
      if(x<=0||x==1||x%2==0){printf("NO");continue;}
      for(i=3;i<=sqrt(x);i++)
      {
                             if(x%i==0){
                                        printf("NO");
                                        goto f;
                             }
      }
       printf("YES");
    }      
return 0;
}
