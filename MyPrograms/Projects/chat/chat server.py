#!/usr/bin/env python

import socket

addr="localhost"
port=10000
con=socket.socket()
con.bind((addr,port))
con.listen(1)
stream,inf=con.accept()
stream.sendall("Welcome")
con.close