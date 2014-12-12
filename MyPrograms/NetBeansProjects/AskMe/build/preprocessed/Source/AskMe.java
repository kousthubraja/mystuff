/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

package Source;

import javax.microedition.midlet.*;
import javax.microedition.lcdui.*;
import javax.microedition.io.Connector;
import javax.microedition.io.HttpConnection;
import javax.microedition.io.*;
import java.io.*;
/**
 * @author Kousthub
 */
public class AskMe extends MIDlet implements CommandListener, Runnable  {

    private boolean midletPaused = false;
    
    String url;
    Thread th;
    String qus,res;
    private String s="";
    StringItem question,answer;
    
    public void run()
    {
        try
                {
                    HttpConnection sc=(HttpConnection)Connector.open(url);
                    InputStream is = sc.openInputStream();
                    DataInputStream dis=new DataInputStream(is);
                    char c=' ';
                    
                    int lim=0;
                    System.out.println("done");
                    while(c!=-1 && lim<4000){
                        
                        c=(char)dis.read();
                        s=s+String.valueOf(c);
                        lim++;
                    }
                    s.substring(1690);
                    search(s);
                    
                    question.setText(qus);
                    answer.setText(res);
                    form.append(question);
                    form.append(answer);
                    
                    
                    is.close();
                    sc.close();
                 
                }catch(Exception e){System.out.println(e.toString());}
    }
    
    public void search(String str) {
                            
        int start,end;
        int j=str.indexOf("i_0");
        int i=str.indexOf("=",j);
        i+=2;
        start=i;
        j=str.indexOf("\"",i);
        end=j;
        qus=str.substring(start, end);
        
        j=str.indexOf("i_0",end);
        i=str.indexOf("=",j);
        i+=2;
        start=i;
        j=str.indexOf("\"",i);
        end=j;
        res=str.substring(start, end);
        
        
    }
    
    void formaturl(){
        String inp,t1,t2;
        inp=text_quest.getString();
        if(inp.indexOf('+')!=-1){
            int i;
            for(i=0;i<=inp.length()-1;i++){
            if(inp.charAt(i)=='+'){
                System.out.println("found + at "+i);
                t1=inp.substring(0, i);
                t2=inp.substring(i+1, inp.length());
                inp="";
                inp+=t1;
                inp+="%2B";
                inp+=t2;
            }
            
        }
        }
            
        inp="http://m.wolframalpha.com/input/?i="+inp+"&x=0&y=0";
        inp=inp.replace(' ', '+');
        
        url=inp;
    }

    public void clicked(){
        
        formaturl();
        
        System.out.println(url);
        th=new Thread(this);
        th.start();
        
    }
    //<editor-fold defaultstate="collapsed" desc=" Generated Fields ">//GEN-BEGIN:|fields|0|
    private Form form;
    private TextField text_quest;
    private Command okCommand;
    private Ticker ticker;
    //</editor-fold>//GEN-END:|fields|0|

    /**
     * The AskMe constructor.
     */
    public AskMe() {
        
        question=new StringItem("I guess you asked :","");
        answer=new StringItem("I think it is :","");
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
        switchDisplayable(null, getForm());//GEN-LINE:|3-startMIDlet|1|3-postAction
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

    //<editor-fold defaultstate="collapsed" desc=" Generated Method: commandAction for Displayables ">//GEN-BEGIN:|7-commandAction|0|7-preCommandAction
    /**
     * Called by a system to indicated that a command has been invoked on a particular displayable.
     * @param command the Command that was invoked
     * @param displayable the Displayable where the command was invoked
     */
    public void commandAction(Command command, Displayable displayable) {//GEN-END:|7-commandAction|0|7-preCommandAction
        // write pre-action user code here
        if (displayable == form) {//GEN-BEGIN:|7-commandAction|1|17-preAction
            if (command == okCommand) {//GEN-END:|7-commandAction|1|17-preAction
                clicked();
//GEN-LINE:|7-commandAction|2|17-postAction
                // write post-action user code here
            }//GEN-BEGIN:|7-commandAction|3|7-postCommandAction
        }//GEN-END:|7-commandAction|3|7-postCommandAction
        // write post-action user code here
    }//GEN-BEGIN:|7-commandAction|4|
    //</editor-fold>//GEN-END:|7-commandAction|4|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: form ">//GEN-BEGIN:|13-getter|0|13-preInit
    /**
     * Returns an initiliazed instance of form component.
     * @return the initialized component instance
     */
    public Form getForm() {
        if (form == null) {//GEN-END:|13-getter|0|13-preInit
            // write pre-init user code here
            form = new Form("AskMe", new Item[] { getText_quest() });//GEN-BEGIN:|13-getter|1|13-postInit
            form.setTicker(getTicker());
            form.addCommand(getOkCommand());
            form.setCommandListener(this);//GEN-END:|13-getter|1|13-postInit
            // write post-init user code here
        }//GEN-BEGIN:|13-getter|2|
        return form;
    }
    //</editor-fold>//GEN-END:|13-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: text_quest ">//GEN-BEGIN:|18-getter|0|18-preInit
    /**
     * Returns an initiliazed instance of text_quest component.
     * @return the initialized component instance
     */
    public TextField getText_quest() {
        if (text_quest == null) {//GEN-END:|18-getter|0|18-preInit
            // write pre-init user code here
            text_quest = new TextField("Type your question", null, 32, TextField.ANY);//GEN-LINE:|18-getter|1|18-postInit
            // write post-init user code here
        }//GEN-BEGIN:|18-getter|2|
        return text_quest;
    }
    //</editor-fold>//GEN-END:|18-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: okCommand ">//GEN-BEGIN:|16-getter|0|16-preInit
    /**
     * Returns an initiliazed instance of okCommand component.
     * @return the initialized component instance
     */
    public Command getOkCommand() {
        if (okCommand == null) {//GEN-END:|16-getter|0|16-preInit
            // write pre-init user code here
            okCommand = new Command("Ok", Command.OK, 0);//GEN-LINE:|16-getter|1|16-postInit
            // write post-init user code here
        }//GEN-BEGIN:|16-getter|2|
        return okCommand;
    }
    //</editor-fold>//GEN-END:|16-getter|2|

    //<editor-fold defaultstate="collapsed" desc=" Generated Getter: ticker ">//GEN-BEGIN:|19-getter|0|19-preInit
    /**
     * Returns an initiliazed instance of ticker component.
     * @return the initialized component instance
     */
    public Ticker getTicker() {
        if (ticker == null) {//GEN-END:|19-getter|0|19-preInit
            // write pre-init user code here
            ticker = new Ticker("This application is made by Kousthub Raja");//GEN-LINE:|19-getter|1|19-postInit
            // write post-init user code here
        }//GEN-BEGIN:|19-getter|2|
        return ticker;
    }
    //</editor-fold>//GEN-END:|19-getter|2|

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

}
