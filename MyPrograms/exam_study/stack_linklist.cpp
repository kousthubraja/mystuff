#include<iostream.h>
#include<conio.h>

struct Node
{
       int info;
       Node *next;
}*start,*save,*newptr;

Node * create(int);
void ins(Node*);
void disp(Node*);

int main()
{
    start=NULL;
    char opt='y';
    int n;
    while(opt=='y')
    {
          cin>>n;
          newptr=create(n);
          ins(newptr);
          disp(start);
          cin>>opt;
    }
          
    return 0;
}

Node *create(int info)
{
     Node *ptr=new Node;
     ptr->info=info;
     ptr->next=NULL;
     return ptr;
}

void ins(Node *np)
{
     if(start==NULL)
       start=np;
     else
     {
         save=start;
         start=np;
         np->next=save;
     }
}

void disp(Node *np)
{
     while(np!=NULL)
     {
           cout<<np->info<<"\t";
           np=np->next;
     }
}
