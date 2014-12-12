from threading import Thread
from time import sleep
import socket

ks=socket.socket()
host=socket.gethostname()
kport=8046
ks.bind((host,kport))
ks.listen(5)
kcon=0

ms=socket.socket()
mport=8045
ms.bind((host,mport))
ms.listen(5)
mcon=0
	


def log(str):
	with open("km_log.txt","a") as logfile:
		logfile.write(str+"\n")
	
def listen_k():
	
	txt=""
	print "Waiting for connection from K..."
	while True:
		try:
			global kcon
			global mcon
			kcon,addr=ks.accept()
			print "K connected"
			log("K connected")
			# print mcon,kcon
			try:
				if mcon!=0:
					mcon.send("K connected~")
					kcon.send("M is online~")
			except Exception,e:
				print str(e)
				
			while True:
				txt= kcon.recv(1024)
				print "from k :"+txt ##
				if txt.strip()=="":
					kcon.close()
					print "K disconnected"
					log("K disconnected")
					kcon=0
					if mcon!=0:
						try:
							mcon.send("K disconnected~")
						except Exception, e:
							mcon=0
							print str(e)
					else:
						pass
						#restart
					break
				if txt[0]!="`":	log("K : "+txt)
				if mcon!=0:
					mcon.send("K : "+txt+'~')
		except Exception,e:
			print str(e)
			# if e.errno==104:
			try:
				if mcon!=0:
					mcon.send("K disconnected~")
					log("K disconnected")
					kcon.close()
					kcon=0
			except Exception,e2:
				print "e2",str(e2)
def listen_m():

	txt=""
	print "Waiting for connection from M..."
	while True:
		try:
			global mcon
			global kcon
			mcon,addr=ms.accept()
			print "M connected"
			log("M connected")
			try:
				if kcon!=0:
					kcon.send("M connected~")
					mcon.send("K is online~")
			except Exception,e:
				print str(e)
			while True:
				txt= mcon.recv(1024)
				print "from m :"+txt ##
				if txt.strip()=="":
					mcon.close()
					mcon=0
					print "M disconnected"
					log("M disconnected")
					if kcon!=0:
						try:
							kcon.send("M disconnected~")
						except Exception, e:
							kcon=0
							print str(e)
					else:
						pass
						#restart
					break
				if txt[0]!="`":	log("M : "+txt)
				if kcon!=0: 
					kcon.send("M : "+txt+'~')
		except Exception,e:
			print str(e)
			# if e.errno==104:
			try:
				if kcon!=0:
					kcon.send("M disconnected~")
					log("M disconnected")
					mcon.close()
					mcon=0
			except Exception,e2:
				print str(e2)

t1=Thread(target=listen_k,args=())
t2=Thread(target=listen_m,args=())
t1.start()
#t1.join()

t2.start()
#t2join()
