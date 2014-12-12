#include<iostream.h>

int ssort(int[],int);
int main()
{
    int size,item;
    int A[50];
    cout<<"Enter size ";
    cin>>size;
    for(int i=0;i<size;i++)
    {
            cin>>A[i];
    }
    ssort(A,size);
    for(int i=0;i<size;i++)
    {
            cout<<A[i]<<endl;
    }
    cin>>item;
    return 0;
}
            
int ssort(int ar[],int size)
{
    int tmp,small,pos;
    for(int i=0;i<size;i++)
    {
            small=ar[i];
            
            for(int j=i+1;j<size;j++)
            {
                    if(ar[j]<small)
                    {
                         small=ar[j];
                         pos=j;
                    }
            }
            tmp=ar[pos];
            ar[pos]=ar[i];
            ar[i]=tmp;
    
            
    for(int i=0;i<size;i++)
    {
            cout<<ar[i]<<" ";
    }
    cout<<endl;
    }
}
