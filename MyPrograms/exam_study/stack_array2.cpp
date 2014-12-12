#include<iostream.h>
#include<conio.h>

const int size=50;

int push(int[],int&,int);
void disp(int[],int);
void del(int&);

int main()
{
    int stack[50],top,item;
    top=-1;
    while(item!=0)
    {
          cin>>item;
          if(item==0)break;
          push(stack,top,item);
    }
    disp(stack,top);
    del(top);
    disp(stack,top);
    getch();
    return 0;
}

int push(int stack[],int &top,int item)
{
    if(top==size-1)
    {
        cout<<"Over";
    }
    else
    {
        top++;
        stack[top]=item;
    }
}

void disp(int stack[],int top)
{
     while(top>=0)
     {
             cout<<stack[top]<<'\t';
             top--;
     }
}

void del(int &top)
{
     if(top!=-1)top--;
}
