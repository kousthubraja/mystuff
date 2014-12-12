#include<iostream.h>

int bsearch(int[],int,int);
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
    
    cout<<"Enter item ";
    cin>>item;
    cout<<bsearch(A,size,item);
    cin>>item;
    return 0;
}
            
int bsearch(int A[],int size,int item)
{
    int beg,last,mid;
    beg=0;
    last=size;
    while(beg<last)
    {
          mid=(beg+last)/2;
          if(item==A[mid]) return mid+1;
          else if(A[mid]>item)
          {
               last=mid;
          }
          else if(A[mid]<item)
          {
               beg=mid;
          }
    }
    return -1;
}
