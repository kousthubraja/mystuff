import javax.swing.*;
import java.awt.event.*;

class help extends JFrame implements ActionListener
{
  JButton  btn_ok;
  public help()
  {
    super("JMath - Help");
    btn_ok=new JButton("Ok");
    setLayout(null);
    btn_ok.setBounds(10,40,50,30);
    btn_ok.addActionListener(this);
    add(btn_ok);
    setSize(640,480);
    setVisible(true);
  }
  
  public void actionPerformed(ActionEvent e)
  {
    JMath jm=new JMath();
    jm.init();
  }
}