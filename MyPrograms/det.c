#include<stdio.h>
#define max 10

int det(int n, int m[max][max])
{
	int i,j,d=0,col,sign=1;

	if(n==2)
		return m[0][0]*m[1][1]-m[0][1]*m[1][0];
	else
	{
		int sm[max][max];
		int si,sj;

		for(col=0;col<n;col++)
		{
			si=0;
			for(i=1;i<n;i++,si++)
			{
				sj=0;
				for(j=0;j<n;j++)
				{
					if(j!=col)
					{
						sm[si][sj]=m[i][j];
						sj++;
					}
				}
			}

			sign=(col%2==0)?1:-1;
			d+=sign*m[0][col]*det(n-1,sm);
		}
		return d;
	}
}

int main()
{
    int m[10][10],n=3;
    int sm[10][10],i,j,col,si,sj;
       
    for(i=0;i<n;i++)
        {
          for(j=0;j<n;j++)
          {
            scanf("%d",&m[i][j]);
          }
        }
    
    
      
            printf("%d ",det(n,m));
        
    scanf("%d",&n);
    return 0;
}
