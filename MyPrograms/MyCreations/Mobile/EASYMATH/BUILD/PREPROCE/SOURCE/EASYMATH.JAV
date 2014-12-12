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
public class easyMaths extends MIDlet implements CommandListener {

    private boolean midletPaused = false;

    //<editor-fold defaultstate="collapsed" desc=" Generated Fields ">//GEN-BEGIN:|fields|0|
    private Form mainForm;
    private Form lineareqn;
    private Form lcm;
    private TextField textField;
    private TextField textField1;
    private TextField textField4;
    private TextField textField3;
    private TextField textField2;
    private Form hcf;
    private Form quadratic;
    private Form splitmiddle;
    private Command exitCommand;
    private Command screenCommand;
    private Command screenCommand1;
    private Command screenCommand2;
    private Command screenCommand4;
    private Command screenCommand3;
    private Command screenCommand5;
    private Command okCommand;
    //</editor-fold>//GEN-END:|fields|0|

    /**
     * The easyMaths constructor.
     */
    public easyMaths() {
    }

    //<editor-fold defaultstate="collapsed" desc=" Generated Methods ">//GEN-BEGIN:|methods|0|
    //</editor-fold>//GEN-END:|methods|0|

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: initialize ">//GEN-BEGIN:|0-initialize|0|0-preInitialize
    /**
     * Initilizes the application.
     * It is called only once when the MIDlet is started. The method is called before the <code>startMIDlet</code> method.
     */
    private void initialize() {//GEN-END:|0-initialize|0|0-preInitialize
        // write pre-initialize user code here
//GEN-LINE:|0-initialize|1|0-postInitialize
        // write post-initialize user code here
    }//GEN-BEGIN:|0-initialize|2|
    //</editor-fold>//GEN-END:|0-initialize|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: startMIDlet ">//GEN-BEGIN:|3-startMIDlet|0|3-preAction
    /**
     * Performs an action assigned to the Mobile Device - MIDlet Started point.
     */
    public void startMIDlet() {//GEN-END:|3-startMIDlet|0|3-preAction
        // write pre-action user code here
        switchDisplayable(null, getMainForm());//GEN-LINE:|3-startMIDlet|1|3-postAction
        // write post-action user code here
    }//GEN-BEGIN:|3-startMIDlet|2|
    //</editor-fold>//GEN-END:|3-startMIDlet|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: resumeMIDlet ">//GEN-BEGIN:|4-resumeMIDlet|0|4-preAction
    /**
     * Performs an action assigned to the Mobile Device - MIDlet Resumed point.
     */
    public void resumeMIDlet() {//GEN-END:|4-resumeMIDlet|0|4-preAction
        // write pre-action user code here
//GEN-LINE:|4-resumeMIDlet|1|4-postAction
        // write post-action user code here
    }//GEN-BEGIN:|4-resumeMIDlet|2|
    //</editor-fold>//GEN-END:|4-resumeMIDlet|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: switchDisplayable ">//GEN-BEGIN:|5-switchDisplayable|0|5-preSwitch
    /**
     * Switches a current displayable in a display. The <code>display</code> instance is taken from <code>getDisplay</code> method. This method is used by all actions in the design for switching displayable.
     * @param alert the Alert which is temporarily set to the display; if <code>null</code>, then <code>nextDisplayable</code> is set immediately
     * @param nextDisplayable the Displayable to be set
     */
    public void switchDisplayable(Alert alert, Displayable nextDisplayable) {//GEN-END:|5-switchDisplayable|0|5-preSwitch
        // write pre-switch user code here
        Display display = getDisplay();//GEN-BEGIN:|5-switchDisplayable|1|5-postSwitch
        if (alert == null) {
            display.setCurrent(nextDisplayable);
        } else {
            display.setCurrent(alert, nextDisplayable);
        }//GEN-END:|5-switchDisplayable|1|5-postSwitch
        // write post-switch user code here
    }//GEN-BEGIN:|5-switchDisplayable|2|
    //</editor-fold>//GEN-END:|5-switchDisplayable|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: mainForm ">//GEN-BEGIN:|16-getter|0|16-preInit
    /**
     * Returns an initiliazed instance of mainForm component.
     * @return the initialized component instance
     */
    public Form getMainForm() {
        if (mainForm == null) {//GEN-END:|16-getter|0|16-preInit
            // write pre-init user code here
            mainForm = new Form("easyMaths!");//GEN-BEGIN:|16-getter|1|16-postInit
            mainForm.addCommand(getExitCommand());
            mainForm.addCommand(getScreenCommand());
            mainForm.addCommand(getScreenCommand1());
            mainForm.addCommand(getScreenCommand2());
            mainForm.addCommand(getScreenCommand3());
            mainForm.addCommand(getScreenCommand4());
            mainForm.setCommandListener(this);//GEN-END:|16-getter|1|16-postInit
            // write post-init user code here
        }//GEN-BEGIN:|16-getter|2|
        return mainForm;
    }
    //</editor-fold>//GEN-END:|16-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: commandAction for Displayables ">//GEN-BEGIN:|7-commandAction|0|7-preCommandAction
    /**
     * Called by a system to indicated that a command has been invoked on a particular displayable.
     * @param command the Command that was invoked
     * @param displayable the Displayable where the command was invoked
     */
    public void commandAction(Command command, Displayable displayable) {//GEN-END:|7-commandAction|0|7-preCommandAction
        // write pre-action user code here
        if (displayable == lcm) {//GEN-BEGIN:|7-commandAction|1|49-preAction
            if (command == okCommand) {//GEN-END:|7-commandAction|1|49-preAction
                findlcm();
//GEN-LINE:|7-commandAction|2|49-postAction
                // write post-action user code here
            } else if (command == screenCommand5) {//GEN-LINE:|7-commandAction|3|51-preAction
                // write pre-action user code here
                switchDisplayable(null, getMainForm());//GEN-LINE:|7-commandAction|4|51-postAction
                // write post-action user code here
            }//GEN-BEGIN:|7-commandAction|5|19-preAction
        } else if (displayable == mainForm) {
            if (command == exitCommand) {//GEN-END:|7-commandAction|5|19-preAction
                // write pre-action user code here
                exitMIDlet();//GEN-LINE:|7-commandAction|6|19-postAction
                // write post-action user code here
            } else if (command == screenCommand) {//GEN-LINE:|7-commandAction|7|28-preAction
                // write pre-action user code here
                switchDisplayable(null, getLcm());//GEN-LINE:|7-commandAction|8|28-postAction
                // write post-action user code here
            } else if (command == screenCommand1) {//GEN-LINE:|7-commandAction|9|30-preAction
                // write pre-action user code here
                switchDisplayable(null, getLineareqn());//GEN-LINE:|7-commandAction|10|30-postAction
                // write post-action user code here
            } else if (command == screenCommand2) {//GEN-LINE:|7-commandAction|11|32-preAction
                // write pre-action user code here
                switchDisplayable(null, getQuadratic());//GEN-LINE:|7-commandAction|12|32-postAction
                // write post-action user code here
            } else if (command == screenCommand3) {//GEN-LINE:|7-commandAction|13|34-preAction
                // write pre-action user code here
                switchDisplayable(null, getSplitmiddle());//GEN-LINE:|7-commandAction|14|34-postAction
                // write post-action user code here
            } else if (command == screenCommand4) {//GEN-LINE:|7-commandAction|15|36-preAction
                // write pre-action user code here
                switchDisplayable(null, getHcf());//GEN-LINE:|7-commandAction|16|36-postAction
                // write post-action user code here
            }//GEN-BEGIN:|7-commandAction|17|7-postCommandAction
        }//GEN-END:|7-commandAction|17|7-postCommandAction
        // write post-action user code here
    }//GEN-BEGIN:|7-commandAction|18|
    //</editor-fold>//GEN-END:|7-commandAction|18|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: lcm ">//GEN-BEGIN:|22-getter|0|22-preInit
    /**
     * Returns an initiliazed instance of lcm component.
     * @return the initialized component instance
     */
    public Form getLcm() {
        if (lcm == null) {//GEN-END:|22-getter|0|22-preInit
            // write pre-init user code here
            lcm = new Form("LCM Finder", new Item[] { getTextField(), getTextField1(), getTextField2(), getTextField3(), getTextField4() });//GEN-BEGIN:|22-getter|1|22-postInit
            lcm.addCommand(getOkCommand());
            lcm.addCommand(getScreenCommand5());
            lcm.setCommandListener(this);//GEN-END:|22-getter|1|22-postInit
            // write post-init user code here
        }//GEN-BEGIN:|22-getter|2|
        return lcm;
    }
    //</editor-fold>//GEN-END:|22-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: lineareqn ">//GEN-BEGIN:|23-getter|0|23-preInit
    /**
     * Returns an initiliazed instance of lineareqn component.
     * @return the initialized component instance
     */
    public Form getLineareqn() {
        if (lineareqn == null) {//GEN-END:|23-getter|0|23-preInit
            // write pre-init user code here
            lineareqn = new Form("form");//GEN-LINE:|23-getter|1|23-postInit
            // write post-init user code here
        }//GEN-BEGIN:|23-getter|2|
        return lineareqn;
    }
    //</editor-fold>//GEN-END:|23-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: quadratic ">//GEN-BEGIN:|24-getter|0|24-preInit
    /**
     * Returns an initiliazed instance of quadratic component.
     * @return the initialized component instance
     */
    public Form getQuadratic() {
        if (quadratic == null) {//GEN-END:|24-getter|0|24-preInit
            // write pre-init user code here
            quadratic = new Form("form");//GEN-LINE:|24-getter|1|24-postInit
            // write post-init user code here
        }//GEN-BEGIN:|24-getter|2|
        return quadratic;
    }
    //</editor-fold>//GEN-END:|24-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: hcf ">//GEN-BEGIN:|25-getter|0|25-preInit
    /**
     * Returns an initiliazed instance of hcf component.
     * @return the initialized component instance
     */
    public Form getHcf() {
        if (hcf == null) {//GEN-END:|25-getter|0|25-preInit
            // write pre-init user code here
            hcf = new Form("form");//GEN-LINE:|25-getter|1|25-postInit
            // write post-init user code here
        }//GEN-BEGIN:|25-getter|2|
        return hcf;
    }
    //</editor-fold>//GEN-END:|25-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: splitmiddle ">//GEN-BEGIN:|26-getter|0|26-preInit
    /**
     * Returns an initiliazed instance of splitmiddle component.
     * @return the initialized component instance
     */
    public Form getSplitmiddle() {
        if (splitmiddle == null) {//GEN-END:|26-getter|0|26-preInit
            // write pre-init user code here
            splitmiddle = new Form("form");//GEN-LINE:|26-getter|1|26-postInit
            // write post-init user code here
        }//GEN-BEGIN:|26-getter|2|
        return splitmiddle;
    }
    //</editor-fold>//GEN-END:|26-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: exitCommand ">//GEN-BEGIN:|18-getter|0|18-preInit
    /**
     * Returns an initiliazed instance of exitCommand component.
     * @return the initialized component instance
     */
    public Command getExitCommand() {
        if (exitCommand == null) {//GEN-END:|18-getter|0|18-preInit
            // write pre-init user code here
            exitCommand = new Command("Exit", Command.EXIT, 0);//GEN-LINE:|18-getter|1|18-postInit
            // write post-init user code here
        }//GEN-BEGIN:|18-getter|2|
        return exitCommand;
    }
    //</editor-fold>//GEN-END:|18-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand ">//GEN-BEGIN:|27-getter|0|27-preInit
    /**
     * Returns an initiliazed instance of screenCommand component.
     * @return the initialized component instance
     */
    public Command getScreenCommand() {
        if (screenCommand == null) {//GEN-END:|27-getter|0|27-preInit
            // write pre-init user code here
            screenCommand = new Command("LCM", Command.SCREEN, 0);//GEN-LINE:|27-getter|1|27-postInit
            // write post-init user code here
        }//GEN-BEGIN:|27-getter|2|
        return screenCommand;
    }
    //</editor-fold>//GEN-END:|27-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand1 ">//GEN-BEGIN:|29-getter|0|29-preInit
    /**
     * Returns an initiliazed instance of screenCommand1 component.
     * @return the initialized component instance
     */
    public Command getScreenCommand1() {
        if (screenCommand1 == null) {//GEN-END:|29-getter|0|29-preInit
            // write pre-init user code here
            screenCommand1 = new Command("Linear Equation", Command.SCREEN, 0);//GEN-LINE:|29-getter|1|29-postInit
            // write post-init user code here
        }//GEN-BEGIN:|29-getter|2|
        return screenCommand1;
    }
    //</editor-fold>//GEN-END:|29-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand2 ">//GEN-BEGIN:|31-getter|0|31-preInit
    /**
     * Returns an initiliazed instance of screenCommand2 component.
     * @return the initialized component instance
     */
    public Command getScreenCommand2() {
        if (screenCommand2 == null) {//GEN-END:|31-getter|0|31-preInit
            // write pre-init user code here
            screenCommand2 = new Command("Quadratic Equation", Command.SCREEN, 0);//GEN-LINE:|31-getter|1|31-postInit
            // write post-init user code here
        }//GEN-BEGIN:|31-getter|2|
        return screenCommand2;
    }
    //</editor-fold>//GEN-END:|31-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand3 ">//GEN-BEGIN:|33-getter|0|33-preInit
    /**
     * Returns an initiliazed instance of screenCommand3 component.
     * @return the initialized component instance
     */
    public Command getScreenCommand3() {
        if (screenCommand3 == null) {//GEN-END:|33-getter|0|33-preInit
            // write pre-init user code here
            screenCommand3 = new Command("Split Middle", Command.SCREEN, 0);//GEN-LINE:|33-getter|1|33-postInit
            // write post-init user code here
        }//GEN-BEGIN:|33-getter|2|
        return screenCommand3;
    }
    //</editor-fold>//GEN-END:|33-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand4 ">//GEN-BEGIN:|35-getter|0|35-preInit
    /**
     * Returns an initiliazed instance of screenCommand4 component.
     * @return the initialized component instance
     */
    public Command getScreenCommand4() {
        if (screenCommand4 == null) {//GEN-END:|35-getter|0|35-preInit
            // write pre-init user code here
            screenCommand4 = new Command("Screen", Command.SCREEN, 0);//GEN-LINE:|35-getter|1|35-postInit
            // write post-init user code here
        }//GEN-BEGIN:|35-getter|2|
        return screenCommand4;
    }
    //</editor-fold>//GEN-END:|35-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: textField ">//GEN-BEGIN:|43-getter|0|43-preInit
    /**
     * Returns an initiliazed instance of textField component.
     * @return the initialized component instance
     */
    public TextField getTextField() {
        if (textField == null) {//GEN-END:|43-getter|0|43-preInit
            // write pre-init user code here
            textField = new TextField("Number 1 :", "", 32, TextField.ANY);//GEN-LINE:|43-getter|1|43-postInit
            // write post-init user code here
        }//GEN-BEGIN:|43-getter|2|
        return textField;
    }
    //</editor-fold>//GEN-END:|43-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: textField1 ">//GEN-BEGIN:|44-getter|0|44-preInit
    /**
     * Returns an initiliazed instance of textField1 component.
     * @return the initialized component instance
     */
    public TextField getTextField1() {
        if (textField1 == null) {//GEN-END:|44-getter|0|44-preInit
            // write pre-init user code here
            textField1 = new TextField("Number 2 :", "", 32, TextField.ANY);//GEN-LINE:|44-getter|1|44-postInit
            // write post-init user code here
        }//GEN-BEGIN:|44-getter|2|
        return textField1;
    }
    //</editor-fold>//GEN-END:|44-getter|2|







    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: okCommand ">//GEN-BEGIN:|48-getter|0|48-preInit
    /**
     * Returns an initiliazed instance of okCommand component.
     * @return the initialized component instance
     */
    public Command getOkCommand() {
        if (okCommand == null) {//GEN-END:|48-getter|0|48-preInit
            // write pre-init user code here
            okCommand = new Command("Find", Command.OK, 0);//GEN-LINE:|48-getter|1|48-postInit
            // write post-init user code here
        }//GEN-BEGIN:|48-getter|2|
        return okCommand;
    }
    //</editor-fold>//GEN-END:|48-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: screenCommand5 ">//GEN-BEGIN:|50-getter|0|50-preInit
    /**
     * Returns an initiliazed instance of screenCommand5 component.
     * @return the initialized component instance
     */
    public Command getScreenCommand5() {
        if (screenCommand5 == null) {//GEN-END:|50-getter|0|50-preInit
            // write pre-init user code here
            screenCommand5 = new Command("Back", Command.SCREEN, 0);//GEN-LINE:|50-getter|1|50-postInit
            // write post-init user code here
        }//GEN-BEGIN:|50-getter|2|
        return screenCommand5;
    }
    //</editor-fold>//GEN-END:|50-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: textField2 ">//GEN-BEGIN:|53-getter|0|53-preInit
    /**
     * Returns an initiliazed instance of textField2 component.
     * @return the initialized component instance
     */
    public TextField getTextField2() {
        if (textField2 == null) {//GEN-END:|53-getter|0|53-preInit
            // write pre-init user code here
            textField2 = new TextField("Number 3 :", "1", 32, TextField.ANY);//GEN-LINE:|53-getter|1|53-postInit
            // write post-init user code here
        }//GEN-BEGIN:|53-getter|2|
        return textField2;
    }
    //</editor-fold>//GEN-END:|53-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: textField3 ">//GEN-BEGIN:|54-getter|0|54-preInit
    /**
     * Returns an initiliazed instance of textField3 component.
     * @return the initialized component instance
     */
    public TextField getTextField3() {
        if (textField3 == null) {//GEN-END:|54-getter|0|54-preInit
            // write pre-init user code here
            textField3 = new TextField("Number 4 :", "1", 32, TextField.ANY);//GEN-LINE:|54-getter|1|54-postInit
            // write post-init user code here
        }//GEN-BEGIN:|54-getter|2|
        return textField3;
    }
    //</editor-fold>//GEN-END:|54-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: textField4 ">//GEN-BEGIN:|55-getter|0|55-preInit
    /**
     * Returns an initiliazed instance of textField4 component.
     * @return the initialized component instance
     */
    public TextField getTextField4() {
        if (textField4 == null) {//GEN-END:|55-getter|0|55-preInit
            // write pre-init user code here
            textField4 = new TextField("Number 5 :", "1", 32, TextField.ANY);//GEN-LINE:|55-getter|1|55-postInit
            // write post-init user code here
        }//GEN-BEGIN:|55-getter|2|
        return textField4;
    }
    //</editor-fold>//GEN-END:|55-getter|2|

    /**
     * Returns a display instance.
     * @return the display instance.
     */
    public Display getDisplay () {
        return Display.getDisplay(this);
    }

    /**
     * Exits MIDlet.
     */
    public void exitMIDlet() {
        switchDisplayable (null, null);
        destroyApp(true);
        notifyDestroyed();
    }

    /**
     * Called when MIDlet is started.
     * Checks whether the MIDlet have been already started and initialize/starts or resumes the MIDlet.
     */
    public void startApp() {
        if (midletPaused) {
            resumeMIDlet ();
        } else {
            initialize ();
            startMIDlet ();
        }
        midletPaused = false;
    }

    /**
     * Called when MIDlet is paused.
     */
    public void pauseApp() {
        midletPaused = true;
    }

    /**
     * Called to signal the MIDlet to terminate.
     * @param unconditional if true, then the MIDlet has to be unconditionally terminated and all resources has to be released.
     */
    public void destroyApp(boolean unconditional) {
    }
    
    void findlcm(){
        textField.setString("0");
    }

}
