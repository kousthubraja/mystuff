#include<iostream.h>
#include<cstdlib>

struct Node
{
       int info;
       Node *next;
} *start,*save,*newptr;

Node *create(int);
void ins(Node*);
void disp(Node*);
void del();

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
    del();
    disp(start);
    system("pause");
    return 0;
}

Node *create(int n)
{
     Node *ptr=new Node;
     ptr->info=n;
     ptr->next=NULL;
     return ptr;
}

void ins(Node *np)
{
     if(start==NULL)start=np;
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
            cout<<np->info;
            np=np->next;
     }
}

void del()
{
     if(start==NULL)
        cout<<"Under flow";
     else
     {
         Node *ptr=start;
         start=start->next;
         delete ptr;
     }
}
