#include<stdio.h>

int main()
{
    int arr[20];
    int i,*p,small,n,*q;
    
    printf("Enter the number of elements : ");
    scanf("%d",&n);
    
    printf("Enter the array elements : ");
    for(i=0;i<n;i++)
       scanf("%d",&arr[i]);
    
    p=arr;
    small=*p;
    
    for(i=0;i<n;i++)
    {
       if(*(p+i)<small)
          small=*(p+i);
       printf("%d\t",*(p+i));
    }
    
    printf("Smallest number is %d\n",small);
    return 0;
}
    
