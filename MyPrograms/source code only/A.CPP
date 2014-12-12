#include<iostream.h>
#include<conio.h>
#include<stdlib.h>
#include<string.h>

void main(){
int i,f=0;
char c[10];
clrscr();
//cout<<"Number the numbers : ";
cin>>c;

for(i=0;i<strlen(c);i++){
if(c[i]!='1' || c[i]!='0')
f=1;
}
if(f==0)
cout<<"kousthub";

getch();
}