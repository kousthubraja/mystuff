/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

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
    
    Image buffer;
    Graphics gr;
    
    public can(){
        buffer=Image.createImage(w, h);
        gr=buffer.getGraphics();
        gr.setColor(255);
        gr.drawRect(0,0,w,h);
        gr.setColor(0);
    }
    
    public void paint(Graphics g){
        g.drawImage(buffer, 0,0,Graphics.TOP|Graphics.LEFT);
    }
    
    public void pointerReleased(int x,int y){
        gr.drawArc(x,y,10,10,0,10);
        repaint();
        
    }
//    
//    public void pointerDragged(int x,int y){
//        gr.drawArc(x,y,10,10,0,10);
//        repaint();
//    }
}
