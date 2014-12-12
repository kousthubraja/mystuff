from decimal import *
from math import *

myothercontext = Context(prec=100, rounding=ROUND_HALF_DOWN)
setcontext(myothercontext)

for i in range(2,100):
    
    s=str(Decimal(str(i)) ** Decimal('.5'))[2:100]
    print(s)
