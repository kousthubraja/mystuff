//
//Binary search using recursion
//   By Kousthub Raja
//

#include<stdio.h>

//Function to sort the numbers in ascending order
void sort(int size, int *list)
{
	int i,j,t;
	for(i=0;i<size;i++)
	  for(j=0;j<size;j++)
			if(list[i]<list[j])
			{
				t=list[i];
				list[i]=list[j];
				list[j]=t;
			}
}

//The recursive binary search function. Returns 1 if element found 0 otherwise.
int bin_search(int n, int size, int *list)
{
	int *sublist,i,j;
	
	sublist=(int*)malloc((size/2+1)*sizeof(int)); //Dynamically allocates memory to the sublist

	if(list[size/2]==n)                           //Check if the middle element is equal to n
		return 1;
	else if(size>1)
		if(n>list[size/2])
		{
			for(i=size/2+1,j=0;i<size;i++,j++)
			  sublist[j]=list[i];                     //Copy elements of the original list to a smaller list

		  return bin_search(n,size/2,sublist);      //Binary search in the smaller list
		}
		else
		{
			for(i=0,j=0;i<size/2;i++,j++)
			  sublist[j]=list[i];

			return bin_search(n,size/2,sublist);
		}
	else
		return 0;
	return 0;
}

int main()
{
	int *list,size,i,n;
	printf("Enter the number of elements : ");
	scanf("%d",&size);
	list=(int*)malloc(size*sizeof(int));          //Dynamically allocates memory to the list
	for(i=0;i<size;i++)
	  scanf("%d",&list[i]);
	  
	sort(size,list);

	printf("Enter the element to search : ");
	scanf("%d",&n);

	if(bin_search(n,size,list)==1)
	  printf("Element found\n");
	else
		printf("Element not found\n");

	return 0;
}
