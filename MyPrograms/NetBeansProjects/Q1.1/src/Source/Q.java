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
public class Q extends MIDlet implements CommandListener,Runnable{
    private String url;
    private Thread th;
    private String qus="",ans="";
    private StringItem question,answer;
    private int firstrun=1;
    private HttpConnection sc;
    private InputStream is;
    private DataInputStream dis;
    private StringBuffer inpb;
    private String str;
    private int start,end;
    private int podindex;

    private Form form;
    private TextField q_text;
    private Command ok;
    private Command more;
    private Command exit;
    private StringItem status;
    
    public Q(){
        form=new Form("Q (By Kousthub Raja)");
        q_text=new TextField("", "", 150, TextField.ANY);
        ok=new  Command("Ok",Command.OK,1);
        more=new  Command("More",Command.OK,2);
        exit=new  Command("Exit",Command.EXIT,1);
        question=new StringItem("I guess you asked :","");
        answer=new StringItem("I think it is :","");
        status=new StringItem("Status","");
        
        Display.getDisplay(this).setCurrent(form);
        form.addCommand(ok);
        form.addCommand(exit);
        form.append(q_text);
        form.append(status);
        form.setCommandListener(this);
    }
    
    public void search() {
                            
        
        int j;
        int i=str.indexOf("<plaintext>");
        i+=11;
        start=i;
        j=str.indexOf("</plaintext>",i);
        end=j;
        qus=str.substring(start, end);
        System.out.println(qus);
        
        i=str.indexOf("<plaintext>",end);
        i+=11;
        start=i;
        j=str.indexOf("</plaintext>",i);
        end=j;
        ans=str.substring(start, end);
        System.out.println(ans);
        
        
    }
    
    void more(){
        int i,j;
        do{
            i=str.indexOf("<plaintext>",end);
            if(i!=-1){
                start=i+11;
                j=str.indexOf("</plaintext>",i);
                end=j;
                ans+="\n"+str.substring(start, end);
                
                System.out.println(str.substring(start, end));
            }
        }while(i!=-1);
        System.out.println(ans);
        answer.setText(ans);
    }
    
    void formaturl(){
        String inp=q_text.getString();
        
        inpb=new StringBuffer(inp);
            int i,j;
            for(i=0;i<inpb.length();i++){
                
                switch(inpb.charAt(i)){
                    case '+':
                        replace(i,"%2B");
                        break;
                    case ' ':
                        replace(i,"%20");
                        break;
                    case '^':
                        replace(i,"%5E");
                        break;
                    case '/':
                        replace(i,"%2F");
                        break;
                    case '=':
                        replace(i,"%3D");
                        break;
                    case '<':
                        replace(i,"%3C");
                        break;
                    case '>':
                        replace(i,"%3E");
                        break;
                    case '#':
                        replace(i,"%23");
                        break;
                    case '{':
                        replace(i,"%7B");
                        break;
                    case '}':
                        replace(i,"%7D");
                        break;
                    case '&':
                        replace(i,"%26");
                        break;
                    
                }
        }
        
        inp=inpb.toString();   
        if(podindex==2){
            inp="http://api.wolframalpha.com/v2/query?appid=84PL49-2GHGJU3PLJ&input="+inp+"&podindex=1,2&format=plaintext";
        }
        else if(podindex==5){
            inp="http://api.wolframalpha.com/v2/query?appid=84PL49-2GHGJU3PLJ&input="+inp+"&podindex=1,2,3,4,5&format=plaintext";
        }
        
        url=inp;
    }
    
    
    void replace(int i,String rs){
        inpb.deleteCharAt(i);
        inpb.insert(i, rs);
        i+=3;
    }

    public void execute(){
        podindex=2;
        formaturl();
        System.out.println(url);
        th=new Thread(this);
        th.start();
        
    }
    
    public void run()
    {
        try
                {
            
                    status.setText("Connecting...");
                    sc=(HttpConnection)Connector.open(url);
                    is = sc.openInputStream();
                    dis=new DataInputStream(is);
                    char c=' ';
                    int lim=0;
                    String s="";
                    
                    status.setText("Retrieving data...");
                    
                    while(c!=-1 && s.indexOf("</queryresult>")==-1){
                        
                        c=(char)dis.read();
                        s=s+String.valueOf(c);
                        lim++;
                        
                    }

                    status.setText("Processing data...");
                    
                    if(s.indexOf("success='false'")!=-1){
                        status.setText("Sorry I dont know that now...");
                        return;
                    }
                    str=s;
                    search();
                    question.setText(qus);
                    if(podindex!=2){
                        more();
                    }
                    answer.setText(ans);
                    if(firstrun==1)
                    {
                        System.out.println("first run");
                        
                        form.append(question);
                        form.append(answer);
                        form.addCommand(more);
                        firstrun=0;
                    }
                    
                    status.setText("Done!");
                    is.close();
                    sc.close();
                    
                }catch(Exception e){
                    status.setText("Sorry Internal Error : "+ e.toString());
                    System.out.println("Error : "+ e.toString());
                }
    }
    
    public void commandAction(Command c,Displayable d){
        if(c.getLabel().compareTo("Ok")==0){
            execute();
        }
        else if(c.getLabel().compareTo("More")==0){
            podindex=5;
            formaturl();
            System.out.println(url);
            th=new Thread(this);
            th.start();
            
        }
        else if(c.getLabel().compareTo("Exit")==0){
            notifyDestroyed();
        }
        
    }
    public void startApp() {
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}
