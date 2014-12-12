#include<stdio.h>

int board[10];
int move=1;

int adj_matrix[10][8]={
	{0,0,0,0,0,0,0,0}, 
	{2,4,5,0,0,0,0,0},//1
	{1,3,5,0,0,0,0,0},//2
	{2,5,6,0,0,0,0,0},//3
	{1,5,7,0,0,0,0,0},//4
	{1,2,3,4,6,7,8,9},//5
	{3,5,9,0,0,0,0,0},//6
	{4,5,8,0,0,0,0,0},//7
	{5,7,9,0,0,0,0,0},//8
	{5,6,8,0,0,0,0,0}
};

int check_adj(int p1,int p2){
	int i;
	for(i=0;i<=9 && adj_matrix[p1][i]!=0;i++)
	{
		if(adj_matrix[p1][i]==p2)
			return 1;
	}
	
	return 0;
}

int check_com_won(int p[10]){

int i;
	// for(i=1;i<=9;i++){
		// printf("%c  ",p[i]==2?'-':p[i]==3?'o':'x');
		// if(i%3==0) printf("\n\n");
	// }
	
    if(p[1]*p[2]*p[3]==27||
       p[1]*p[4]*p[7]==27||
       p[1]*p[5]*p[9]==27||
       p[2]*p[5]*p[8]==27||
       p[3]*p[6]*p[9]==27||
       p[3]*p[5]*p[7]==27||
       p[4]*p[5]*p[6]==27||
       p[7]*p[8]*p[9]==27)
       {
			  return 1;
       }
       
       return 0;
}

int check_hum_won(int p[10]){

int i;
	// for(i=1;i<=9;i++){
		// printf("%c  ",p[i]==2?'-':p[i]==3?'o':'x');
		// if(i%3==0) printf("\n\n");
	// }
	
    if(p[1]*p[2]*p[3]==125||
       p[1]*p[4]*p[7]==125||
       p[1]*p[5]*p[9]==125||
       p[2]*p[5]*p[8]==125||
       p[3]*p[6]*p[9]==125||
       p[3]*p[5]*p[7]==125||
       p[4]*p[5]*p[6]==125||
       p[7]*p[8]*p[9]==125)
       {
			  return 1;
       }
       
       return 0;
}

void show_board(){
	int i;
	for(i=1;i<=9;i++){
		printf("%c  ",board[i]==2?'-':board[i]==3?'O':'X');
		if(i%3==0) printf("\n\n");
	}
}

int check_hum_win(int p[10]){
    if(p[1]*p[2]*p[3]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[2]==2){return 2;}
	 else if(p[3]==2){return 3;}
    }
    else if(p[1]*p[4]*p[7]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[4]==2){return 4;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[1]*p[5]*p[9]==50)
    {
	 if(p[1]==2){return 1;}
	 else if(p[5]==2){return 5;}
	 else if(p[9]==2){return 9;}
    }
    else if(p[2]*p[5]*p[8]==50)
    {
	 if(p[2]==2){return 2;}
	 else if(p[5]==2){return 5;}
	 else if(p[8]==2){return 8;}
    }
    else if(p[3]*p[6]*p[9]==50)
    {
	 if(p[3]==2){return 3;}
	 else if(p[6]==2){return 6;}
	 else if(p[9]==2){return 9;}
    }
    else if(p[3]*p[5]*p[7]==50)
    {
	 if(p[3]==2){return 3;}
	 else if(p[5]==2){return 5;}
	 else if(p[7]==2){return 7;}
    }
    else if(p[4]*p[5]*p[6]==50)
    {
	 if(p[4]==2){return 4;}
	 else if(p[5]==2){return 5;}
	 else if(p[6]==2){return 6;}
    }
    else if(p[7]*p[8]*p[9]==50)
    {
	 if(p[7]==2){return 7;}
	 else if(p[8]==2){return 8;}
	 else if(p[9]==2){return 9;}
    }
    
    return 0;
}

int next_move(){
	int i,j,k;
	int dup[10];
	
	
		
	if(move==1 || move==2 || move==3){
			for(i=1;i<=9;i++)
				if(board[i]==2){
					board[i]=3;
					printf("\n i place at %d\n",i);
					return i;
				}
	}
	else{
		//com win
		for(i=1;i<=9;i++){
				if(board[i]==3){
					for(j=0;j<8 ;j++) //&& adj_matrix[i][j]!=0
					{
						//printf("+++++%d %d %d %d\n", i,j, adj_matrix[i][j], board[adj_matrix[i][j]]);
						
						if(board[adj_matrix[i][j]]==2){
							//return i,adj_matrix[i][j];
								for(k=1;k<=9;k++)
									dup[k]=board[k];
								dup[adj_matrix[i][j]]=3;
								dup[i]=2;
								if(check_com_won(dup)){
									printf("\n winning moved from %d to %d\n",i,adj_matrix[i][j]);
									board[i]=2;
									board[adj_matrix[i][j]]=3;
									return 0;
								}
								
							}
					}
				}
		}
		
		k=check_hum_win(board);
		// hum win
		if(k!=0){	
			i=k;
			for(j=0;j<8 ;j++) //&& adj_matrix[i][j]!=0
			{
				// printf("+++++%d %d %d %d\n", i,j, adj_matrix[i][j], board[adj_matrix[i][j]]);
				
				if(board[adj_matrix[i][j]]==3){
					// return i,adj_matrix[i][j];
					printf("defend\n");
					board[i]=3;
					board[adj_matrix[i][j]]=2;
					return 0;
						
					}
			}
		}
		
		for(i=1;i<=9;i++){
		
				if(board[i]==3){
					for(j=0;j<8 ;j++) //&& adj_matrix[i][j]!=0
					{
						for(k=1;k<=9;k++)
							dup[k]=board[k];
						//printf("+++++%d %d %d %d\n", i,j, adj_matrix[i][j], board[adj_matrix[i][j]]);
						dup[i]=2;
						dup[adj_matrix[i][j]]=3;
						if(check_hum_win(dup)!=0)
							continue;
						if(board[adj_matrix[i][j]]==2){
							//return i,adj_matrix[i][j];
								printf("\n moved from %d to %d\n",i,adj_matrix[i][j]);
								board[i]=2;
								board[adj_matrix[i][j]]=3;
								return 0;
							}
					}
				}
		}
					
		return 0;
	}
		
}

void com_place(int p){
	board[p]=3;
}

int main(){

	int i,p,from,to;
	
	for(i=1;i<=9;i++)
		board[i]=2;
	
	while(1){
		if(move==1 || move==2 || move==3)
		{
			printf("Enter a position to place : ");
			scanf("%d",&p);
			
			if(board[p]==2)
				board[p]=5;
			else{
				printf("Non empty position\n");
				continue;
			}
			next_move();
			move++;
			
			show_board();
			
		}
		else{
			printf("Enter position to move from : ");
			scanf("%d",&from);
			
			if(board[from]!=5){
				printf("Invalid source\n");
				continue;
			}
			
			printf("Enter destination position : ");
			scanf("%d",&to);
			
			if(board[to]!=2){
				printf("Non empty position\n");
				continue;
			}
			if(check_adj(from,to))
			{
				board[from]=2;
				board[to]=5;
			}
			else
			{
				printf("Not adjucent\n");
				continue;
			}
			show_board();
			next_move();
			show_board();
			move++;
			
		}
	}

	
	return 0;
}


