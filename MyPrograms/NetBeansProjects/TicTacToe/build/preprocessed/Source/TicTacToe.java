/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import javax.microedition.lcdui.game.*;
/**
 * @author Kousthub
 */
public class TicTacToe extends MIDlet implements CommandListener{
    
    ttt tmain;
    Command com;
    
    public void startApp() {
        
        
        com=new Command("Click",1,1);
        tmain=new ttt();
        //tmain.addCommand(com);
        //tmain.setCommandListener(this);
        Display.getDisplay(this).setCurrent(tmain);
    }
    
    public void commandAction(Command c,Displayable d){
        
    }
           

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}

class ttt extends Canvas {
    int[] p=new int[11];
    int w=getWidth();
    int h=getHeight();
    int cw=w/3;
    int hcw=cw/2;
    int ox=0,oy=0;
    Image buffer;
    Graphics gr;
    
    public ttt(){
        setFullScreenMode(true);
        buffer=Image.createImage(w, h);
        gr=buffer.getGraphics();
        gr.setColor(255,255,0);
        gr.fillRect(0,0,w,h);
        gr.setGrayScale(0);
        
        gr.drawLine(cw,0,cw,cw*3);
        gr.drawLine(2*cw,0,2*cw,cw*3);
        gr.drawLine(3*cw,0,3*cw,cw*3);
        
        gr.drawLine(0,cw,3*cw,cw);
        gr.drawLine(0,2*cw,3*cw,cw*2);
        gr.drawLine(0,3*cw,3*cw,cw*3);
        
        int i;
        for(i=1;i<=9;i++){
            p[i]=2;
        }
        
        for(i=1;i<=9;i++){
            System.out.println(p[i]);
        }
        
    }
    
    public void paint(Graphics g){
        g.drawImage(buffer, 0,0,Graphics.TOP|Graphics.LEFT);
//        g.drawImage(buffer, 0,0,Graphics.TOP|Graphics.LEFT);
        
//        g.fillRect(0,0,h,w);
        
    }
    
    public void pointerReleased(int x,int y){
        int n=getpos(x,y);
        if(p[n]==2)
		     {
                         p[n]=5;
                         gr.setColor(255, 0, 0);
                         gr.fillArc(x,y,30,30,0,360);
                         gr.setColor(0, 0, 0);
                         gr.drawString(String.valueOf(n), x, y,Graphics.TOP|Graphics.LEFT);
                         chk_hum_won();
                         int cmove=com_move();
                         p[cmove]=3;
                         
//                         gr.fillRect(0, 3*cw, 20, 20);
//                         gr.setColor(0, 0, 255);
//                         gr.drawString(String.valueOf(cmove), 0, 3*cw,Graphics.TOP|Graphics.LEFT);
                         
                         prnt(cmove);
                         
                         chk_com_won();
                         if(chk_draw()==1){
                             alert("It's a draw...");
                         }
                         repaint();
        
                     }
        
    }
    
    public void pointerDragged(int x,int y){
//        int n=getpos(x,y);
//        if(p[n]==2)
//		     {
//                         p[n]=5;
//                         gr.setColor(255, 0, 0);
//                         gr.fillArc(x,y,20,20,0,360);
//                         chk_hum_won();
//                         int cmove=com_move();
//                         p[cmove]=3;
//                         
//                         gr.fillRect(0, 3*cw, 20, 20);
//                         gr.setColor(0, 0, 255);
//                         gr.drawString(String.valueOf(cmove), 0, 3*cw,Graphics.TOP|Graphics.LEFT);
//                         
//                         prnt(cmove);
//                         
//                         chk_com_won();
//                         if(chk_draw()==1){
//                             alert("It's a draw...");
//                         }
//                         repaint();
//        
//                     }
//        else if(p[n]==5){
//            gr.setColor(255, 0, 0);
//                         gr.fillArc(x,y,10,10,0,360);
//        }
    }
    
    int getpos(int x,int y){
        int ax=x/70;
        int ay=y/70;
        
        switch(ax){
            case 0:
                switch(ay){
                    case 0:
                        return 1;
                    case 1:
                        return 4;
                    case 2:
                        return 7;
                }
            case 1:
                switch(ay){
                    case 0:
                        return 2;
                    case 1:
                        return 5;
                    case 2:
                        return 8;
                }
              case 2:
                switch(ay){
                    case 0:
                        return 3;
                    case 1:
                        return 6;
                    case 2:
                        return 9;
                }
        }
        
        return 0;
    }
    
    void prnt(int n){
        int x=0,y=0;
        switch(n){
            case 1:
                x=hcw;
                y=hcw;
                break;
            case 2:
                x=hcw+cw;
                y=hcw;
                break;
            case 3:
                x=hcw+2*cw;
                y=hcw;
                break;
            case 4:
                x=hcw;
                y=hcw+cw;
                break;
            case 5:
                x=hcw+cw;
                y=hcw+cw;
                break;
            case 6:
                x=hcw+2*cw;
                y=hcw+cw;
                break;
            case 7:
                x=hcw;
                y=hcw+2*cw;
                break;
            case 8:
                x=hcw+cw;
                y=hcw+2*cw;
                break;
            case 9:
                x=hcw+2*cw;
                y=hcw+2*cw;
                break;
        }
        gr.setColor(0, 255, 0);
        gr.fillArc(x,y,30,30,0,360);
        gr.setColor(0,0,0);
        gr.drawString(String.valueOf(n), x, y,Graphics.TOP|Graphics.LEFT);
        repaint();
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
                          alert("I won! ;)");
//                          st.setText(st.getText()+"\nI won");
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
                          alert("Great! You won! :)");
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

    int com_move(){
    if(chk_com_win()!=0){
         return chk_com_win();
         
         }
    else if(chk_hum_win()!=0){
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
         alert("It's a draw...");

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
           return -1;
}
    
    void alert(String msg){
         
         gr.setColor(0, 0, 255);
         Font fnt=Font.getFont(Font.FACE_SYSTEM, Font.STYLE_BOLD, Font.SIZE_LARGE);
         gr.setFont(fnt);
         gr.drawString(msg, w/2, h/2,Graphics.HCENTER|Graphics.BASELINE);
         repaint();
    }
}