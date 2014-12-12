#include<iostream.h>
#include<cstdlib>

struct Node{
       int info;
       Node *next;
} *start,*newptr,*ptr,*save;

Node *create(int);
void ins(Node*);
void disp(Node*);

int main()
{
    start=NULL;
    int n;
    for(int i=0;i<=5;i++)
    {
     cin>>n;
     newptr=create(n);
     if(newptr==NULL)cout<<"error";
     ins(newptr);
     //cout<<start<<" "<<ptr<<" "<<save;
     disp(newptr);
    }
    
    system("pause");
    return 0;
}

Node *create(int n){
     ptr=new Node;
     ptr->info=n;
     ptr->next=NULL;
     return ptr;
}

void ins(Node* np){
     if(start==NULL)
         start=np;
     else{
         save=start;
         start=np;
         np->next=save;
     }
}

void disp(Node* np)
{cout<<endl;
     while(np!=NULL)
     {
          cout<<np->info<<"<-";
          np=np->next;
     }
}
