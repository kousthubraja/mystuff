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
public class AsQ extends MIDlet implements CommandListener,Runnable{
    private String url;
    private Thread th;
    private String qus,res;
    private String s="";
    private StringItem question,answer;
    private int firstrun=1;
    
    Form form;
    TextField q_text;
    Command ok;
    
    public AsQ(){
        form=new Form("AsQ");
        q_text=new TextField("", "", 10, 1);
        ok=new  Command("Ok",Command.OK,1);
        
        question=new StringItem("I guess you asked :","");
        answer=new StringItem("I think it is :","");
        
        Display.getDisplay(this).setCurrent(form);
        form.addCommand(ok);
        form.append(q_text);
        form.setCommandListener(this);
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
        String inp=q_text.getString();
        StringBuffer inpb;
        inpb=new StringBuffer(inp);
        if(inp.indexOf('+')!=-1){
            
            int i,j;
            for(i=0;i<inpb.length();i++){
                
                if(inpb.charAt(i)=='+'){
                   inpb.deleteCharAt(i);
                   inpb.insert(i, "%2B");
                    
                }
            }
            
        }
        inp=inpb.toString();            
        inp="http://m.wolframalpha.com/input/?i="+inp+"&x=0&y=0";
        inp=inp.replace(' ', '+');
        
        url=inp;
    }

    public void execute(){
        
        formaturl();
        // form.delete(2);

//        url="";
//        qus="";
//        res="";
//        s="";
//        question.setText("");
//        answer.setText("");
        
        System.out.println(url);
        th=new Thread(this);
        th.start();
        question=new StringItem("I guess you asked :","");
        answer=new StringItem("I think it is :","");
        
        
        
    }
    
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
                    
                    
                    if(firstrun==1)
                    {
                        form.append(question);
                        form.append(answer);
                        firstrun=0;
                    }
                    
                    question.setText(qus);
                    answer.setText(res);
                    
                    
                    
                    
                    is.close();
                    sc.close();
                 
                }catch(Exception e){System.out.println(e.toString());}
    }
    
    public void commandAction(Command c,Displayable d){
        execute();
    }
    public void startApp() {
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}
