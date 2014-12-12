####################################
## Server authentication details. ##
####################################
host="server880.comxa.com"
user="a9814598"
passwd="iamkr01"

##############################
## Written by Kousthub Raja ##
##############################
from ftplib import FTP
import glob
import os

folder=os.getcwd().split(os.sep)[-1]

def upload(con):
	flist=con.nlst()
	if folder not in flist:
		con.mkd(folder)

	con.cwd(folder)

	files=glob.glob("*")
	for fil in files:
		print "[+] Uploading : "+fil
		try:
			con.storbinary("STOR "+fil,open(fil,"rb"))
		except:
			print "Could not upload : %s" % fil

def download(con):
	con.cwd(folder)
	flist=con.nlst()
	for fil in flist:
		if fil!="." and fil!="..":
			print "[+] Downloading : "+fil
			try:
				con.retrbinary("RETR "+fil,open(fil,"wb").write)
			except:
				print "Could not download : %s" % fil
	
##################
## Main program ##
##################
def main():
  print "Connecting to server. Please wait..."
  con=FTP(host,user,passwd)
  try:
    con.cwd("public_html")
  except:
    print "No public_html folder found, using root folder."

  flist=con.nlst()
  if 'sync' not in flist:
    con.mkd('sync')

  stype=raw_input("Upload to server/Download [U/D]: ")
  stype=stype.lower().strip()

  if(stype=="u"):
    upload(con)
  elif(stype=="d"):
    download(con)
  else:
    print "Invalid Option"


  con.close()
  print "\n    Done!"
  raw_input("Press enter to exist..")

def first_run():
  source_code=open(__file__,'r').read()
  source_head=source_code[0:300]
  source_body=source_code[300:-1]
  if 'DEFAULT_HOST' in source_head:
    print "You need to enter your FTP server's login details for the first time use. This can be later changed easily by editing source.\n\n"
    host=raw_input("Enter your Host name [eg: ftp.mysite.com ] : ")
    user=raw_input("Enter your User name [eg: sasi ]           : ")
    passwd=raw_input("Enter your Password [eg: secret ]          : ")
    source_head=source_head.replace('DEFAULT_HOST',host)
    source_head=source_head.replace('DEFAULT_USER',user)
    source_head=source_head.replace('DEFAULT_PASSWORD',passwd)
    source_code=source_head+source_body
    print host
    open(__file__,'w').write(source_code)
    print "Server Setup done. You dont have to repeat this. Execute once again to sync."
    # print source_code
    
if __name__=='__main__':
  first_run()
  main()
 