#include<cstdio>
#include<math.h>
#include<cstdlib>
int main()
{
    int t,f,p=1,lst[3401];
    long i,j,m,n;
    lst[0]=2;
    for(i=3;i<=31623;i+=2)
     {
                      
                      f=1;
                           if(i%2==0)
                           {
                                     f=0;
                           }
                           else
                           {
                              for(j=3;j<=sqrt(i);j+=2)
                              {
                                     if(i%j==0)
                                     {
                                               f=0;
                                               break;
                                     }                        
                              }
                              }

                      if(f==1)
                      {
//                              printf("%d\t",i);
                              lst[p]=i;
                              p++;
                      }
     
     }
//     for(i=0;i<=3400;i++){printf("%d\t",lst[i]);}

    scanf("%d",&t);
    while(t--){
             p=0;
             scanf("%d %d",&m,&n);
             if(m%2!=0){
             if(m==1)printf("2\n");
             for(i=m;i<=n;i+=2)
             {
                              
                              f=1;
                                      for(j=0;j<=3400;j++)
                                      {
                                             if(i%lst[j]==0&&i!=lst[j])
                                             {
                                                       f=0;
                                                       break;
                                             }                        
                                      }

                              if(f==1&&i!=1)
                              {
                                      printf("%d\n",i);
                              }
             
             }}
             else{
                  for(i=m+1;i<=n;i+=2)
             {
                              
                              f=1;
                                      for(j=0;j<=3400;j++)
                                      {
                                             if(i%lst[j]==0&&i!=lst[j])
                                             {
                                                       f=0;
                                                       break;
                                             }                        
                                      }

                              if(f==1)
                              {
                                      printf("%d\n",i);
                              }
             
             }}
                  
    }
    system("exit");
    return 0;
}
