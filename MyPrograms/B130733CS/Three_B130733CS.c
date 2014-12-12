#include<stdio.h>

int main()
{
    int arr[20];
    int i,j,t,small,n,num;
    float sum=0,sum2=0;
    float mean,sd,mode,median;
    
    printf("Enter the number of elements : ");
    scanf("%d",&n);
    
    printf("Enter the numbers : ");
    for(i=0;i<n;i++)
    {
       scanf("%d",&num);
       arr[i]=num;
       sum+=num;
    }
    
    //Sort the array
    for(i=0;i<n;i++)
       for(j=0;j<n;j++)
          if(arr[j]>arr[j+1])
          {
             t=arr[j];
             arr[j]=arr[j+1];
             arr[j+1]=t;
          }
    
    //Mean
    mean=sum/n;
     
    //Median
    if(n%2!=0) 
       median=arr[(n/2)+1];
    else
       median=(arr[(n/2)]+arr[(n+1)/2])/2;
    
    //SD
    for(i=0;i<n;i++)
    {
       t=(arr[i]-mean);
       sum2+=t*t;
    } 
    sd=sum2/n;
    
    //Mode
    int freq=1,oldfreq=1;
    num=mode=arr[i];
    for(i=0;i<n;i++)
    {
       j=i;
       freq=1;
       while(arr[j]==arr[j+1])
       {
          freq++;
          j++;
       }
       if(freq>oldfreq)
       {
          mode=arr[j-1];
          oldfreq=freq;
       }
    }
    
    printf("Mean = %f\n",mean);
    printf("Median = %f\n",median);
    printf("Mode = %f\n",mode);
    printf("SD = %f\n",sd);
    return 0;
}
    
