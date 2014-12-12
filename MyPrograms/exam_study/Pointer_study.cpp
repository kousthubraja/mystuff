#include<iostream>
#include<conio.h>
using namespace std;

int main()
{
    int *p,n=5,size;
    cin>>size;
    p=new int[size];

    for(int i=0;i<size;i++)
    {
            cin>>p[i];
            //p++;
    }
    
    for(int i=0;i<size;i++)
    {
            cout<<endl<<p[i];
            //p++;
    }

    
    getch();
    return 0;
}
