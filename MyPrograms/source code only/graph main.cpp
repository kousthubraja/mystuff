#include <cstdlib>
#include <iostream.h>
#include <conio.h>
#include <graphics.h>
#include <stdlib.h>
#include "Includes\muparser.h"

using namespace mu;

double width,height,center_x,center_y,zoom=50,start=-10,end=10,prec=0.01,neu=1,window,grid=-1;
Parser parser;


void draw_axes();
void draw();
void plot();
void home();
void help();
void about();
int eval();
int diff();
int integ();
double deriv(char*,double);
void solve();
void get_graph_response();
//void evaluate();

int main()
{
    window=initwindow(500, 500, "",0,0,0,0);
    parser.DefineConst("pi", 3.14159);
    parser.DefineConst("e", 2.71828);
    width=getmaxx();
    height=getmaxy();
    center_x=width/2;
    center_y=height/2;
    
    home();
    
    //End
    return 0;
}

//*****************************Function to draw axes*****************************
void draw_axes(){
     line(0,center_y,width,center_y);
     line(center_x,0,center_x,height);
     double x,lcm,lmm;
     double astart=-10,aend=10;;
     char mark[5];
     lcm=5;
     lmm=2;
     for(x=astart;x<=aend;x+=1){
        line(center_x+x*zoom, center_y-lcm, center_x+x*zoom, center_y+lcm);
        setcolor(0xccccff);
        settextstyle(2,0,4);
        itoa(x,mark,10);
        outtextxy(center_x+x*zoom-3,center_y+15,mark);
     }
     for(x=astart;x<=aend;x+=1){
        line(center_x-lcm, center_y+x*zoom, center_x+lcm, center_y+x*zoom);
        setcolor(0xccccff);
        settextstyle(2,0,4);
        itoa(-x,mark,10);
        outtextxy(center_x+8,center_y+x*zoom+5,mark);
     }
     setcolor(0x888888);
     for(x=astart;x<=aend;x+=0.1)
        line(center_x+x*zoom, center_y-lmm, center_x+x*zoom, center_y+lmm);
     for(x=astart;x<=aend;x+=0.1)
        line(center_x-lmm, center_y+x*zoom, center_x+lmm, center_y+x*zoom);
     
     if(grid==1){
        for(x=astart;x<=aend;x+=1)
        line(center_x+x*zoom, center_y-height, center_x+x*zoom, center_y+height);
        for(x=astart;x<=aend;x+=1)
        line(center_x-width, center_y+x*zoom, center_x+width, center_y+x*zoom);
     }
     setcolor(0xffffff);
}


//*******************Plotting function with expression acception***********************
void plot(){

    char exp1[100];
    double xd;
    parser.DefineVar("x", &xd);
    cout<<"\n*************************** Plotting *****************************\n";
     cout<<"eg: sin(x)\n";
     cout<<"    cos(sin(tan(x)))\n";
     cout<<"    exp(1/x+abs(ln(x)))\n";
     cout<<"\n*****************************************************************\n";
    puts("\nEnter the expression : ");
    cin>>exp1;
    parser.SetExpr(exp1);
    cleardevice();
    draw_axes();
    try{
        for(xd=start;xd<=end;xd+=prec)
              putpixel(center_x+xd*zoom, center_y-parser.Eval()*zoom, 160);
    }
    catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
    }
    //setcurrentwindow(window);
    get_graph_response();
    
}

//*****************************Gets user's response in graph*****************************
void get_graph_response(){
     
    char opt;
op: opt=getch();
    switch(opt){
          case 'i':case'I':
               if(zoom<=100)
               zoom+=10;
               draw();
               break;
          case 'o':case'O':
               if(zoom>10)
               zoom-=10;
               draw();
               break;
          case 'a':case'A':
               center_x+=30;
               draw();
               break;
          case 'd':case'D':
               center_x-=30;
               draw();
               break;
          case 'w':case'W':
               center_y+=30;
               draw();
               break;
          case 's':case'S':
               center_y-=30;
               draw();
               break;
          case 'p':case'P':
               puts("\nEnter precision : ");
               double np;
               cin>>np;
               if(np>=0.00001)
                      prec=np;
               else
                      cout<<"\nGiving very high precision can crash your computer!\n";
               draw();
               break;
          case 'l':case'L':
               double ns,ne;
               puts("\nEnter starting x value : ");
               cin>>ns;
               puts("\nEnter ending x value : ");
               cin>>ne;
               if(ns<ne){
                    start=ns;
                    end=ne;
               }
               else
               {
                   cout<<"Wrong bounds.\n";
               }
               draw();
               break;
          case 'x':case'X':
               neu=1;
               home();
               break;
          case 'n':case'N':
               plot();
               break;
          case 'g':case'G':
               grid=-grid;
               draw();
               break;
          default:
               goto op;
    }
}

//********************Plotting function without expression acception****************
void draw(){
    double xd,p0;
    parser.DefineVar("x", &xd);
    cleardevice();
    draw_axes();
    start=-center_x/zoom;
    end=(width-center_x)/zoom;
    try{
        for(xd=start;xd<=end;xd+=prec){
                putpixel(center_x+xd*zoom, center_y-parser.Eval()*zoom, 160);
        }
    }
    catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
    }
    
    get_graph_response();
}

//*****************************Show the main menu*****************************
void home(){
    cleardevice();
    cleardevice();
    setcolor(0xff3300);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,300,"Maths");
    settextstyle(6,0,3);
    setcolor(0x0066ff);
    outtextxy(100,50,"What do you want to do?");
    settextstyle(3,0,1);
    setcolor(0x00cc33);
    int y=50;
    outtextxy(100,y+=50,"1. Plot graph.");
    outtextxy(100,y+=50,"2. Evaluate Expression");
    outtextxy(100,y+=50,"3. Solve for unknown");
    outtextxy(100,y+=50,"4. Differtiation");
    outtextxy(100,y+=50,"5. Integeration");
    outtextxy(100,y+=50,"6. Help");
    outtextxy(100,y+=50,"7. About");
    outtextxy(100,y+=50,"8. Quit");
    setcolor(0xffffff);
    char op1;
    
    //User chooses the opearation
op_in:
    op1=getch();
    switch(op1){
          case '1':
               cleardevice();
               draw_axes();
               plot();
               break;
          case '2':
               eval();
               break;
          case '3':
               solve();
               break;
          case '4':
               diff();
               break;
          case '5':
               integ();
               break;
          case '6':
               help();
               break;
          case '7':
               about();
               //break;
          case '8':
               //exit
               break;
          default:
               goto op_in;
    }
    
    
}


//*****************************Show the help menu*****************************
void help(){
    cleardevice();
    setcolor(0xff3300);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,300,"Maths");
    settextstyle(6,0,3);
    setcolor(0x0066ff);
    outtextxy(100,50,"Graph Controls");
    setcolor(0x00cc33);
    settextstyle(0,0,0);
    int y=50;
    outtextxy(100,y+=50,"Move UP       -     W");
    outtextxy(100,y+=30,"Move DOWN     -     S");
    outtextxy(100,y+=30,"Move LEFT     -     A");
    outtextxy(100,y+=30,"Move RIGHT    -     D");
    outtextxy(100,y+=30,"Zoom IN       -     I");
    outtextxy(100,y+=30,"Zoom OUT      -     O");
    outtextxy(100,y+=30,"Main Menu     -     X");
    outtextxy(100,y+=30,"Toggle Grid   -     G");
    outtextxy(100,y+=30,"New Function  -     N");
    outtextxy(100,y+=30,"Set bounds    -     L");
    //outtextxy(100,y+=30,"-     I");
    settextstyle(3,0,1);
    setcolor(0x33ffff);
    outtextxy(100,height-50,"Press x key to go back.");
    setcolor(0xffffff);
    
    char op1;
    
    //User chooses the opearation
op_in:
    op1=getch();
    //Graphing
    if(op1=='x'||op1=='X'){
         home();
    }
    //Wrong option accept choice again
    else goto op_in;
    
}

//*****************************Show the about dialog*****************************
void about(){
    cleardevice();
    setcolor(0xff3300);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,300,"Maths");
    settextstyle(6,0,3);
    setcolor(0x00ff00);
    outtextxy(100,50,"About");
    settextstyle(0,0,0);
    int y=50;
    outtextxy(100,y+=50,"Programmed by Kousthub Raja");
    
    //outtextxy(100,y+=30,"-     I");
    setcolor(0x33ffff);
    settextstyle(3,0,1);
    outtextxy(100,height-50,"Press x key to go back.");
    
    setcolor(0xffffff);
    
    char op1;
    
    //User chooses the opearation
op_in:
    op1=getch();
    //Graphing
    if(op1=='x'||op1=='X'){
         home();
    }
    //Wrong option accept choice again
    else goto op_in;
    
}


//*****************************Evaluator*****************************
int eval(){
     char exp1[100];
     double res;
     cout<<"\n*************************** Evaluator *****************************\n";
     cout<<"eg: 4*(54+3)\n";
     cout<<"    log(15*tan(pi/4))\n";
     cout<<"    sqrt((tan(pi)^4/(3+sin(pi/6))\n";
     cout<<"    Type 'q' to go back to main menu or 'c' to clear screen\n";
     cout<<"\n*******************************************************************\n";
eval_enter:
     closegraph();
     cout<<"\nEnter the expression to evaluate : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if(exp1[0]=='c'||exp1[0]=='C') {system("cls"); goto eval_enter;}
     parser.SetExpr(exp1);
     try{
        res=parser.Eval();
     }
     catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
     }
     cout<<"\nAnswer = "<<res;
          goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();
     return 0;

}


//*****************************Differentiation*****************************     
int diff(){
     char exp1[100],exp2[20];
     closegraph();
     cout<<"\n*************************** Differentiaton *****************************\n";
     cout<<"eg: sin(abs(x))\n";
     cout<<"    log(3+tan(x))/(x^3+4)\n";
     cout<<"    exp(x)\n";
     cout<<"    Type 'q' to go back to main menu or 'c' to clear screen\n";
     cout<<"\n************************************************************************\n";
     
eval_enter:
     cout<<"\nEnter the function to differentiate(wrt x) : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if(exp1[0]=='c'||exp1[0]=='C') {system("cls"); goto eval_enter;}
     cout<<"Enter x value : ";
     cin>>exp2;
     double dx;
     parser.DefineVar("x", &dx);
     parser.SetExpr(exp2);
     dx=parser.Eval();
     cout<<"\nDerivate at x = "<<exp2<<" is "<<deriv(exp1,dx);
    
     goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();
     return 0;
}

double deriv(char exp1[100],double x){
         double dx,h=0.000001,res;
         dx=x;
         parser.DefineVar("x", &dx);
         
     try{
         dx+=h;
         parser.SetExpr(exp1);
         res=parser.Eval();
         dx-=h;
         res-=parser.Eval();
         res/=h;
     }
     catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
     }
     return res;
}

//*****************************Solve Function*****************************
void solve(){
     char exp1[100];
     double res;
     cout<<"\n*************************** Solve Function *****************************\n";
     cout<<"eg: 4*(54+3)\n";
     cout<<"    log(15*tan(pi/4))\n";
     cout<<"    sqrt((tan(pi)^4/(3+sin(pi/6))\n";
     cout<<"    Type 'q' to go back to main menu or 'c' to clear screen\n";
     cout<<"\n************************************************************************\n";
     
eval_enter:
     closegraph();
     double n=2,fx,dfx,sv;
     cout<<"\nEnter the expression f(x)=0 to solve for x : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if(exp1[0]=='c'||exp1[0]=='C') {system("cls"); goto eval_enter;}
     parser.SetExpr(exp1);
     try{
         
         for(int i=0;i<=20;i++){
              parser.DefineVar("x", &n);
              fx=parser.Eval();
              dfx=deriv(exp1,n);
              sv=fx/dfx;
              n-=sv;
              //if(abs(sv)<0.01)break;
              
         }
     }
     catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
     }
     cout<<"\nAnswer = "<<n;
          goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();

}
//*****************************Integration*****************************
int integ(){
     
}
