/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

/**
 *
 * @author Kousthub
 */
public class hard_logic{
   
  int chk_com_win(int[] p){
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


    int chk_hum_win(int[] p){
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

    int chk_com_won(int[] p){
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
//                          alert("I won! ;)");
//                          st.setText(st.getText()+"\nI won");
//			  cout<<"\nHooo I Won the match!!! ;) Better luck next time.";
//			  cout<<"\nPress any key...";
//			  getch();
//			  exit(0);
       }
       else{return 0;}
       return 0;
}

    int chk_hum_won(int[] p){
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
//                          alert("Great! You won! :)");
//                          st.setText(st.getText()+"\nYou won");
//                          cout<<"\nUmm you Won the match, brilliant!!! ;) :P";
//                          cout<<"\nPress any key...";
//                          getch();
//			  exit(0);
       }
       else{
        return 0;
       }
       return 0;
}

    int com_move(int[] p){
    if(chk_com_win(p)!=0){
         return chk_com_win(p);
         
         }
    else if(chk_hum_win(p)!=0){
         return chk_hum_win(p);
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
//         alert("It's a draw...");
        return -1;
    }
    return 0;
}

    int chk_draw(int[] p){
           int i;
           for(i=1;i<=9;i++){
               if(p[i]==2){
                   return 0;
               }
           }
           return -1;
}
}
