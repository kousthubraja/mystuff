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
public class Q2 extends MIDlet implements CommandListener,Runnable{
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
    private Form about;
    
    private TextField q_text;
    private Command ok;
    private Command more;
    private Command clear;
    private Command showabout;
    private Command back;
    private Command call;
    private Command exit;
    private StringItem status;
    private Image ans_img,qus_img;
    
    public Q2(){
        form=new Form("Q");
        q_text=new TextField("", "", 150, TextField.ANY);
        ok=new  Command("Simple Search",Command.OK,1);
        more=new  Command("Advanced Search",Command.OK,2);
        clear=new  Command("Clear",Command.OK,3);
        showabout=new  Command("About",Command.OK,4);
        exit=new  Command("Exit",Command.EXIT,1);
        question=new StringItem("I guess you asked :","");
        answer=new StringItem("I think it is :","");
        status=new StringItem("Status","");
        
        Display.getDisplay(this).setCurrent(form);
        form.addCommand(ok);
        form.addCommand(more);
        form.addCommand(exit);
        form.addCommand(clear);
        form.addCommand(showabout);
        form.append(q_text);
        form.append(status);
        form.setCommandListener(this);
    }
    
    public void search() {
                            
        
        int j;
        int i=str.indexOf("<img src=");
        i+=10;
        start=i;
        j=str.indexOf("'",i);
        end=j;
        qus=str.substring(start, end);
        System.out.println(qus);
        
        i=str.indexOf("<img src=",end);
        i+=10;
        start=i;
        j=str.indexOf("'",i);
        end=j;
        ans=str.substring(start, end);
        System.out.println(ans);
        
        
    }
    
    void showabout(){
        about=new Form("About Q");
        about.append("\nThis application is made by Kousthub Raja");
        about.append("\nEmail kousthub@live.com");
        about.append("\nMobile +91-8891222456");
        about.append("\nMail me your suggestions and complaints about this app.");
        back=new Command("Back",Command.BACK,1);
        call=new  Command("Call",Command.OK,1);
        about.addCommand(back);
        about.addCommand(call);
        about.setCommandListener(this);
        Display.getDisplay(this).setCurrent(about);
        
    }
    
    void more(){
        int i,j;
        String ts;
        i=str.indexOf("<img src='");
        while(i!=-1){
            start=i+10;
            j=str.indexOf("'",start+1);
            end=j;
            try{
                ts=str.substring(start, end);
                StringBuffer sb=new StringBuffer(ts);
                int st;
                st=ts.indexOf("amp;");
                sb.delete(st, st+4);
                ts=sb.toString();
                System.out.println(ts);
                Image img=loadImage(ts);
                form.append("\n");
                form.append(img);
            }catch(Exception e){status.setText("Sorry Internal Error : "+ e.toString());}

            
            i=str.indexOf("<img src='",end);
        }
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
        int width=form.getWidth();
        if(podindex==2){
            inp="http://api.wolframalpha.com/v2/query?appid=84PL49-2GHGJU3PLJ&input="+inp+"&podindex=1,2&format=image&width="+String.valueOf(width);
        }
        else if(podindex==5){
            inp="http://api.wolframalpha.com/v2/query?appid=84PL49-2GHGJU3PLJ&input="+inp+"&podindex=1,2,3,4,5&format=image&width="+String.valueOf(width);
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
            
                    
                    status.setText("Got to connect first...");
                    sc=(HttpConnection)Connector.open(url);
                    is = sc.openInputStream();
                    dis=new DataInputStream(is);
                    char c=' ';
                    int lim=0;
                    String s="";
                    
                    status.setText("Let me retrieve the data...");
                    
                    while(c!=-1 && s.indexOf("</queryresult>")==-1){
                        
                        c=(char)dis.read();
                        s=s+String.valueOf(c);
                        lim++;
                        
                    }

                    status.setText("Please wait while I Process it...");
                    
                    if(s.indexOf("success='false'")!=-1){
                        status.setText("Sorry I dont know that right now...");
                        return;
                    }
                    
                    str=s;
                    
                    form.deleteAll();
                    form.append(q_text);
                    form.append(status);
                    
                    more();
                    status.setText("App made by Kousthub!");
                    is.close();
                    sc.close();
                    
                }catch(Exception e){
                    status.setText("Sorry Internal Error : "+ e.toString());
                    System.out.println("Error : "+ e.toString());
                }
    }
    
    public Image loadImage(String url) throws IOException {
    HttpConnection hpc = null;
    DataInputStream dis = null;
    try {
      hpc = (HttpConnection) Connector.open(url);
      int length = (int) hpc.getLength();
      byte[] data = new byte[length];
      dis = new DataInputStream(hpc.openInputStream());
      dis.readFully(data);
      
      return Image.createImage(data, 0, data.length);
    } finally {
      if (hpc != null)
        hpc.close();
      if (dis != null)
        dis.close();
    }
  }
    
    public void commandAction(Command c,Displayable d){
        if(c.getLabel().compareTo("Simple Search")==0){
            execute();
        }
        else if(c.getLabel().compareTo("Advanced Search")==0){
            podindex=5;
            formaturl();
            System.out.println(url);
            th=new Thread(this);
            th.start();
        }
        else if(c.getLabel().compareTo("Exit")==0){
            notifyDestroyed();
        }
        else if(c.getLabel().compareTo("Clear")==0){
            q_text.setString("");
            form.deleteAll();
            form.append(q_text);
            form.append(status);
        }
        else if(c.getLabel().compareTo("About")==0){
            showabout();
        }
        else if(c.getLabel().compareTo("Back")==0){
            Display.getDisplay(this).setCurrent(form);
        }
        else if(c.getLabel().compareTo("Call")==0){
            try{
                platformRequest("tel:+918891222456");
            }catch(Exception e){;}
        }
        
    }
    public void startApp() {
    }

    public void pauseApp() {
    }

    public void destroyApp(boolean unconditional) {
    }
}
