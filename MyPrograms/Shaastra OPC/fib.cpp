#include<iostream>
#include<cmath>

int fib(int);
using namespace std;
int main()
{
    //ios::sync_with_stdio(false);

// Variables

    int t;
    cin>>t;
    
    int x,y,i;
    double sum;
    while(t--)
    {
         cin>>x>>y;
         
         int i;
         for(i=x;i<=y;i++)
         {
                          sum+=fib(i);
         }
         sum=fmod(sum,10009);
         cout<<sum;
    }
    return 0;
}

int fib(int n)
{
    if (n == 0) return 0;
    if (n == 1) return 1;
        
    int prevPrev = 0;
    int prev = 1;
    int result = 0;
        
    for (int i = 2; i <= n; i++)
    {
        result = prev + prevPrev;
        prevPrev = prev;
        prev = result;
    }
    return result;
}
