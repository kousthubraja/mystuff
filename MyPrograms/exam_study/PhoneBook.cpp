#include<fstream.h>
#include<iostream.h>
#include<string.h>
#include<conio.h>

struct PB{
       char name[20];
       char num[20];
};

int main()
{
    PB p1;
    ifstream f;
    
    char c;
    int count=0,i;
    char s[20],ts[]="to";
    
    //strcpy(p1.name,"Apple");
    //strcpy(p1.num,"123");
       
    f.open("ph.dat",ios::in|ios::binary);
    //f.write((char*)&p1,sizeof(p1));
    f.read((char*)&p1,sizeof(p1));
    cout<<p1.name<<endl<<p1.num;
    getch();
    f.close();
    
    return 0;
}
