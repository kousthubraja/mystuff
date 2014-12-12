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
public class Equations extends MIDlet implements CommandListener{
    Display d=Display.getDisplay(this);
    Graph g=new Graph();
    Form f;
    Command cmd;
    
    public void startApp() {
        f=new Form("Plot");
        
        cmd=new Command("Plot",2,1);
        f.addCommand(cmd);
        f.setCommandListener(this);
        d.setCurrent(f);
        
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
    
    public void commandAction(Command c,Displayable disp){
        d.getDisplay(this).setCurrent(g);
        
    }
}
