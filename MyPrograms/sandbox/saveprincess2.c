#include <stdio.h>
#include <string.h>
#include <math.h>
void nextMove(int n, int r, int c, char grid[101][101]){
    int i,j;
    int pr,pc;
    
    for(i=0; i<n; i++) {
			for(j=0; j<n; j++)
			{
				if(grid[i][j]=='p') {
					pr=i;
					pc=j;
					goto findpath;
				}
			}
			printf("\n");
    }
    
findpath:
		if(pr>r){
			printf("DOWN");
		}
		else if(pr<r){
			printf("UP");
		}
		else if(pc<c){
			printf("LEFT");
		}
		else if(pc>c){
			printf("RIGHT");
		}
    
}

int main(void) {

    int n, r, c;
	  int i;
    scanf("%d", &n);
    scanf("%d", &r);
    scanf("%d", &c);

   char grid[101][101];

    for(i=0; i<n; i++) {
        scanf("%s[^\n]%*c", grid[i]);
    }

    nextMove(n, r, c, grid);
    return 0;
}
