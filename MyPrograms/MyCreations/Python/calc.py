def calc(exp):
    tmp=""
    if exp[0]=="(":
        i=1
        while exp[i]!=")":
            tmp+=exp[i]
            i+=1
    print tmp
    calc(tmp)
    

calc("(4+5)")
            
