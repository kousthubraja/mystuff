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
public class Paint extends MIDlet {
    canv main;
    
    public void startApp() {
        main=new canv();
        Display.getDisplay(this).setCurrent(main);
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}

class canv extends Canvas{
    
    Image buffer;
    Graphics gr;
    int w;
    int h;
    int thick;
    int ox=0,oy=0;
    int clipx=0,clipy=0;
    
    public canv(){
        w=getWidth();
        h=getHeight();
        thick=5;
        setFullScreenMode(true);
        buffer=Image.createImage(w, h);
        gr=buffer.getGraphics();
        gr.setColor(255,255,255);
        gr.fillRect(0,0,w,h);
        gr.setColor(0,0,0);
    }
    public void paint(Graphics g){
        
        g.setClip(clipx,clipy,20,20);
        g.drawImage(buffer, 0, 0, Graphics.TOP|Graphics.LEFT);
        //g.drawLine(0,0,100,100);
    }
    public void pointerReleased(int x,int y){
        if(ox==0){
            ox=x;
            oy=y;
        }
        gr.drawLine(ox, oy, x, y);
        ox=x;
        oy=y;
        repaint();
    }
    
    public void keyReleased(int key){
        if(key==50){
            thick+=1;
        }
        else if(key==49){
            thick-=1;
        }
    }
    
    public void pointerDragged(int x,int y){
        clipx=x-10;
        clipy=y-10;
        gr.drawLine(x, y, oy, oy);
        ox=x;
        oy=y;
        //gr.fillArc(x, y, thick,thick, 0,360);
        repaint();
        
    }
}
