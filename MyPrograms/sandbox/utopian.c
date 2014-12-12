#include <stdio.h>

int treelen(int l) {
	if(l==0) return 1;
	
	if(l%2!=0)
		return 2*l;
	else
	  return l+1;
}

int main(void) {

		int t,N;
		int i,len=1;
		
		scanf("%d",&t);
		while(t--) {
			i=0;len=1;
			scanf("%d",&N);
			while(i<N){
				if(i%2==0)
				  len*=2;
				else
				  len+=1;
				  
			i++;
			}
			
			printf("%d\n",len);
		}
    

    return 0;
}
