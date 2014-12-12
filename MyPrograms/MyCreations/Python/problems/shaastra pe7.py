from math import *

#Check if n is perfect exth power
def checkpr(n,ex):
    r=round(pow(n,1.0/ex))
    if pow(r,ex)==n:
        return 1
    else:
        return 0

##plist=[2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37]
plist=[2,3,5]#, 7, 11, 13, 17, 19, 23, 29, 31, 37]
n=1
while 1:
    f=1
    for p in plist:
       print p
       if checkpr(n/p,p):
           f=0
       if f==0:
            break
    if f==1:
       print n,f
       break
    n+=1
        

##np=0
##t=[2,3]
##for i in range(1,2):#7
##    if i!=6:
##        t+=[6*i-1]
##    if i!=4:
##        t+=[6*i+1]
##print(t)
t=[2,3,5]  

##f=0
##n=1#137438953472
##while(f==0):
##    f=1
##    for i in t:
##        if not checkpr(n/i,i):
##            f=0
##            break
##    n+=1
##
##print(n-1)

##su=0
##for i in range(0,1000000008):
##    f=0
##    for j in range(2,38):
##        if isprime(j)==1:
##            if int(round(i**(1/j),2))==round((i/j),2):
##                su=su+1
##                f=0
##            else:
##                f=1
##                break
##        else:
##            break
##    if f==0:
##        print(su,1000000007-su)
##        break


