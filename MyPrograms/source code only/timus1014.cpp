#include<iostream>
using namespace std;
int main()
{
    int i,n,f[30],t=0,c[3];
    cin>>n;
    for(i=1;i<n/2+1;i++)
    {           
            if(n%i==0){
                 f[t]=i;
                 cout<<i<<'\n';
                 t+=1;
            }
    }
    t-=1;
    if(t==0){cout<<-1;exit(0);}
    if(t%2==0){
             c[0]=f[t/2];
             c[1]=f[(t+2)/2];
             }
             cout<<c[0]<<c[1];

                       cin>>t;
}
/*1 2 5 10
1 2 4 5 10 20
1 5 25
1 5 7 35
*/
