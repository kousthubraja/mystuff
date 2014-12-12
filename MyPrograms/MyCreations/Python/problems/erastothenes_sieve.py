import time
n=int(input())
t=time.time()
lst=range(2,n+1)
prm=[]
p=2
while n>p*p:
    for i in lst:
        if i%p==0:
            lst.remove(i)
    prm.append(p)
    p=lst[0]
    
prm+=lst
print(prm,(time.time()-t)*1000)
