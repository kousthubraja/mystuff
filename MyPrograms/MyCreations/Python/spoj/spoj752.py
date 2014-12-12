t=input()
while t:
    lin=raw_input()
    lin=lin.split()
    x=int(lin[0])
    y=int(lin[1])
    n=int(lin[2])
    print(pow(x,y,n))
    t-=1
