from ftplib import FTP
import glob
import os

host="www.shanklyboys.dk"
user="shankly@shanklyboys.dk"
passwd="liverpool"

folder=os.getcwd().split(os.sep)[-1]

print "Connecting to server. Please wait..."
con=FTP(host,user,passwd)
#con.cwd("public_html")

stype=raw_input("Upload to server/Download [U/D]: ")
stype=stype.lower().strip()

if(stype=="u"):
	flist=con.nlst()
	if folder not in flist:
		con.mkd(folder)

	con.cwd(folder)

	files=glob.glob("*")
	for fil in files:
		con.storbinary("STOR "+fil,open(fil,"rb"))
elif(stype=="d"):
	con.cwd(folder)
	flist=con.nlst()
	for fil in flist:
		if fil!="." and fil!="..":
			con.retrbinary("RETR "+fil,open(fil,"wb").write)
else:
	print "Invalid Option"
con.close()
print "Done!"
raw_input("Press any key to exist..")
