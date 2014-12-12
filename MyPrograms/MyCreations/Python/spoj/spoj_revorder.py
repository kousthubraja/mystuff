t=input()
lst=[]
while t:
    n=input()
    lst.append(n)
    t-=1
for i in lst[::-1]:
    print i
