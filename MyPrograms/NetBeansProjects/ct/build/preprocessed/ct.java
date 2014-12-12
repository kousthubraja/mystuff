/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;

/**
 * @author Kousthub
 */
public class ct extends MIDlet {
    can c=new can();
    
    public void startApp() {
        Display.getDisplay(this).setCurrent(c);
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}

class can extends Canvas {
    int w=getWidth();
    int h=getHeight();
    int cw=w/3;
    int ox=0,oy=0;
    Image buffer;
    Graphics gr;
    
    public can(){
        buffer=Image.createImage(w, h);
        gr=buffer.getGraphics();
        gr.setGrayScale(255);
        gr.drawRect(0,0,w,h);
        gr.setGrayScale(0);
    }
    
    public void paint(Graphics g){
//        g.drawImage(buffer, 0,0,Graphics.TOP|Graphics.LEFT);
//        g.drawImage(buffer, 0,0,Graphics.TOP|Graphics.LEFT);
        g.setGrayScale(255);
        g.fillRect(0,0,w,h);
        g.setGrayScale(0);
        g.drawLine(cw,0,cw,cw*3);
        g.drawLine(2*cw,0,2*cw,cw*3);
        g.drawLine(3*cw,0,3*cw,cw*3);
        
        g.drawLine(0,cw,3*cw,cw);
        g.drawLine(0,2*cw,3*cw,cw*2);
        g.drawLine(0,3*cw,3*cw,cw*3);
        
        
        
        g.drawString(String.valueOf(ox)+"  "+String.valueOf(oy)+"  "+String.valueOf(getpos(ox,oy)), ox,oy, Graphics.TOP|Graphics.LEFT);
    }
    
    public void pointerReleased(int x,int y){
//        gr.fillArc(x,y,10,10,0,360);
        ox=x;
        oy=y;
        repaint();
        
    }
    
    public void pointerDragged(int x,int y){
        gr.fillArc(x,y,10,10,0,360);
        repaint();
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
}
