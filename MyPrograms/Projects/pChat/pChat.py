from Tkinter import *
import socket
import thread

laddr='127.0.0.1'
raddr='93.115.84.194'

me='kousthub'

def recv():
    s = socket.socket(socket.AF_INET, socket.SOCK_STREAM)
    s.bind(('',80))
    s.listen(1)
    conn, addr = s.accept()

    print 'Connected by', addr
    while 1:
        data = conn.recv(2048)
        data=data.strip()
        if not data: break
        textbox1.insert(INSERT,me+' :  '+data+'\n')
        txt.delete(0,END)
    conn.close()
    s.shutdown

def send(event):
    s.sendall(txt.get())

thread.start_new_thread(recv,())

s=socket.socket(socket.AF_INET,socket.SOCK_STREAM)
s.connect((raddr,80))

frame=Tk()
txt=Entry(frame,width=100)
textbox1=Text(frame,width=100)

txt.bind('<Return>',send)

txt.pack()
textbox1.pack()

frame.mainloop()
s.close()
