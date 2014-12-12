from threading import Thread

a=5

def changeval():
	global a
	print a
	a=3
	
print a
changeval()
print a