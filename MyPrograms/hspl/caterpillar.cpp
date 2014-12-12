#include<iostream>
#include<stdlib.h>

using namespace std;
int main()
{
    ios::sync_with_stdio(false);

// Variables

    int s;
    char in[5];
    char size[3];
    cin>>in;
    size[0]=in[1];
    size[1]='\0';
    if(in[2]!=EOF){size[1]=in[2];size[2]='\0';}
    s=atoi(size);
    
    int j,z=0;
    
    if(in[0]=='V'||in[0]=='v')
    {
                 for(j=1;j<=s;j++)
                 {
                          if(z==0){
                                   cout<<"###\n..#\n";z=1;
                                   }
                          else{cout<<"###\n#..\n";z=0;}
                 }
    }
    else{
                 for(j=1;j<=s;j++)
                 {
                          if(z==0){
                                   cout<<"#.";z=1;
                                   }
                          else{cout<<"##";z=0;}
                 }
                 cout<<endl;
                 for(j=1;j<=s;j++)
                 {
                          cout<<"#.";
                 }
                 cout<<endl;
                 z=0;
                 for(j=1;j<=s;j++)
                 {
                          if(z==0){
                                   cout<<"##";z=1;
                                   }
                          else{cout<<"#.";z=0;}
                 }
    }
    return 0;
}
