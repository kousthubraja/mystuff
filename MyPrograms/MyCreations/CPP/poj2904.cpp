#include<cstdio>
#include<conio.h>
int main()
{
    int t,s,l,n,r;
    scanf("%d",&t);
    while(t--){
               scanf("%d %d",&s,&l);
               
               if(s==1){
                        n=l-s+1;
                        r=(n/2)*(s+l);
               }
               else
               {
                   for(int i=s;i<=l;i++){
                           r=r+1;
                   }
               }
               printf("%d\n",r);
    }
    getch();
}
               
