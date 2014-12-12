
def d2b(n):
    bStr = ''
    while n > 0:
        bStr = str(n % 2) + bStr
        n = n >> 1
    return bStr

t=input()

while t:
    n=input()
    s=d2b(n)
    s0=int(s[0:11],2)
    s1=int(s[11:15],2)
    s2=int(s[15:20],2)
    if s1==1:
        s1="January"
    elif s1==2:
        s1="February"
    elif s1==3:
        s1="March"
    elif s1==4:
        s1="April"
    elif s1==5:
        s1="May"
    elif s1==6:
        s1="June"
    elif s1==7:
        s1="July"
    elif s1==8:
        s1="August"
    elif s1==9:
        s1="September"
    elif s1==10:
        s1="October"
    elif s1==11:
        s1="November"
    elif s1==12:
        s1="December"
    print s2,s1,s0
    t-=1
