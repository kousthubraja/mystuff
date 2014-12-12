import urllib2

def load(url):
	page=urllib2.urlopen(url)
	string= page.read()
	return string

filecontent=""
for i in range(14,20):
	link="http://www.exploit-db.com/ghdb/"+str(i)
	try:
		str2 = load(link)
	except:
		continue
	print link 
	endpos2=0
	
	startpos2=str2.find('rel="nofollow">',endpos2)
	endpos2=str2.find('</a>',startpos2)
	keyword=str2[startpos2+15:endpos2]

	startpos2=str2.find('Submited: ')
	endpos2=str2.find('</p>',startpos2)
	date=str2[startpos2+10:endpos2]

	startpos2=str2.find('class="text">',endpos2)
	endpos2=str2.find('</p>',startpos2)
	text=str2[startpos2+13:endpos2]
	
	startpos2=endpos2
	
	filecontent+="Keyword"+'\t'+keyword+'\n'
	filecontent+='Date\t'+date+'\n'
	filecontent+=text
	filecontent+='\n'+'\n'
	
	
	filecontent=filecontent.replace("&quot;",'"')
	filecontent=filecontent.replace("&amp;",'&')
	filecontent=filecontent.replace("<br />",'\n')
	file=open("gh.txt","a")
	file.write(filecontent)
	file.close()
	filecontent=""