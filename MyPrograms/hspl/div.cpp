#include<iostream>
#include<cmath>

int chksum(double,double,double);
using namespace std;

int main()
{
    ios::sync_with_stdio(false);

// Variables

    double a,b,t=0;
    int x,l,r;
    cin>>a>>b;
    cin>>x>>l>>r;
    double i;
    i=a-fmod(a,x);
    for(;i<=b;i+=x)
    {
         if(fmod(i,x)==0){
                    if(chksum(i,l,r)){t+=1;}
         }

    }
    int rsl=fmod(t,1000000007);
cout<<rsl;
    return 0;
}

int chksum(double n,double l,double d)
{
    double s,r=0;
    while(n>=1)
    {
              s=fmod(n,10);
              r+=s;
              n=n/10;
    }
    if(r>=l&&r<=d){return 1;}else{return 0;}
}
