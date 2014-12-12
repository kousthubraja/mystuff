//Standard imports
#include <math.h>
#include <fstream.h>
#include <stdlib.h>
#include <vector>
#include <cstdlib>
#include <cstring>

//Library imports
#include "Includes\graphics.h"
#include "Includes\muparser.h"

using namespace mu;
using namespace std;

double width,height,center_x,center_y,zoom=50,grid=-1;
double start=-10,end=10,prec=0.01,window;
const double pi=3.14159;
const double e=2.71828;
const double minval=0.00001;
const double maxval=100000;
int neu=1,graphnum=0;
vector<string> expr;
Parser parser;

//**************************Function Defnitions*****************************
void save(char[]);
int open(char[]);

//Graphic functions
void draw_axes();
void draw();
void plot();

//User interface design
void home();
void help();
void about();
void graph_help();
void syntax_help();
int change_color(int n);
void get_graph_response();

//Maths functions excluding library
int eval();
int diff();
void integ();
double deriv(char*,double);
void solve();
double power(double,double);
char* approx(double);
void roundans(double&);


int main()
{
    window=initwindow(500, 500, "",0,0,0,0);
    parser.DefineConst("pi", 3.14159);
    parser.DefineConst("e", 2.71828);
    parser.DefineFun("pow", power); 
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
     double x,lcm,lmm,l5mm;
     double astart=-10,aend=10;;
     char mark[5];
     lcm=5;
     
     lmm=2;
     l5mm=lmm*1.5;
     for(x=astart;x<=aend;x+=1){
        line(center_x+x*zoom, center_y-lcm, center_x+x*zoom, center_y+lcm);
        setcolor(0xffcc33);
        settextstyle(0,0,1);
        itoa(x,mark,10);
        outtextxy(center_x+x*zoom-3,center_y+15,mark);
     }
     for(x=astart;x<=aend;x+=1){
        line(center_x-lcm, center_y+x*zoom, center_x+lcm, center_y+x*zoom);
        setcolor(0xffcc33);
        settextstyle(0,0,1);
        itoa(-x,mark,10);
        outtextxy(center_x+8,center_y+x*zoom+5,mark);
     }
     setcolor(0x888888);
     //cm
     for(x=astart;x<=aend;x+=0.1)
        line(center_x+x*zoom, center_y-lmm, center_x+x*zoom, center_y+lmm);
     for(x=astart;x<=aend;x+=0.1)
        line(center_x-lmm, center_y+x*zoom, center_x+lmm, center_y+x*zoom);
     //5mm
     for(x=astart;x<=aend;x+=0.5)
        line(center_x+x*zoom, center_y-l5mm, center_x+x*zoom, center_y+l5mm);
     for(x=astart;x<=aend;x+=0.5)
        line(center_x-l5mm, center_y+x*zoom, center_x+l5mm, center_y+x*zoom);
        
     if(grid==1){
        for(x=astart;x<=aend;x+=1)
        line(center_x+x*zoom, center_y-10*height, center_x+x*zoom, center_y+10*height);
        for(x=astart;x<=aend;x+=1)
        line(center_x-10*width, center_y+x*zoom, center_x+10*width, center_y+x*zoom);
     }
     setcolor(0xffffff);
}


//*******************Plotting function with expression acception***********************
void plot(){

    char exp1[100];
    double xd=2;
    parser.DefineVar("x", &xd);
    cout<<"\n*************************** Plotting *****************************\n";
     cout<<"eg: sin(x)\n";
     cout<<"    cos(sin(tan(x)))\n";
     cout<<"    exp(1/x+abs(ln(x)))\n";
     cout<<"\n*****************************************************************\n";
    puts("\nEnter the expression : ");
    cin>>exp1;
    expr.push_back(exp1);
    graphnum++;
    try{
        parser.SetExpr(exp1);
        parser.Eval();
    }
    catch(Parser::exception_type &e){
        cout << "\nError in expression!\n" << e.GetMsg() << "\n";
        expr.pop_back();
        graphnum--;
    }

    cleardevice();
    draw_axes();
    start=-center_x/zoom;
    end=(width-center_x)/zoom;
    try{
        for(int n=0;n<graphnum;n++)
        {   
            int c=change_color(n);
            parser.SetExpr(expr.at(n));
            for(xd=start;xd<=end;xd+=prec){
                    putpixel(center_x+xd*zoom, center_y-parser.Eval()*zoom, c);
            }
        }
    }
    catch(Parser::exception_type &e){
        cout << "\nError:  " << e.GetMsg() << "\n";
    }
    get_graph_response();
    
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
        for(int n=0;n<graphnum;n++)
        {   
            int c=change_color(n);
            parser.SetExpr(expr.at(n));
            for(xd=start;xd<=end;xd+=prec){
                    putpixel(center_x+xd*zoom, center_y-parser.Eval()*zoom, c);
            }
        }
    }
    catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
    }
    
    get_graph_response();
}

void cleargraph(){
     expr.clear();
     graphnum=0;
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
          case 'c':case'C':
               cleargraph();
               cout<<"\nGraph cleared!\n";
               get_graph_response();
               break;
          case 'n':case'N':
               plot();
               break;
          case 'g':case'G':
               grid=-grid;
               draw();
               break;
          case 'v':case'V':
               char fil[100];
               cout<<"\nEnter file name to save : ";
               cin>>fil;
               save(fil);
               goto op;
               break;
          case 'b':case'B':
               cout<<"\nEnter file name to open : ";
               cin>>fil;
               expr.clear();
               if(!open(fil))    draw();
               get_graph_response();
               break;
          default:
               goto op;
    }
}



//*****************************Show the main menu*****************************
void home(){
    cleardevice();
    cleardevice();
    setcolor(0xff3300);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,350,"CMaths");
    settextstyle(6,0,3);
    setcolor(0x0099ff);
    outtextxy(100,50,"What do you want to do?");
    settextstyle(3,0,1);
    setcolor(0x00ff00);
    int y=50;
    outtextxy(100,y+=50,"1. Graph Plotting.");
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
               settextstyle(8,0,1);
               outtextxy(10,400,"Type n to add new graph");
               get_graph_response();
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
          case '8':
               exit(0);
               break;
          default:
               goto op_in;
    }
    
    
}

//*****************************Show the help menu*****************************
void help(){
    cleardevice();
    setcolor(0xff0000);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,350,"CMaths");
    settextstyle(6,0,4);
    setcolor(0x0099ff);
    outtextxy(200,50,"Help");
    settextstyle(8,0,1);
    int y=80;
    setcolor(0x00ffcc);
    outtextxy(100,y+=50,"1. Graph Controls");
    outtextxy(100,y+=30,"2. Syntax");
    outtextxy(100,y+=30,"3. Graph Examples");
    outtextxy(100,y+=30,"3. Evaluation Examples");
    outtextxy(100,y+=30,"4. Solve Examples");
    outtextxy(100,y+=30,"5. Differentioation Examples");
    outtextxy(100,y+=30,"6. Integeration Examples");
    settextstyle(3,0,1);
    setcolor(0x33ffff);
    outtextxy(100,y+=130,"Press x key to go back.");
    setcolor(0xffffff);
    
    char op1;
    
    //User chooses the opearation
op_in:
    op1=getch();
    //Graphing
    if(op1=='1'||op1=='1'){
         graph_help();
    }
    if(op1=='2'||op1=='2'){
         syntax_help();
    }
    if(op1=='x'||op1=='X'){
         home();
    }
    //Wrong option accept choice again
    else goto op_in;
    
}

//*****************************Show the graph help menu*****************************
void graph_help(){
    cleardevice();
    setcolor(0xff0000);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,350,"CMaths");
    settextstyle(6,0,4);
    setcolor(0x0099ff);
    outtextxy(100,50,"Graph Controls");
    settextstyle(0,0,0);
    int y=50;
    setcolor(0x00ff00);
    outtextxy(100,y+=50,"Move UP       -     W");
    outtextxy(100,y+=30,"Move DOWN     -     S");
    outtextxy(100,y+=30,"Move LEFT     -     A");
    outtextxy(100,y+=30,"Move RIGHT    -     D");
    outtextxy(100,y+=30,"Zoom IN       -     I");
    outtextxy(100,y+=30,"Zoom OUT      -     O");
    outtextxy(100,y+=30,"Main Menu     -     X");
    outtextxy(100,y+=30,"Save Graph    -     V");
    outtextxy(100,y+=30,"Open Graph    -     B");
    outtextxy(100,y+=30,"Clear All     -     C");
    outtextxy(100,y+=30,"Toggle Grid   -     G");
    outtextxy(100,y+=30,"New Function  -     N");
    outtextxy(100,y+=30,"Set bounds    -     L");
    //outtextxy(100,y+=30,"-     I");
    settextstyle(3,0,1);
    setcolor(0x33ffff);
    outtextxy(100,y+=30,"Press x key to go back.");
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

//*****************************Show the syntax help menu*****************************
void syntax_help(){
    cleardevice();
    setcolor(0xff0000);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,350,"CMaths");
    settextstyle(6,0,4);
    setcolor(0x0099ff);
    outtextxy(100,50,"Syntax Help");
    settextstyle(0,0,0);
    int y=50;
    setcolor(0x00ff00);
    outtextxy(80,y+=50,"Add|Sub             -     +|-");
    outtextxy(80,y+=30,"Multiply|Divide     -     *|/");
    outtextxy(80,y+=30,"Power (x^y)         -     ^|pow(x,y)");
    outtextxy(80,y+=30,"square root         -     sqrt(x)");
    outtextxy(80,y+=30,"log with base 10    -     log(x)");
    outtextxy(80,y+=30,"log with base e     -     ln(x)");
    outtextxy(80,y+=30,"exponent (e^x)      -     exp(x)");
    outtextxy(80,y+=30,"sine                -     sin(x)");
    outtextxy(80,y+=30,"cosine              -     cos(x)");
    outtextxy(80,y+=30,"tan                 -     tan(x)");
    outtextxy(80,y+=30,"sin inverse         -     asin(x)");
    outtextxy(80,y+=30,"cos inverse         -     acos(x)");
    outtextxy(80,y+=30,"tan inverse         -     atan(x)");
    settextstyle(3,0,1);
    setcolor(0x33ffff);
    outtextxy(100,y+=30,"Press x key to go back.");
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
    setcolor(0xff0000);
    settextstyle(0,1,5);
    settextjustify(0,0);
    outtextxy(50,350,"CMaths");
    settextstyle(6,0,4);
    setcolor(0x00ff00);
    outtextxy(200,50,"About");
    settextstyle(9,0,1);
    int y=50;
    setcolor(0x0099ff);
    outtextxy(80,y+=50,"Written by Kousthub Raja");
    setcolor(0x9966ff);
    settextstyle(7,0,3);
    outtextxy(80,y+=50,"In collaboration with :");
    settextstyle(6,0,1);
    setcolor(0xff00cc);
    outtextxy(100,y+=50,"   Abinay K");
    outtextxy(100,y+=50,"   Anunath");
    outtextxy(100,y+=50,"   Akshay Vijayan");
    outtextxy(100,y+=50,"   Subin Surendran");
    outtextxy(100,y+=50,"   ---");
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
     cout<<"\n\nEnter the expression to evaluate : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if((exp1[0]=='c'||exp1[0]=='C')&& strlen(exp1)==1) {system("cls"); goto eval_enter;}
     parser.SetExpr(exp1);
     try{
        res=parser.Eval();
     }
     catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
     }
     roundans(res);
     char *ans;
     ans=approx(res);
     if(ans!="n")
                    cout<<"\nAnswer = "<<res<<". I guess it is "<<approx(res);
     else if(fabs(res)>maxval)
          cout<<"\nAnswer might be "<<res<<". I'm not so sure. It's tending to infinity";
     else
         cout<<"\nAnswer = "<<res;
     //else cout<<"\nAnswer = "<<res;
     cout<<"\n---------------------------------------------------------\n";
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
     cout<<"\n\nEnter the function to differentiate(wrt x) : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if((exp1[0]=='c'||exp1[0]=='C')&& strlen(exp1)==1) {system("cls"); goto eval_enter;}
     cout<<"Enter x value : ";
     cin>>exp2;
     double dx;
     parser.DefineVar("x", &dx);
     parser.SetExpr(exp2);
     dx=parser.Eval();
     double res;
     res=deriv(exp1,dx);
     roundans(res);
     char *ans;
     ans=approx(res);
     if(ans!="n")
          cout<<"\nDerivative = "<<res<<". I guess it is "<<approx(res);
     else if(fabs(res)>=maxval)
          cout<<"\nDerivative might be "<<res<<". I'm not so sure. It's tending to infinity";
     else
          cout<<"\nDerivate at x = "<<exp2<<" is "<<res;
        cout<<"\n---------------------------------------------------------\n";
     goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();
     return 0;
}

//Funtion return the derivative
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
     cout<<"\n\nEnter the expression f(x)=0 to solve for x : ";
     cin>>exp1;
     
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if((exp1[0]=='c'||exp1[0]=='C')&& strlen(exp1)==1) {system("cls"); goto eval_enter;}
     
     cout<<"\nHave any best guess(Type 0 if none)? : ";
     cin>>n;
     parser.SetExpr(exp1);
     try{
         
         for(int i=0;i<=30;i++){
              parser.DefineVar("x", &n);
              fx=parser.Eval();
              dfx=deriv(exp1,n);
              sv=fx/dfx;
              n-=sv;
              
         }
     }
     catch(Parser::exception_type &e){
        cout << "\nMessage:  " << e.GetMsg() << "\n";
     }
     roundans(n);
     //Check if soln is correct
     parser.SetExpr(exp1);
     parser.DefineVar("x", &n);
     fx=parser.Eval();
     if(fx>=minval) cout<<"\nI'm not sure about it. Try a different guess value \n";
     char *ans;
     ans=approx(n);
     if(ans!="n")
                    cout<<"\nAnswer = "<<n<<". I guess it is "<<approx(n);
     else
         cout<<"\nAnswer = "<<n;
     
     cout<<"\n---------------------------------------------------------\n";
     goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();

}
//*****************************Integration*****************************
void integ(){
    double n=100000,h,sum,a,b,tmp;
    double x;
    parser.DefineVar("x", &x);
	
	char exp1[100],exp2[20];
     closegraph();
     cout<<"\n**************************** Integration *******************************\n";
     cout<<"eg: sin(abs(x))\n";
     cout<<"    log(3+tan(x))/(x^3+4)\n";
     cout<<"    exp(x)\n";
     cout<<"    Type 'q' to go back to main menu or 'c' to clear screen\n";
     cout<<"\n************************************************************************\n";
     
eval_enter:
     cout<<"\n\nEnter the function to integrate(wrt x) : ";
     cin>>exp1;
     if(exp1[0]=='q'||exp1[0]=='Q') goto gohome;
     else if((exp1[0]=='c'||exp1[0]=='C')&& strlen(exp1)==1) {system("cls"); goto eval_enter;}
     cout<<"\nEnter lower bound : ";
     cin>>exp2;
     parser.SetExpr(exp2);
     a=parser.Eval();
     cout<<"\nEnter upper bound : ";
     cin>>exp2;
     parser.SetExpr(exp2);
     b=parser.Eval();
     h=(b-a)/n;
     sum=0;
     parser.SetExpr(exp1);
     for(x = a; x < b; x+=h)
	 {
           tmp=parser.Eval();
           sum+=tmp*h;
	 }
	 double res;
     res=sum;
     roundans(res);
     char *ans;
     ans=approx(res);
     if(ans!="n")
          cout<<"\nIntegral = "<<res<<". I guess it is "<<approx(res);
     else if(fabs(res)>=maxval)
          cout<<"\nIntegral might be "<<res<<". I'm not so sure. It's tending to infinity";
     else
          cout<<"Integral of "<<exp1<<" from "<<a<<" to "<<b<<" = "<<res;
    
    cout<<"\n---------------------------------------------------------\n";
     goto eval_enter;
	 
    
     goto eval_enter;
    
gohome:   
     initwindow(500, 500, "");
     home();
}

//*****************************Power function******************
double power(double a, double b) 
{ 
  return pow(a,b); 
}

//*****************************Approximate answer*****************************
char* approx(double ans){
     static char fans[20];
     int tmp;
     double prec=10000;
     tmp=int(ans*prec)/10;
     
     if(tmp==int(pi*prec)/10)
          return "pi";
     else if(tmp==int(pi/2*prec)/10)
          return "pi/2";
     else if(tmp==int(pi/4*prec)/10)
          return "pi/4";
     else if(tmp==int(pi/3*prec)/10)
          return "pi/3";
     else if(tmp==int(pi/6*prec)/10)
          return "pi/6";
     else if(tmp==int(pi*2*prec)/10)
          return "2*pi";
     else if(tmp==int(pi/12*prec)/10)
          return "pi/12";
     else if(tmp==int(pi/24*prec)/10)
          return "pi/24";
     else if(tmp==int(pi*2/3*prec)/10)
          return "2pi/3";
     else if(tmp==int(e*prec)/10)
          return "e";
     else
         return "n";
}

void roundans(double &res){
     if(res<1 && res>=0.99999) res=1;
     if(fabs(res)<=minval) res=0;
}
       
void save(char filename[100])
{
     strcat(filename,".txt");
     ofstream fout(filename);
     for(int i=0;i<expr.size();i++)
     {
             fout<<expr.at(i);
             fout.put('\n');
     }
     
     fout.close();
     cout<<"\nFile successfully saved!";
}
     
int open(char filename[100])
{
     strcat(filename,".txt");
     ifstream fin(filename);
     int i=0;
     char s[100];
     if(fin==0){
                cout<<"File not found!";
                return 1;
     }
     while(!fin.eof())
     {
               if(fin.eof())  break;
               fin>>s;
               expr.push_back(s);
     }
     graphnum=expr.size()-1;
     if(graphnum>1)expr.pop_back();
     
     fin.close();
     return 0;
}
            
int change_color(int n){
     int c=n%10;
     switch(c)
     {
     case 0:return 0x0000ff;break;//red
     case 1:return 0x00ff00;break;//green
     case 2:return 0xff0000;break;//blue
     case 3:return 0xff00cc;break;
     case 4:return 0x00ffff;break;
     case 5:return 0x00cccc;break;
     case 6:return 0x996699;break;
     case 7:return 0x0099ff;break;
     case 8:return 0xff33ff;break;
     case 9:return 0xccccff;break;
     
     }
     
}            
     
