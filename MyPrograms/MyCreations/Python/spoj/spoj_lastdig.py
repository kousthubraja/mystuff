##t=input()
##while t:
##    inp=raw_input()
##    inp=inp.split()
##    n=int(inp[0])
##    f=int(inp[1])
##    n=n%10
##    if n==0 or n==1 or n==5 or n==6:
##        print n
##    else:
##        if n==2 or n==3 or n==7 or n==8:
##            n=pow(n,(f%4),10)
##            print n
##        else:
##            if f%2==0:
##                print (n**2)%10
##            else:
##                print (n)%10
##    t-=1

##Clever solution ;)
t=input()
while t:
    inp=raw_input()
    inp=inp.split()
    a=int(inp[0])
    b=int(inp[1])
    print pow(a,b,10)
    t-=1
