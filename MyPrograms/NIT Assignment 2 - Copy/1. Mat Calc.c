#include<stdio.h>
#include<math.h>

#define max 11

void sum();
void diff();
void prod();
void determin();
int det();
void trans();
void elesum();


int main()
{
    int choice;
start:
	
  printf("\n******************************************");
	printf("\n*          Matrix Calculator             *");
	printf("\n******************************************\n");
	printf("\nEnter the operation : \n");
    printf("1. Sum\n2. Difference\n3. Product\n");
    printf("4. Determinant\n5. Transpose\n6. Element sum\n7. Exit\n\n>> ");
    scanf("%d",&choice);
    switch(choice)
    {
      case 1:
           sum();
           break;
      case 2:
           diff();
           break;
      case 3:
           prod();
           break;
      case 4:
           determin();
           break;
      case 5:
           trans();
           break;
      case 6:
           elesum();
           break;
      case 7:
           return 0;
    }
    
    printf("Want to continue? [Y/N] : ");
    scanf(" %c",&choice);
    if(choice=='Y' || choice =='y')
      goto start;
    return 0;
}

void sum()
{
    int N,M,i,j;
    int m[max][max],n[max][max],r[max][max];
    
    printf("Enter matrix rows (maximum %d) : ",max-1);
    scanf("%d",&M);
    printf("Enter matrix columns (maximum %d) : ",max-1);
    scanf("%d",&N);
        
    printf("Enter first matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&m[i][j]);
      }
      
    printf("Enter second matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&n[i][j]);
      }    
    
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        r[i][j]=m[i][j]+n[i][j];
      }

    
    printf("The sum matrix is :\n");
    for(i=1;i<=M;i++)
    {
      for(j=1;j<=N;j++)
      {
        printf("%d ",r[i][j]);
      }
      printf("\n");
    }
}

void diff()
{
    int N,M,i,j;
    int m[max][max],n[max][max],r[max][max];
    
    printf("Enter matrix rows (maximum %d) : ",max-1);
    scanf("%d",&M);
    printf("Enter matrix columns (maximum %d) : ",max-1);
    scanf("%d",&N);
        
    printf("Enter first matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&m[i][j]);
      }
      
    printf("Enter second matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&n[i][j]);
      }    
    
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        r[i][j]=m[i][j]-n[i][j];
      }

    
    printf("The sum matrix is :\n");
    for(i=1;i<=M;i++)
    {
      for(j=1;j<=N;j++)
      {
        printf("%d ",r[i][j]);
      }
      printf("\n");
    }
}

void trans()
{
    int N,M,i,j;
    int m[max][max];
    
    printf("Enter matrix rows (maximum %d) : ",max-1);
    scanf("%d",&M);
    printf("Enter matrix columns (maximum %d) : ",max-1);
    scanf("%d",&N);
        
    printf("Enter matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&m[i][j]);
      }
    
    printf("The transpose matrix is :\n");
    for(i=1;i<=N;i++)
    {
      for(j=1;j<=M;j++)
      {
        printf("%d ",m[j][i]);
      }
      printf("\n");
    }
}

void elesum()
{
    int N,M,i,j,sum=0;
    int m[max][max];
    
    printf("Enter matrix rows (maximum %d) : ",max-1);
    scanf("%d",&M);
    printf("Enter matrix columns (maximum %d) : ",max-1);
    scanf("%d",&N);
        
    printf("Enter matrix elements : \n");
    for(i=1;i<=M;i++)
      for(j=1;j<=N;j++)
      {
        printf("Enter element at %d %d : ",i,j);
        scanf("%d",&m[i][j]);
      }
    
    for(i=1;i<=M;i++)
    {
      for(j=1;j<=N;j++)
      {
        sum+=m[i][j];
      }
    }
    printf("Sum of elements is %d\n",sum);
}

void prod()
{
	int N1,M1,M2,N2,j,i,sum,k;
	int m[max][max],n[max][max],r[max][max];

	printf("Enter 1st matrix rows (maximum %d) : ",max-1);
	scanf("%d",&M1);
	printf("Enter 1st matrix columns (maximum %d) : ",max-1);
	scanf("%d",&N1);

	printf("Enter first matrix elements : \n");
	for(i=0;i<M1;i++)
		for(j=0;j<N1;j++)
		{
			printf("Enter element at %d %d : ",i+1,j+1);
			scanf("%d",&m[i][j]);
		}
		
	printf("Enter 2nd matrix rows (maximum %d) : ",max-1);
	scanf("%d",&M2);
	printf("Enter 2nd matrix columns (maximum %d) : ",max-1);
	scanf("%d",&N2);

	if(N1==M2)
	{
		printf("Enter second matrix elements : \n");
		for(i=0;i<M2;i++)
			for(j=0;j<N2;j++)
			{
				printf("Enter element at %d %d : ",i+1,j+1);
				scanf("%d",&n[i][j]);
			}    
			
		
		for(i=0;i<M1;i++)
		{
			r[i][j]=0;
		}
		
		
		for(i=0;i<M1;i++)
		{
			for(j=0;j<N2;j++)
			{
				sum=0;
				for(k=0;k<M1;k++)
					sum+=m[i][k]*n[k][j];
				r[i][j]=sum;
			}
		}

		printf("The product matrix is :\n");
		for(i=0;i<M1;i++)
		{
			for(j=0;j<N2;j++)
			{
				printf("%d ",r[i][j]);
			}
			printf("\n");
		}
	}
	else
		printf("Multiplication not possible with the given order!");   

}


void determin()
{
    int N,i,j;
    int m[max][max];
    
    printf("Enter matrix size (maximum %d) : ",max-1);
    scanf("%d",&N);
        
    printf("Enter matrix elements : \n");
    for(i=0;i<N;i++)
      for(j=0;j<N;j++)
      {
        printf("Enter element at %d %d : ",i+1,j+1);
        scanf("%d",&m[i][j]);
      }
    
    printf("The determinent of the matrix is %d\n",det(N,m));
}

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
