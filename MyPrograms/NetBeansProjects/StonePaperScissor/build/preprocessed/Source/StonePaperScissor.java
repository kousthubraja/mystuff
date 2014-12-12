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
public class StonePaperScissor extends MIDlet implements ItemStateListener{
    
    Form frm;
    Display disp;
    ChoiceGroup ch;
    
    public void startApp() {
        frm=new Form("frm");
        disp=Display.getDisplay(this);
        ch=new ChoiceGroup("Choice",1);
        ch.append("Stone", null);
        ch.append("Paper", null);
        ch.append("Scissors", null);
        frm.append(ch);
        
        frm.setItemStateListener(this);
        
        disp.setCurrent(frm);
    }
    

    public void itemStateChanged(Item i){
        frm.setTitle(ch.getString(ch.getSelectedIndex()));
    }
    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}
