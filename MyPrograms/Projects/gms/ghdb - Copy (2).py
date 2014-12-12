import urllib2

def load(url):
	page=urllib2.urlopen(url)
	string= page.read()
	return string


for id in range(0,2):

	url="http://www.exploit-db.com/google-dorks/?action=search&ghdb_search_text=&ghdb_search_cat_id="+str(id)

	string=load(url)

	endpos=0
	startpos=0
	filecontent=""

	startpos=string.find("category-name")
	startpos=string.find('">',startpos+15)
	endpos=string.find("</a",startpos)
	category=string[startpos+2:endpos]
	print category
	count=string.count('class="data"')
	endpos=startpos=0

	for i in range(0,2):
		startpos=string.find('"http://www.exploit-db.com/ghdb/',endpos)
		endpos=string.find('">',startpos)
		link=string[startpos+1:endpos]
		str2=load(link)
		
		endpos2=0
		print link
		
		startpos2=str2.find('<h1>',endpos2)
		endpos2=str2.find('</h1>',startpos2)
		keyword=str2[startpos2+4:endpos2]

		startpos2=str2.find('Submited: ')
		endpos2=str2.find('</p>',startpos2)
		date=str2[startpos2+11:endpos2]

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
	file=open(category+".txt","a")
	file.write(filecontent)
	file.close()
