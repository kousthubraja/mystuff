#include<iostream.h>
#include<conio.h>
#include<process.h>
//computer =3, human=5

int chk_com_win();
int chk_com_won();
int chk_hum_win();
int chk_hum_won();
int com_move();
int prnt();
int chk_draw();

int p[10];

int main()
{
    int i;
    for(i=1;i<=9;i++)p[i]=2;
//    clrscr();
    cout<<"		     TIC-TAC-TOE\n";
    cout<<"	         By KR!!! ;)\n";
    cout<<"\nInstructions\n\n";
    cout<<" 1  2  3\n\n";
    cout<<" 4  5  6\n\n";
    cout<<" 7  8  9\n\n";
    

    int x;
    inp1:
    cout<<"\nEnter position : ";
    cin>>x;
    cout<<"\n";
    for(i=1;i<=4;i++)
    {

		     if(p[x]==2)
		     {
		     p[x]=5;
		     chk_hum_won();
		     
		     p[com_move()]=3;
		     chk_com_won();
		     prnt();
		     if(chk_draw()){cout<<"\nIts a Draw!\n";break;}
             }
		     else goto inp1;
    }
    end:
    getch();
    return 0;
}

int prnt(){
    char tlc=201;
    char hor=205;
    char trc=187;
    char brc=188;
    char blc=200;
    
    int i;
//    clrscr();

    for(i=1;i<=9;i++){
	     if(p[i]==3){cout<<"  O  ";}
	     else if(p[i]==5){cout<<"  X  ";}
	     else{cout<<"  .  ";}
	     if(i==3||i==6)cout<<"\n\n\n";
	     
	}
    return 0;
}

int chk_com_win(){
    if(p[1]*p[2]*p[3]==18)
    {
	 if(p[1]==2){return 1;}
	 else if(p[2]==2){return 2;}
	 else if(p[3]==2){return 3;}
    }
    else if(p[1]*p[4]*p[7]==18)
    {
	 if(p[1]==2){return 1;}
	 else if(p[4]==2){return 4;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[1]*p[5]*p[9]==18)
    {
         if(p[1]==2){return 1;}
         else if(p[5]==2){return 5;}
         else if(p[9]==2){return 9;}
    }
    else if(p[2]*p[5]*p[8]==18)
    {
         if(p[2]==2){return 2;}
         else if(p[5]==2){return 5;}
         else if(p[8]==2){return 8;}
    }
    else if(p[3]*p[6]*p[9]==18)
    {
         if(p[3]==2){return 3;}
         else if(p[6]==2){return 6;}
         else if(p[9]==2){return 9;}
    }
    else if(p[3]*p[5]*p[7]==18)
    {
	 if(p[3]==2){return 3;}
	 else if(p[5]==2){return 5;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[4]*p[5]*p[6]==18)
    {
	 if(p[4]==2){return 4;}
	 else if(p[5]==2){return 5;}
	 else if(p[6]==2){return 6;}
    }
    else if(p[7]*p[8]*p[9]==18)
    {
	 if(p[7]==2){return 7;}
	 else if(p[8]==2){return 8;}
	 else if(p[9]==2){return 9;}
    }
    else
    {
	return 0;
    }
    return 0;
}



int chk_hum_win(){
    if(p[1]*p[2]*p[3]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[2]==2){return 2;}
	 else if(p[3]==2){return 3;}
    }
    else if(p[1]*p[4]*p[7]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[4]==2){return 4;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[1]*p[5]*p[9]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[5]==2){return 5;}
	 else if(p[9]==2){return 9;}
    }
    else if(p[2]*p[5]*p[8]==50)
    {
	 if(p[2]==2){return 2;}
	 else if(p[5]==2){return 5;}
	 else if(p[8]==2){return 8;}
    }
    else if(p[3]*p[6]*p[9]==50)
    {
	 if(p[3]==2){return 3;}
	 else if(p[6]==2){return 6;}
	 else if(p[9]==2){return 9;}
    }
    else if(p[3]*p[5]*p[7]==50)
    {
	 if(p[3]==2){return 3;}
	 else if(p[5]==2){return 5;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[4]*p[5]*p[6]==50)
    {
	 if(p[4]==2){return 4;}
	 else if(p[5]==2){return 5;}
	 else if(p[6]==2){return 6;}
    }
    else if(p[7]*p[8]*p[9]==50)
    {
	 if(p[7]==2){return 7;}
	 else if(p[8]==2){return 8;}
	 else if(p[9]==2){return 9;}
    }
    
    return 0;
}

int chk_com_won(){
    if(p[1]*p[2]*p[3]==27||
       p[1]*p[4]*p[7]==27||
       p[1]*p[5]*p[9]==27||
       p[2]*p[5]*p[8]==27||
       p[3]*p[6]*p[9]==27||
       p[3]*p[5]*p[7]==27||
       p[4]*p[5]*p[6]==27||
       p[7]*p[8]*p[9]==27)
       {
			  //return 1;
			  prnt();
			  cout<<"\nHooo I Won the match!!! ;) Better luck next time.";
			  cout<<"\nPress any key...";
			  getch();
			  exit(0);
       }
       else{return 0;}
       return 0;
}

int chk_hum_won(){
    if(p[1]*p[2]*p[3]==125||
       p[1]*p[4]*p[7]==125||
       p[1]*p[5]*p[9]==125||
       p[2]*p[5]*p[8]==125||
       p[3]*p[6]*p[9]==125||
       p[3]*p[5]*p[7]==125||
       p[4]*p[5]*p[6]==125||
       p[7]*p[8]*p[9]==125)
       {
                          //return 1;
                          prnt();
                          cout<<"\nUmm you Won the match, brilliant!!! ;) :P";
                          cout<<"\nPress any key...";
                          getch();
			  exit(0);
       }
       else{return 0;}
       return 0;
}

int com_move(){

    if(chk_com_win()){
         return chk_com_win();
         }
    else if(chk_hum_win()){
         return chk_hum_win();
         }
    
    //Defend diagonal winning move
    else if(p[1]==5&&p[9]==5||p[7]==5&&p[3]==5){
         //
         if(p[2]==2){return 2;}
         else if(p[4]==2){return 4;}
         else if(p[6]==2){return 6;}
         else if(p[8]==2){return 8;}
         
         else if(p[5]==2){return 5;}
         else if(p[1]==2){return 1;}
         else if(p[9]==2){return 9;}
         else if(p[3]==2){return 3;}
         else if(p[7]==2){return 7;}
         }
    
    //Defend corner winning move
    else if(p[2]==5&&p[4]==5&&p[1]==2){
         return 1;
    }
    else if(p[2]==5&&p[6]==5&&p[3]==2){
         return 3;
    }
    else if(p[4]==5&&p[8]==5&&p[7]==2){
         return 7;
    }
    else if(p[6]==5&&p[8]==5&&p[9]==2){
         return 9;
    }
    
    
    else if(p[5]==2){return 5;}     
    else if(p[1]==2){return 1;}
    else if(p[9]==2){return 9;}
    else if(p[3]==2){return 3;}
    else if(p[7]==2){return 7;}
    
    else if(p[2]==2){return 2;}
    else if(p[4]==2){return 4;}
    else if(p[6]==2){return 6;}
    else if(p[8]==2){return 8;}
    
    else{
         //draw
         cout<<"Cheyy.. its a Draw...";
         getch();
	 exit(0);

    }
    return 0;
}

int chk_draw(){
           int i;
           for(i=1;i<=9;i++){
               if(p[i]==2){
                   return 0;
               }
           }
           return 1;
}

