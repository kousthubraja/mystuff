#include<iostream>
#include<vector>

int abs(int);
using namespace std;
int main()
{
    ios::sync_with_stdio(false);

// Variables

    int t;
    cin>>t;
    int n,D,i,j,max=0;
    vector<int> a;
    
    while(t--)
    {
         cin>>n>>D;
         a.resize(n);
         j=max=0;
         
         for(i=0;i<n;i++)
         {
                         cin>>a[i];
         }
        
         for(i=0;i<n;i++){ 
                           j=1;
                          while(abs(a[i+1]-a[i])<=D)
                          {
                               j++;
                               i++;
                          }
         if(j>max){max=j;}
         }
         cout<<max<<endl;
    }
    
    return 0;
}

int abs(int n){if(n<0){return -n;}else{return n;}}
