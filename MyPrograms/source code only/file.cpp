#include<fstream.h>
#include<iostream.h>
int main()
{
    char c[100];
    double s;
    ofstream f;
    f.open("fil.txt",ios::app);
    cin>>s;
    for(double i=0;i<=s;i++)
    f.put('0');
    f.close();
    return 0;
}
