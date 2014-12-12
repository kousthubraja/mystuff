n=0
>>> d=""
>>> s="A3B3"
>>> for i in range(1,100):
	h=hex(i)
	d=d+h[2:len(h)]
	if d.find("f202")!=-1:
		f+=1
		if f>1:
			break
