#include<iostream>
#include<conio.h>
using namespace std;
int main()
{
    bool blb[102];
    int i,j,k=100;
    for(i=1;i<=k;i++)blb[i]=0;
    
    for(i=1;i<=k;i++)
    {
                     
        for(j=i;j<=k;j+=i)
        {cout<<j;
             blb[j]=!blb[j];
        }
        cout<<"\n";
    }
    j=0;
    for(i=1;i<=k;i++)
    {
        if(blb[i]){
                   j++;
                   cout<<i<<" ";
                   }
    }
    getch();
    return 0;
}
