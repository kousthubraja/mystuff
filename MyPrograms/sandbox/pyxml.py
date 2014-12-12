import xml.etree.ElementTree as ET
from ftplib import FTP
import random

def checklogin(host,user,passwd):
  try:
		con=FTP(host,user,passwd)
#		con.mkd(str(int(random.random()*10000)))
    return 1
	except:
		return 0


txt=open('FileZilla.xml').read()

root=ET.fromstring(txt)

serverlist=root.find('Servers').findall('Server')

for s in serverlist:
  try:
    host=s.find('Host').text
    user=s.find('User').text
    paswd=s.find('Pass').text
    print host,user,pas
  except:
    pass
  