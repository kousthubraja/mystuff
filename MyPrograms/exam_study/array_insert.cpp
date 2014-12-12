#include<iostream.h>

int findpos(int[],int,int);

int main()
{
    int ar[50],size,item;
    
    cout<<"size ";
    cin>>size;
    for(int i=0;i<size;i++)
            cin>>ar[i];
    
    cout<<"item ";
    cin>>item;
    cout<<findpos(ar,size,item);
    for(int i=size;i>index;i--)
    {
            ar[i]=ar[i-1];
    }
    cin>>item;
    return 0;
}

int findpos(int ar[50],int size,int item)
{
    int i,pos=0;   
    if(item<ar[0]) pos=0;
    //else
    {
        for(i=0;i<size-1;i++)
        {
                             
                if(ar[i]<=item && item<ar[i+1])
                {
                      pos= i+1;
                      break;
                }
        }
    }
    if(i==size-1) pos=size;
    return pos;
}
