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
public class Lines extends MIDlet {
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
    int w,h;
    int c;
    int start=0;
    int ox=0,oy=0;
    
    public canv(){
        setFullScreenMode(true);
        w=getWidth();
        h=getHeight();
        c=w/10;
//        thick=5;
        buffer=Image.createImage(w, h);
        gr=buffer.getGraphics();
        gr.setColor(0,0,0);
        gr.fillRect(0,0,w,h);
        gr.setColor(0,255,0);
    }
    public void paint(Graphics g){
        
        g.drawImage(buffer, 0, 0, Graphics.TOP|Graphics.LEFT);
        //g.drawLine(0,0,100,100);
    }
    public void pointerReleased(int x,int y){
        x=snap(x);
        y=snap(y);
        gr.drawLine(ox, oy, x, y);
        repaint();
    }
    public void keyReleased(int key){
        System.out.println(key);
        if(key==48){
            gr.setColor(0,0,0);
            gr.fillRect(0,0,w,h);
            gr.setColor(0,255,0);
            repaint();
        }
        else if(key==49){
            c*=2;
        }
        else if(key==50){
            c/=2;
        }
    }
    
    public void pointerPressed(int x,int y){
        x=snap(x);
        y=snap(y);
        ox=x;
        oy=y;
    }
    
    int snap(int x){
        int dx=x%c;
        int y=x;
        
//        if(dx>=c/2){
//            y+=dx;
//        }
//        else{
//            y-=dx;
//        }
        y-=dx;
        return y;
        
    }
    
    
}

