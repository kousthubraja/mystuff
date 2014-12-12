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

def upload():
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

def download():
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
	upload()
elif(stype=="d"):
	download()
else:
	print "Invalid Option"


con.close()
print "[-] Done!"
raw_input("Press enter to exist..")
