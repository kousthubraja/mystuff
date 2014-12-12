###Server authentication details, different for different users
host="server880.comxa.com"
user="a9814598"
passwd="iamkr01"


#Written by Kousthub Raja
#Program code, same for all users unless modified
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
		s1="Uploading : "
		s2=fil
		#print "Uploading : "+fil,
		lsize=os.path.getsize(fil);
		try:
			rsize=con.size(fil);
		except:
			rsize=lsize
		if lsize!=rsize:
			con.storbinary("STOR "+fil,open(fil,"rb"))
			print '%14s  %20s  %12s' % (s1, s2, "Updated")
		else:
			print '%14s  %20s  %12s' % (s1, s2, "Not Updated")

def download():
	con.cwd(folder)
	flist=con.nlst()
	for fil in flist:
		print "Downloading : "+fil
		if fil!="." and fil!="..":
			con.retrbinary("RETR "+fil,open(fil,"wb").write)

	
print "Connecting to server. Please wait..."
con=FTP(host,user,passwd)
con.cwd("public_html/sync")

stype=raw_input("Upload to server/Download [U/D]: ")
stype=stype.lower().strip()

if(stype=="u"):
	upload()
elif(stype=="d"):
	download()
else:
	print "Invalid Option"



con.close()
print "Done!"
raw_input("Press any key to exist..")
