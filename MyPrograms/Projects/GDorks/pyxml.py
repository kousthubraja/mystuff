import xml.etree.ElementTree as ET
from ftplib import FTP
import random

txt=open('ghdb1.xml').read()

root=ET.fromstring(txt)

print root
# for s in serverlist:
  # try:
    # host=s.find('Host').text
    # user=s.find('User').text
    # paswd=s.find('Pass').text
    # print host,user,pas
  # except:
    # pass
  