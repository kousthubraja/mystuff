import requests
import sys,os

fname=sys.argv[1]
file=open(fname)
txt=file.read()

fname=os.path.basename(fname)

content={'fname':fname, 'content':txt}

res=requests.post("http://server880.comxa.com/OnlineNodepad.php",content)

print res
