#include<stdio.h>

struct Node
{
       int roll;
       char name[20];
       char dept[20];
       struct Node *next;
} *start,*save,*newptr;

struct Node *create(int,char[],char[]);
void ins(struct Node*);
void disp(struct Node*);
void Del();
void Add();
void Print();

void showall()
{
     int roll,found=0;
     
     printf("\nEnter roll no : ");
     scanf("%d",&roll);
     
     struct Node *tmp,*otmp;
     tmp=start;
     
     
     while(tmp!=NULL)
     {
       if(tmp->roll==roll)
       {
            //tmp->next=tmp->next->next;
            printf("\nRoll     : %d",tmp->roll);
            printf("\nName     : %s",tmp->name);
            printf("\nDept     : %s",tmp->dept);
            found=1;
       }
       tmp=tmp->next;
     }          
     
     if(found==0)
       printf("Not found!\n");
}


int main()
{
    start=NULL;
    char opt='y';
    int n;
    while(opt=='y')
    {
          Add();
          //disp(start);
          scanf(" %c",&opt);
    }
    Del();
    showall();
    //disp(start);
    //Print();
    //Print();
    return 0;
}

void Add()
{
     int roll;
     char name[20];
     char dept[20];
     
     printf("\nEnter roll no : ");
     scanf("%d",&roll);
     printf("Enter name : ");
     scanf("%s",name);
     printf("Enter department : ");
     scanf("%s",dept);
     
     newptr=create(roll,name,dept);
     if(newptr!=NULL)
       ins(newptr);
}

void Print()
{
     int roll,found=0;
     
     printf("\nEnter roll no : ");
     scanf("%d",&roll);
     
     struct Node *tmp;
     tmp=start;
     
     while(tmp!=NULL)
     {
       if(tmp->roll==roll)
       {
            printf("\nRoll     : %d",tmp->roll);
            printf("\nName     : %s",tmp->name);
            printf("\nDept     : %s",tmp->dept);
            found=1;
       }
       tmp=tmp->next;
     }          
     if(found==0)
       printf("Not found!\n");
}

void Del()
{
     int roll,found=0;
     
     printf("\nEnter roll no : ");
     scanf("%d",&roll);
     
     struct Node *tmp,*otmp;
     tmp=start;
     
     
     while(tmp!=NULL)
     {
       if(tmp->roll==roll)
       {
            //tmp->next=tmp->next->next;
            otmp->next=tmp->next;
            free(tmp);
            found=1;
       }
       otmp=tmp;
       tmp=tmp->next;
     }          
     
     if(found==0)
       printf("Not found!\n");
}

struct Node *create(int roll,char name[20], char dept[20])
{
     struct Node *ptr= malloc(sizeof(struct Node));
     ptr->roll=roll;
     strcpy(ptr->dept,dept);
     strcpy(ptr->name,name);
     ptr->next=NULL;
     return ptr;
}

void ins(struct Node *np)
{
     if(start==NULL)start=np;
     else
     {
         save=start;
         start=np;
         np->next=save;
     }
}

