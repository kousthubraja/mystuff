#include<iostream>
#include<vector>
#include<cstdlib>
#include<string>

using namespace std;
int main()
{
    ios::sync_with_stdio(false);

// Variables

    int i=0,len,j,nval;
    vector<int> num;
    vector<int> den;
    char inp[1000],val[10],inst='*';
    
    cin>>inp;
    len=strlen(inp);
    j=0;
    
    for(i=0;i<len;i++)
    {
                       j=0;
                     while(inp[i]!='\0' && inp[i]!='*' && inp[i]!='/')
                     {
                        val[j]=inp[i];
                        j++;i++;
                     }
                     val[j]='\0';
                     nval=atoi(val);
                     
                     if(inst=='*'){
                                   num.push_back(nval);
                     }
                     else if(inst=='/'){
                          den.push_back(nval);
                     }
                     
                     if(inp[i]=='*'){
                                     inst='*';
                     }
                     else if(inp[i]=='/'){
                          inst='/';
                     }
                     
    }
    int nlen,dlen,q,sq,isprim=1;
    nlen=num.size();
    dlen=den.size();
    
    for(i=0;i<nlen;i++){
                        q=num[i];
                        sq=q/2 +1;
                        for(j=2;j<=sq;j++)
                        {
                             if(q%j==0){
                                        num.push_back(j);isprim=0;
                             }
                        }
                        if(isprim){num.erase(i);
    }
    nlen=num.size();
    for(i=0;i<nlen;i++)
    {
                       cout<<num[i]<<endl;}
    cin>>i;
    return 0;
}
