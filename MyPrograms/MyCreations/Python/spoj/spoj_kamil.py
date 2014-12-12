t=10
while t:
    s=raw_input()
    print 2**(s.count('T')+s.count('D')+s.count('L')+s.count('F'))
    t-=1
