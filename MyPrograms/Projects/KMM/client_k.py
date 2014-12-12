import socket
from threading import Thread

s=socket.socket()
host=socket.gethostname()
port=8096
s.connect(("localhost",port))

def rec():
	while True:
		txt=s.recv(1024)
		if txt.strip()=="":
			s.close()
			break
		print txt


thread=Thread(target=rec,args=())
thread.start()
txt=""
while True:
	txt=raw_input("~: ")
	if txt.strip()!="":
		print "Me : "+txt
		s.send(txt)
