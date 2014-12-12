package myapp;

import java.awt.*;
import java.awt.event.*;

class MyApp extends Frame implements ActionListener
{
  Button b1;
  winhandler wh;
  TextField t1;
  Graphics g;
  
  public MyApp(String title)
  {
    super(title);
    b1=new Button("Click");
    t1=new TextField(20);
    wh=new winhandler();
    setSize(400,300);
    b1.addActionListener(this);
    addWindowListener(wh);
    b1.setBounds(10,30,40,30);
    t1.setBounds(10,70,80,30);
    setLayout(null);
    setVisible(true);
    g=getGraphics();    
    add(b1);
    add(t1);
  }
  
  public void actionPerformed(ActionEvent e)
  {
    System.out.println(t1.getText());
    g.setColor(Color.white);
    g.fillRect(0,0,getWidth(),getHeight());
    g.setColor(Color.black);
    g.drawString(t1.getText(),100,100);
  }
  
  public static void main(String argv[])
  {
    new MyApp("Form1");
  }
}

class winhandler extends WindowAdapter
{
  public void windowClosing(WindowEvent e){System.exit(0);}
}