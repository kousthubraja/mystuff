/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

/**
 *
 * @author Kousthub
 */
public class GameLogic {

int p[];

int main()
{
    int i;
    for(i=1;i<=9;i++)p[i]=2;
//    clrscr();
   
    int x=0;
    inp1:
//    cout<<"\nEnter position : ";
//    cin>>x;
//    cout<<"\n";
    for(i=1;i<=4;i++)
    {

		     if(p[x]==2)
		     {
		     p[x]=5;
		     chk_hum_won();
		     
		     p[com_move()]=3;
		     chk_com_won();
		     prnt();
//Draw		     if(chk_draw()==1){cout<<"\nIts a Draw!\n";break;}      
                     }
//		     else goto inp1;
    }
    end:
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
//	     if(p[i]==3){cout<<"  O  ";}
//	     else if(p[i]==5){cout<<"  X  ";}
//	     else{cout<<"  .  ";}
//	     if(i==3||i==6)cout<<"\n\n\n";
	     
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
    else
    {
	return 0;
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
//			  cout<<"\nHooo I Won the match!!! ;) Better luck next time.";
//			  cout<<"\nPress any key...";
//			  getch();
//			  exit(0);
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
//                          cout<<"\nUmm you Won the match, brilliant!!! ;) :P";
//                          cout<<"\nPress any key...";
//                          getch();
//			  exit(0);
       }
       else{return 0;}
       return 0;
}

int com_move(){

    if(chk_com_win()==1){
         return chk_com_win();
         }
    else if(chk_hum_win()==1){
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
    
    //Defend abi's winning move
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
    
         
    else if(p[1]==2){return 1;}
    else if(p[9]==2){return 9;}
    else if(p[3]==2){return 3;}
    else if(p[7]==2){return 7;}
    else if(p[5]==2){return 5;}
    
    else if(p[2]==2){return 2;}
    else if(p[4]==2){return 4;}
    else if(p[6]==2){return 6;}
    else if(p[8]==2){return 8;}
    else{
         //draw
//         cout<<"Cheyy.. its a Draw...";
//         getch();
//	 exit(0);

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
                             


}
