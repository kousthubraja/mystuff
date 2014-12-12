import socket
import thread

s=socket.socket()
host=socket.gethostname()
port=1223
s.bind((host,port))

#while True:
s.listen(5)
txt=""
con,addr=s.accept()
print addr
while True:
	txt= con.recv(1024)
	print txt
	con.send(raw_input(":")+'\n')
con.close()