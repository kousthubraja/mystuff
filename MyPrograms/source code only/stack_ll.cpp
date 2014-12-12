#include<iostream.h>

struct Node
{
       int info;
       Node *next;
}*start,*newptr,*save;

Node *create(int);
void ins(Node*);
void disp(Node*);
void del(Node*);

int main()
{
    int a;
    start=NULL;
    for(int i=1;i<5;i++)
    {
        cin>>a;
        newptr=create(a);
        ins(newptr);
    }
    del(start);
    disp(start);
    cin>>a;
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
     save=start;
     start=np;
     np->next=save;
}

void del(Node *np)
{
     save=start;
     start=start->next;
     delete save;
}

void disp(Node *ptr)
{
     while(ptr!=NULL)
     {
           cout<<ptr->info<<" ";
           ptr=ptr->next;
     }
}
     
