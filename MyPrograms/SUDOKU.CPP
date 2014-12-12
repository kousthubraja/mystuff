//May God Have mercy
//Sudoku Solver
#include<iostream.h>
#include<conio.h>
#include<dos.h>
#include<graphics.h>
int x=21,t=6;
int p[10][10];
char c[10][10],pa='p';
int i=1, j=1, chwin=0,h,l;
int userin[10][10];
void rules(void)
{
//clrscr();
cout<<"Sudoku is basically a mind Game that you solve with reasoning and logic.\n\nThe basic idea is to fill in no.s 1 to 9 \n\nin such a way that no number is repeated in\n\n1. Every coloumn\n\n2. Every row And in\n\n3. Every 3X3 box\n\n\n\n\nPress any key to continue";
getch();
}
void sinit1 (void)
{
clrscr();
cout<<"                                                                         ";
cout<<"			  :SGA&BHhSr;.                                          ";
cout<<"		       :S@@Bs;:;s&@@@X                                          ";
cout<<"		      iG@@          @i                                          ";
cout<<"		     :As@           Ai                                          ";
cout<<"		     9,h@           .,                  ..                      ";
cout<<"		     ri @@.       ;#   .H& .#h:;5,   :X;@:i2  r@  s2.  9M   :@; ";
cout<<"		      A..@@M      .@    Ah  #s   :@ .@.    2# .@ 2s    2B    @, ";
cout<<"		       Xr X@@@:    @    X3  &r    @ :@     .@  @sH:    ih    @, ";
cout<<"			,5; i@@@s  B.   As  @S   S#  As    9r ,@  HA.  ;B    @. ";
cout<<"			  ,S; ;@@@; @#$&9  .52;ri     @@90@   :2   92.  %#@!@0  ";
cout<<"			     Ss .@@@                                            ";
cout<<"			       Xs X@@    ,;@90:  .ir   ,2.   @0 @i@#& ,5@#&     ";
cout<<"				:G #@:  2H    iH  @9    BB   9! @@     @  HA    ";
cout<<"		   .i            A :@:  @.     @s Gs     #r i9  @@#s   #,,H     ";
cout<<"		   .@            M B@   M5    .@. As      @X0   @@     @  As    ";
cout<<"		    @s          i;S@     ir@#0s   Mh..i,  r&8   @@@#%^ @   H9   ";
cout<<"		    @@@Xr,. .:SBBBA                                             ";
cout<<"		    ;i3B#@@M##Ai:                                               ";
}
void ctrls(void)
{ clrscr();
cout<<"W,A,S,D to move the cursor  (make sure you turn off the caps)\n\nInput numbers as usual\n\nPress 'k' when finished\n\nPress 'x' to delete particular entry\n\n\n\n\n\n\n\nPress Any Key to continue";
getch();
}
void about(void)
{
clrscr();
cout<<"Developed and coded by";
delay(1000);
cout<<"\n\tThe one and only";
delay(1000);
cout<<"\n\t\tKrishnarjun";
delay(1000);
cout<<"\n\n\n\n\n\n\n\n\n\n\n\n\nReport Any bugs to krishnarjun.jamesbond@gmail.com";
getch();
}
int init2(void)
{
char x;
while(3==3)
{
clrscr();
cout<<"\n\n\n\t\t\t1.Go Sudoku Solver\n\n\t\t\t2.Rules\n\n\t\t\t3.Controls\n\n\t\t\t4.About\n\n\t\t\t5.Exit\n\n";
x=getch();

switch(x)
{
case '1':return 0;
case '2':rules();
	 break;
case '3':ctrls();
	break;
case '4':about();
	 break;
case '5':return 100;
}

}
 }
void display(void)
{
cout<<"   \n\n\n\n\t\t  ÉÍÍÍÑÍÍÍÑÍÍÍËÍÍÍÑÍÍÍÑÍÍÍËÍÍÍÑÍÍÍÑÍÍÍ»\n";
cout<<"\t\t  º "<<c[1][1]<<" ³ "<<c[1][2]<<" ³ "<<c[1][3]<<" º "<<c[1][4]<<" ³ "<<c[1][5]<<" ³ "<<c[1][6]<<" º "<<c[1][7]<<" ³ "<<c[1][8]<<" ³ "<<c[1][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[2][1]<<" ³ "<<c[2][2]<<" ³ "<<c[2][3]<<" º "<<c[2][4]<<" ³ "<<c[2][5]<<" ³ "<<c[2][6]<<" º "<<c[2][7]<<" ³ "<<c[2][8]<<" ³ "<<c[2][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[3][1]<<" ³ "<<c[3][2]<<" ³ "<<c[3][3]<<" º "<<c[3][4]<<" ³ "<<c[3][5]<<" ³ "<<c[3][6]<<" º "<<c[3][7]<<" ³ "<<c[3][8]<<" ³ "<<c[3][9]<<" º\n";
cout<<"\t\t  ÌÍÍÍØÍÍÍØÍÍÍÎÍÍÍØÍÍÍØÍÍÍÎÍÍÍØÍÍÍØÍÍÍ¹\n";
cout<<"\t\t  º "<<c[4][1]<<" ³ "<<c[4][2]<<" ³ "<<c[4][3]<<" º "<<c[4][4]<<" ³ "<<c[4][5]<<" ³ "<<c[4][6]<<" º "<<c[4][7]<<" ³ "<<c[4][8]<<" ³ "<<c[4][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[5][1]<<" ³ "<<c[5][2]<<" ³ "<<c[5][3]<<" º "<<c[5][4]<<" ³ "<<c[5][5]<<" ³ "<<c[5][6]<<" º "<<c[5][7]<<" ³ "<<c[5][8]<<" ³ "<<c[5][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[6][1]<<" ³ "<<c[6][2]<<" ³ "<<c[6][3]<<" º "<<c[6][4]<<" ³ "<<c[6][5]<<" ³ "<<c[6][6]<<" º "<<c[6][7]<<" ³ "<<c[6][8]<<" ³ "<<c[6][9]<<" º\n";
cout<<"\t\t  ÌÍÍÍØÍÍÍØÍÍÍÎÍÍÍØÍÍÍØÍÍÍÎÍÍÍØÍÍÍØÍÍÍ¹\n";
cout<<"\t\t  º "<<c[7][1]<<" ³ "<<c[7][2]<<" ³ "<<c[7][3]<<" º "<<c[7][4]<<" ³ "<<c[7][5]<<" ³ "<<c[7][6]<<" º "<<c[7][7]<<" ³ "<<c[7][8]<<" ³ "<<c[7][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[8][1]<<" ³ "<<c[8][2]<<" ³ "<<c[8][3]<<" º "<<c[8][4]<<" ³ "<<c[8][5]<<" ³ "<<c[8][6]<<" º "<<c[8][7]<<" ³ "<<c[8][8]<<" ³ "<<c[8][9]<<" º\n";
cout<<"\t\t  ÇÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ×ÄÄÄÅÄÄÄÅÄÄÄ¶\n";
cout<<"\t\t  º "<<c[9][1]<<" ³ "<<c[9][2]<<" ³ "<<c[9][3]<<" º "<<c[9][4]<<" ³ "<<c[9][5]<<" ³ "<<c[9][6]<<" º "<<c[9][7]<<" ³ "<<c[9][8]<<" ³ "<<c[9][9]<<" º\n";
cout<<"\t\t  ÈÍÍÍÏÍÍÍÏÍÍÍÊÍÍÍÏÍÍÍÏÍÍÍÊÍÍÍÏÍÍÍÏÍÍÍ¼\n";

}
void convert (void)
{
for(int rw=1;rw<10;rw++)
 for(int cn=1;cn<10;cn++)
  {int qwert=p[rw][cn];
    switch (qwert)
	 {
	 case 1:c[rw][cn]='1';
		  break;
	 case 2:c[rw][cn]='2';
		  break;
	 case 3:c[rw][cn]='3';
		  break;
	 case 4:c[rw][cn]='4';
		  break;
	 case 5:c[rw][cn]='5';
		  break;
	 case 6:c[rw][cn]='6';
		  break;
	 case 7:c[rw][cn]='7';
		  break;
	 case 8:c[rw][cn]='8';
		  break;
	 case 9:c[rw][cn]='9';
		  break;
	 }
    }
 }
int input (char k)
{
    switch (k)
	 {
	 case '1':p[i][j]=1;userin[i][j]=1;c[i][j]='1';
		  break;
	 case '2':p[i][j]=2;userin[i][j]=1;c[i][j]='2';
		  break;
	 case '3':p[i][j]=3;userin[i][j]=1;c[i][j]='3';
		  break;
	 case '4':p[i][j]=4;userin[i][j]=1;c[i][j]='4';
		  break;
	 case '5':p[i][j]=5;userin[i][j]=1;c[i][j]='5';
		  break;
	 case '6':p[i][j]=6;userin[i][j]=1;c[i][j]='6';
		  break;
	 case '7':p[i][j]=7;userin[i][j]=1;c[i][j]='7';
		  break;
	 case '8':p[i][j]=8;userin[i][j]=1;c[i][j]='8';
		  break;
	 case '9':p[i][j]=9;userin[i][j]=1;c[i][j]='9';
		  break;
	 case 'x':p[i][j]=0;userin[i][j]=0;c[i][j]=' ';
		  break;
	 case 'k':return 1;

	 };

       return 0;
    }
void checkendr(void)
{
if (j==10)
{
j=1;
i+=1;
}
}
void checkendl(void)
{
if (j==0)
{
j=9;
i-=1;
}
}

int  gotobox(int a)
{
  if(a==0)
  {
   j-=1;
  checkendl();

   while(1==1)
  {
    if (userin[i][j]!=1)
       break;
    else
    {j-=1;
    checkendl();  }
   }}
if(a==1)
  { j+=1;
  checkendr();
  while(1==1)
  {
    if (userin[i][j]!=1)
       break;
    else
    {j+=1;
    checkendr();  }
   }
       }
       return a;

}

int checkrow(int i, int j)
{
for (int w=1;w<10;w++)
 {if (w!=i)
 {if(p[i][j]==p[w][j])
  {return 0;}   }
 }
 return 1;
}
int checkcoloumn(int i, int j)
{
for (int w=1;w<10;w++)
 {if (w!=j)
 {if(p[i][j]==p[i][w])
 { return 0;};
    }
 }

 return 1;
}
int checkbox(int i, int j)
{int x=1;
int d=(i-1)%3;
int f=(j-1)%3;
int q,y,tempi,tempj;
 switch(d)
 {
 case 1:tempi=i-1;
	  break;
 case 0:tempi=i;
	  break;
 case 2:tempi=i-2;
	  break;
 }
 switch(f)
 {
 case 1:tempj=j-1;
	  break;
 case 0:tempj=j;
	  break;
 case 2:tempj=j-2;
	  break;
 }
 for(q=0;q<3;q++)
  for(y=0;y<3;y++)
   if(p[i][j]==p[tempi+q][tempj+y])
    if(i!=(tempi+q))
     if(j!=(tempj+y))
      return 0;
 if(x==1)
 return 1;
}


int putvalue(int i,int j)
{ int x=0,y=0,z=0;
if (userin[i][j]==0)
{for (int g=(p[i][j]+1);g<10;g++)
  {if(p[i][j]==9)
    {return 0;}
    p[i][j]=g;
   x=checkrow(i,j);
   y=checkcoloumn(i,j);
   z=checkbox(i,j);
    if(x==1&&y==1&&z==1)
    return 1;
   }

if (x==0||y==0||z==0)
{
 p[i][j]=0;
 return 0;
  }
   }
else
return 1;
}
void putfirst(void)
{for(h=1;h<10;h++)
  for(l=1;l<10;l++)
   if(!userin[h][l])
    return;
}
int main()
{
clrscr();
cout<<"\n\n\n\n\n\n\t\t\t\tKrishnarjun\n";
delay(1000);
cout<<"\n\t\t\t\tAkash \n";
delay(1000);
cout<<"\n\t\t\t\tAthul M.C\n";
delay(1000);
cout<<"\n\t\t\t\tAchuth\n";
delay(1000);
cout<<"\n\t\t\t\tVishnu S\n";
delay(1000);
cout<<"\n\t\t\t\t& Vishnu E.T\n";
delay(1000);
clrscr();
cout<<"\n\n\n\n\n\n\n\n\n\n\n\t\t\t\tProudly Present to you";
delay(2000);
clrscr();
for(int kk=0;kk<32;kk++)
{textcolor(kk);
cprintf(" ");
clrscr();
sinit1();
delay(100);
}
delay(1000);
textcolor(15);
cprintf(" ");
menu:
for(int r=1;r<10;r++)
  for(int u=1;u<10;u++)
  { p[r][u]=0;
   c[r][u]=' ';
   userin[r][u]=0;}
do
{x=21;t=6;i=j=1;
int gh=init2();
if(gh==100)
 return 0;
int s,z,rw,cn,a,b,a1;
char k ;
clrscr();
for (int y=0;y<2;)
{
display();
gotoxy(x,t);
k=getch();
switch (k)
	 {
	 case 'w': t-=2;i-=1;
		  break;
	 case 'a': x-=4;j-=1;
		  break;
	 case 's': t+=2;i+=1;
		  break;
	 case 'd': x+=4;j+=1;
		  break;
		  }
if(x<21)
 {x=21;j=1;}
if(t<6)
{t=6;i=1;}
if(x>53)
{x=53;j=9;}
if(t>22)
{t=22;i=9;}
gotoxy(x,t);
s=input(k);
if (s==1)
break;
clrscr();
  }
clrscr();
for(int f=1;f<10;f++)
 for(int ar=1;ar<10;ar++)
  if(userin[ar][f]==1)
   {a=checkrow(ar,f);
   b=checkcoloumn(ar,f);
   a1=checkbox(ar,f);
   if(a==0||b==0||a1==0)
   {cout<<"\n\n\n\n\n\n\n\n\n\n\t\t\t\tSorry Invalid Puzzle. . .";
   getch();
   goto menu;
   }       }

i=j=1;
putfirst();

do
{
chwin=0;
while(1==1)
{
z=putvalue(i,j);
if(z==0)
{if (h==i&&l==j)
  {cout<<"\n\n\n\n\n\n\n\n\n\n\t\t\t\tSorry Invalid Puzzle. . .";
  getch();
  goto menu;}
  gotobox(z);
 continue;
}
if(z==1)
{gotobox(z);break;}
}

for(rw=1;rw<10;rw++)
 for(cn=1;cn<10;cn++)
  if(p[rw][cn]==0)
   chwin+=1;

}
while(chwin!=0);
convert();
display();
cout<<"\n\n\t\tPress P to play again\n\t\t Press Any other key to quit";
pa=getch();
 for(rw=1;rw<10;rw++)
  for(cn=1;cn<10;cn++)
  {p[rw][cn]=0;
  c[rw][cn]=' ';
  userin[rw][cn]=0;  }
}
while(pa=='p'||pa=='P');
clrscr();
return 0;
}




