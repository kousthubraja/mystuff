#include<iostream>
#include<cmath>
//#include<conio.h>
using namespace std;
bool isprime(int n);
int main()
{
    int t,u,l,n;
    cin>>t;
    for(int i=1;i<=t;i++){
            cin>>l>>u;
            for(int j=l;j<=u;j++){
                    
                if(isprime(j)){
                               cout<<j<<'\n';
                }
            }
    }
  
     


//    getch(); 
}

bool isprime(int n){
     if(n==2){
              return true;
     }
     else if(n%2==0){
                  return false;
     }
                
     for(int i=3;i<=(int)sqrt(n);i+=2){
                if(n%i==0){
                             return false;
                }
     }
     return true;
}
