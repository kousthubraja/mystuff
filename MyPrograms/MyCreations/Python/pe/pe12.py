from math import *

def tri(n):
	return (n/2)*(1+n)


def nfact(n):
	t=2
	for i in range(1,sqrt(n)+1):
		if n%i==0:
			t+=2
	return t

import time
j=1
i=2
t1=time.time()
while(1):
   if(nfact(j)>=500):
           print("The number is : "+str(j))
           t1=time.time()-t1
           print t1
           break
   j=j+i
   i+=1
