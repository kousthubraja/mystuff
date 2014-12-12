#include<stdio.h>
#include<math.h>

det(int n, int m[10][10])
{
	int dl=0;
	if(n==2)
		return m[0][0]*m[1][1]-m[0][1]*m[1][0];
	else
	{
	
	int i,j,col;

	int sm[10][10];
				
		for(col=0;col<n;col++)
		{
			int subi=0;
			for(i=1;i<n;i++)
			{
				int subj=0;
				for(j=0;j<n;j++)
				{
					if(j!=col)
					{
						sm[subi][subj]=m[i][j];
						subj++;
					}
				}
				subi++;
			}
			
				dl+=pow(-1,col)*m[0][col]*det(n-1,sm);
			
		}
	}
	return dl;
}


int main()
{
		int m[10][10],j,i,n;
		printf("Enter the size : ");
		scanf("%d",&n);
		for(i=0;i<n;i++)
	  		for(j=0;j<n;j++)
	    		scanf("%d",&m[i][j]);
		
		printf("The determinant is %d\n",det(n,m));
		return 0;
}
