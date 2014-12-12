import java.awt.*;
import java.applet.*;
import java.awt.event.*;

public class clickapplet extends Applet implements ActionListener
{
  Button b1;
  TextField t1;
  int i;
  
  public void init()
  {
    b1=new Button("Click");
    t1=new TextField(50);
    b1.addActionListener(this);
    add(t1);
    add(b1);
    i=10;
  }
  
  public void paint(Graphics g)
  {
    g.fillRect(50,50,i+50,i+50);
    i+=10;
  }
  
  public void actionPerformed(ActionEvent e)
  {
    t1.setText(String.valueOf(i));
    repaint();
  }
}

/*
<applet code="click.class" width=600 height=400></applet>
*/