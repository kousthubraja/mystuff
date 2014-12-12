#include<iostream.h>

struct Node
{
       int info;
       Node *next;
} *ptr,*front,*rear,*save,*newptr;

Node *create(int);
void push(Node*);
void disp();
void pop();

int main()
{
    int info;
    cin>>info;
    Node *newptr=create(info);
    push(newptr);
    cin>>info;
    newptr=create(info);
    push(newptr);
    cin>>info;
    newptr=create(info);
    push(newptr);
    
    disp();
    cin>>info;
    return 0;
}

Node *create(int info)
{
     newptr=new Node;
     newptr->info=info;
     newptr->next=NULL;
     return newptr;
}

void push(Node *np)
{
     if(front==NULL)
     {
          front=rear=np;
     }
     else
     {
         rear->next=np;
         rear=np;
     }
}

void disp()
{
     Node *np;
     np=new Node;
     np=front;
     while(np!=NULL)
     {
            cout<<np->info<<" ";
            np=np->next;
     }
}
