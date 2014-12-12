from ftplib import FTP
import sys
import random

serverlist=open("ftpserv3.txt","r").read()
serverlist=serverlist.split()
random.shuffle(array)
print "Serverlist Loaded - "+str(len(serverlist))

user="anonymous"
passwd=""

for host in serverlist:
	try:
		sys.stdout.write(host+"		-   ")
		con=FTP(host,user,passwd)
		con.mkd(str(int(random.random()*10000)))
		open("writable.txt","a").write(host+"\n")
		print "Writable! :)"
	except:
		print "No Write Permission. :("
	print "\n"