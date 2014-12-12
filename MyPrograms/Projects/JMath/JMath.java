import java.awt.*;
import java.awt.event.*;
import java.applet.*;

public class JMath extends Applet
{
  //int width=0,height=0,cx=0,cy=0;
  double width,height,center_x,center_y,zoom=50,start=-10,end=10,prec=0.01,neu=1,window,grid=-1;

  public void init()
  {
    addKeyListener(new keyboard());
    new help();
  }
  
  public void paint(Graphics g)
  {
    updateBounds();
    draw_axes(g);
    
    for(double xd=-100;xd<=100;xd+=prec)
      putpixel(g, center_x+xd*zoom, center_y-Math.sin(xd)*zoom);
    
  }
  
  void draw_axes(Graphics g){
     line(g,0,center_y,width,center_y);
     line(g,center_x,0,center_x,height);
     double x,lcm,lmm;
     double astart=-10,aend=10;;
     // char mark[5];
     lcm=5;
     lmm=2;
     for(x=astart;x<=aend;x+=1){
        line(g,center_x+x*zoom, center_y-lcm, center_x+x*zoom, center_y+lcm);
        // setcolor(0xccccff);
        // settextstyle(2,0,4);
        // itoa(x,mark,10);
        // outtextxy(center_x+x*zoom-3,center_y+15,mark);
     }
     for(x=astart;x<=aend;x+=1){
        line(g,center_x-lcm, center_y+x*zoom, center_x+lcm, center_y+x*zoom);
        // setcolor(0xccccff);
        // settextstyle(2,0,4);
        // itoa(-x,mark,10);
        // outtextxy(center_x+8,center_y+x*zoom+5,mark);
     }
     // setcolor(0x888888);
     for(x=astart;x<=aend;x+=0.1)
        line(g,center_x+x*zoom, center_y-lmm, center_x+x*zoom, center_y+lmm);
     for(x=astart;x<=aend;x+=0.1)
        line(g,center_x-lmm, center_y+x*zoom, center_x+lmm, center_y+x*zoom);
     
     if(grid==1){
        for(x=astart;x<=aend;x+=1)
        line(g,center_x+x*zoom, center_y-height, center_x+x*zoom, center_y+height);
        for(x=astart;x<=aend;x+=1)
        line(g,center_x-width, center_y+x*zoom, center_x+width, center_y+x*zoom);
     }
     // setcolor(0xffffff);
  }
  
  void putpixel(Graphics g,double x,double y)
  {
    int dx=(int)x;
    int dy=(int)y;
    g.drawLine(dx,dy,dx,dy);
  }
  
  void line(Graphics g, double x1, double y1, double x2, double y2)
  {
    g.drawLine((int)x1,(int)y1,(int)x2,(int)y2);
  }
  
  void updateBounds()
  {
    width=getWidth();
    height=getHeight();
    center_x=width/2;
    center_y=height/2;
  }
}

/*<applet code="JMath.class" height=500 width=500></applet>*/
