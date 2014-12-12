#include<stdio.h>

int main()
{
    int arr[20];
    int i,j=0,n,t;
    
    printf("Enter the number of elements : ");
    scanf("%d",&n);
    
    printf("Enter the array elements : ");
    for(i=0;i<n;i++)
       scanf("%d",&arr[i]);
    
    for(i=0;i<n;i++)
       for(j=0;j<n;j++)
          if(arr[j]>arr[j+1])
          {
             t=arr[j];
             arr[j]=arr[j+1];
             arr[j+1]=t;
          }
    
    for(i=0;i<n;i++)
       printf("%d\t",arr[i]);
    return 0;
}
    
