import socket

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect(('localhost',80))
command=raw_input("Enter the commands separated by \\n'")
s.sendall(command)
print s.recv(2048)