x = 0
y = 1
i = 2
while 1:
    su = x + y
    print(su)
    if len(str(su)) == 1000:
        print(i)
        goto .end
    x = y
    y = su
    y = su
    i = i + 1
label .fin
