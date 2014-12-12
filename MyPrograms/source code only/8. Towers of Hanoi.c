#include<stdio.h>
#include<math.h>

void mov(int n, char source[], char dest[], char tmp[])
{
     if(n>0)
     {
       mov(n-1,source,tmp,dest);
       printf("Disk %d from %s to %s\n",n,source,dest);
       mov(n-1,tmp,dest,source);
     }
}

int main()
{
    int n;
    char src[]="Tower 1",tmp[]="Tower 2",dest[]="Tower 3";
    printf("Enter the number of discs : ");
    scanf("%d",&n);
    printf("The minimum number of moves required is %d\n",(int)pow(2,n)-1);
    printf("The moves are following\n");
    printf("[The disks are numbered from top to bottom in ascending order]\n\n");
    mov(n,src,tmp,dest);
    printf("\nAll The disks are now moved from %s to %s\n",src,tmp);
    scanf("%d",&n);
    return 0;
}
    
