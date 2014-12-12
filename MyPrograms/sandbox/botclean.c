#include<stdio.h>

void next_move(int r, int c, char grid[101][101]){
    int n=5;
    int i,j;
    int pr,pc;

		if(grid[r][c]=='d')
		  printf("CLEAN");
		  
    for(i=0; i<n; i++) {
			for(j=0; j<n; j++)
			{
				//if(grid[i][j]=='d') {
//					pr=i;
//					pc=j;
//					goto findpath;
//				}

					printf("%c",grid[i][j]);
			}
			printf("\n");
    }

findpath:
		if(pr>r){
			printf("DOWN");
			if((pr+1)==r && pc==c)
			  printf("CLEAN");
		}
		else if(pr<r){
			printf("UP");
			if((pr-1)==r && pc==c)
			  printf("CLEAN");
		}
		else if(pc<c){
			printf("LEFT");
			if(pr==r && (pc-1)==c)
			  printf("CLEAN");
		}
		else if(pc>c){
			printf("RIGHT");
			if(pr==r && (pc+1)==c)
			  printf("CLEAN");
		}

}
int main(void) {
    int pos[2], i;
    char board[5][5], line[6];
    scanf("%d", &pos[0]);
    scanf("%d", &pos[1]);
    for(i=0; i<5; i++) {
        scanf("%s[^\\n]%*c", line);
        strncpy(board[i], line, 5);
    }
    next_move(pos[0], pos[1], board);
    
    scanf("%d", &pos[0]);
    return 0;
}
