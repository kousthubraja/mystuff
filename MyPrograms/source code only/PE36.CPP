#include<iostream.h>
#include<conio.h>
#include<string.h>
#include<stdlib.h>
void main(){
clrscr();
long i=15,j=0,t;
char *bin,*s;
for(i=1;i<10;i++){
	bin=ltoa(i,bin,2);
	t=atol(bin);
	bin=ltoa(t,bin,2);
	s=ltoa(i,s,10);
	if(strrev(s)==s && strrev(bin)==bin)
	{
		j=j+i;
		cout<<bin<<'\t'<<s<<'\n';
	}
}
cout<<"Sum : "<<j;
getch();
}