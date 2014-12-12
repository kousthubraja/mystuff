/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

import javax.microedition.lcdui.*;
import java.lang.Math;

/**
 * @author Kousthub
 */
public class Graph extends Canvas implements CommandListener {
    /**
     * constructor
     */
    
    
    public Graph() {
        
        try {
	    // Set up this canvas to listen to command events
	    setCommandListener(this);
	    // Add the Exit command
	    addCommand(new Command("Exit", Command.EXIT, 1));
        } catch(Exception e) {
            e.printStackTrace();
        }
    } 
    
    /**
     * paint
     */
    public void paint(Graphics g) {
        int width,height;
        width=getWidth();
        height=getHeight();
        g.setColor(0,0,0);
        
        g.fillRect(0, 0, width, height);
        g.setColor(255,255,255);
        g.drawLine(width/2, 0, width/2, height);
        g.drawLine(0, height/2, width, height/2);
        
        g.translate(width/2,height/2 );
        g.setColor(0,255,0);
        
        
        int x=0;
        int y;
        
        for(x=-width/2;x<=width/2;x++){
            y=-x/2;
            g.drawLine(x, y, x, y);
        }
        
                
    }
    
    /**
     * Called when a key is pressed.
     */
    protected  void keyPressed(int keyCode) {
    }
    
    /**
     * Called when a key is released.
     */
    protected  void keyReleased(int keyCode) {
    }

    /**
     * Called when a key is repeated (held down).
     */
    protected  void keyRepeated(int keyCode) {
    }
    
    /**
     * Called when the pointer is dragged.
     */
    protected  void pointerDragged(int x, int y) {
    }

    /**
     * Called when the pointer is pressed.
     */
    protected  void pointerPressed(int x, int y) {
    }

    /**
     * Called when the pointer is released.
     */
    protected  void pointerReleased(int x, int y) {
    }
    
    /**
     * Called when action should be handled
     */
    public void commandAction(Command command, Displayable displayable) {

    }

}