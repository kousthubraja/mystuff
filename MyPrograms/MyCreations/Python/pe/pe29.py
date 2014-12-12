import time
t=time.time()
lst=[]
for a in range(2,101):
    for b in range(2,101):
        exp=a**b
        if not exp in lst:
            lst.append(exp)
t=time.time()-t
print len(lst),t
