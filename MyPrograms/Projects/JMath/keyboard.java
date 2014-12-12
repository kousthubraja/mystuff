import java.awt.event.KeyEvent;
import java.awt.event.KeyAdapter;

public class keyboard extends KeyAdapter
{
  public void keyPressed(KeyEvent e)
  {
    System.out.println(e.getKeyChar());
    if(e.getKeyChar()=='H'||e.getKeyChar()=='h') new help();
  }
}