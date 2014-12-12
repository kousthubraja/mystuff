#include<iostream.h>

int *roll;
float *mark;

int main()
{
    int size;
    cout<<"Enter size ";
    cin>>size;
    roll=new int[size];
    mark=new float[size];
    for(int i=0;i<size;i++)
    {
            cin>>roll[i]>>mark[i];
    }
    
    for(int i=0;i<size;i++)
    {
            cout<<roll[i]<<" "<<mark[i]<<endl;
    }
    cin>>size;
    delete []roll;
    delete []mark;
    return 0;
}
            
