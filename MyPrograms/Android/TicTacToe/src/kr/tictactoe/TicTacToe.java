package kr.tictactoe;

import android.app.Activity;
import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Paint;
import android.os.Bundle;
import android.view.Menu;
import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;

public class TicTacToe extends Activity implements OnTouchListener{

	int x,y;
	int cw;
	int hcw;
	int[] p=new int[11];
	String msg=null;
	
	@Override
	protected void onCreate(Bundle savedInstanceState) {
		super.onCreate(savedInstanceState);
//		setContentView(R.layout.activity_tic_tac_toe);
		
		MyCanvas canv=new MyCanvas(this);
		setContentView(canv);
		canv.setOnTouchListener(this);
	}

	@Override
	public boolean onCreateOptionsMenu(Menu menu) {
		// Inflate the menu; this adds items to the action bar if it is present.
		getMenuInflater().inflate(R.menu.tic_tac_toe, menu);
		return true;
	}
	
	public class MyCanvas extends View{

		public MyCanvas(Context context) {
			super(context);

			int i;
	        for(i=1;i<=9;i++){
	            p[i]=2;
	        }
		}

		@Override
		public void draw(Canvas gr) {
			int w,h;
			w=gr.getWidth();
			cw=w/3;
			hcw=cw/2;
		    
			Paint paint=new Paint();
			paint.setStyle(Paint.Style.FILL);
			paint.setColor(Color.BLUE);
			
			gr.drawLine(cw,0,cw,cw*3,paint);
	        gr.drawLine(2*cw,0,2*cw,cw*3,paint);
	        gr.drawLine(3*cw,0,3*cw,cw*3,paint);
	        
	        gr.drawLine(0,cw,3*cw,cw,paint);
	        gr.drawLine(0,2*cw,3*cw,cw*2,paint);
	        gr.drawLine(0,3*cw,3*cw,cw*3,paint);
			
			
			
			
	        for(int i=1;i<=9;i++){
	        	int val=p[i];
	            if(val!=2){
	            	float cx,cy;
	            	int[] coord=new int[2];
	            	coord=pos_to_coord(i);
	            	cx=coord[0];
	            	cy=coord[1];
	            	if(val==3){
	            		paint.setColor(Color.GREEN);
	            		gr.drawCircle(cx, cy, 30, paint);
	            	}
	            	else{
	            		paint.setColor(Color.RED);
	            		gr.drawCircle(cx, cy, 30, paint);
	            	}
	            		
	            }
	            
	        }
	        
	        if(msg!=null){
	        	paint.setTextSize(20);
	        	gr.drawText(msg, cw, 3*cw+hcw, paint);
	        }
			
			super.draw(gr);
		}
		
		
	}
	
	int getpos(int x,int y){
        int ax=x/cw;
        int ay=y/cw;
        
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
	
	int[] pos_to_coord(int n){
        int[] coord=new int[2];
        int tx=0,ty=0;
        
        switch(n){
        case 1:case 4: case 7:
        	tx=hcw;break;
        case 2:case 5:case 8:
        	tx=hcw+cw;break;
        case 3:case 6: case 9:
        	tx=2*cw+hcw;
        }
        
        switch(n){
        case 1:case 2: case 3:
        	ty=hcw;break;
        case 4:case 5:case 6:
        	ty=hcw+cw;break;
        case 7:case 8: case 9:
        	ty=2*cw+hcw;
        }
        
        coord[0]=tx;
        coord[1]=ty;
        
		return coord;
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
//	                          alert("I won! ;)");
	    		msg="I won! ;)";
//	                          st.setText(st.getText()+"\nI won");
//				  cout<<"\nHooo I Won the match!!! ;) Better luck next time.";
//				  cout<<"\nPress any key...";
//				  getch();
//				  exit(0);
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
//	                          alert("Great! You won! :)");
	    		msg="Great! You won! :)";
//	                          st.setText(st.getText()+"\nYou won");
//	                          cout<<"\nUmm you Won the match, brilliant!!! ;) :P";
//	                          cout<<"\nPress any key...";
//	                          getch();
//				  exit(0);
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
//	         alert("It's a draw...");
	    	msg="It's a draw...";
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
	    
	@Override
	public boolean onTouch(View view, MotionEvent event) {
		x=(int)event.getX();
		y=(int)event.getY();
		
		int n=getpos(x,y);
        if(p[n]==2 && msg==null)
		     {
                         p[n]=5;
                         
                         chk_hum_won();
                         int cmove=com_move();
                         p[cmove]=3;
                         
//                         gr.fillRect(0, 3*cw, 20, 20);
//                         gr.setColor(0, 0, 255);
//                         gr.drawString(String.valueOf(cmove), 0, 3*cw,Graphics.TOP|Graphics.LEFT);
                         
//                         prnt(cmove);
                         
                         chk_com_won();
                         if(chk_draw()==1){
//                             alert("It's a draw...");
                         }
                         view.invalidate();
        
                     }
        
		
		return false;
	}

}

