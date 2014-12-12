#include<cstdio>
#include<cmath>
//#include<conio.h>
//using namespace std;
bool isprime(int n);

int main()
{
    int t,u,l,n;
    char a[10000]="";
    scanf("%d",&t);
    while(t--){
            scanf("%d %d",&l,&u);
            for(int j=l;j<=u;j++){      
                if(isprime(j)){
                               printf("%d\n",j);
                }
            }
//            printf("\n");
    }
  
     
return 0;

//    getch(); 
}

bool isprime(int n){
     if((n%2==0&&n!=2)||n==1){
                  return false;
     }
     for(int i=3;i<=(int)sqrt(n)+1;i+=2){
                if(n%i==0){
                             return false;
                }
     }
     return true;
}
