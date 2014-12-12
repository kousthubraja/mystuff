import webapp2
import urllib2

def load(url):
	page=urllib2.urlopen(url)
	string= page.read()
	return string
	
def main(self):
	filecontent=""
	for id in range(0,12):
		if id==9:
			continue
		try:
		
			url="http://www.exploit-db.com/google-dorks/?action=search&ghdb_search_text=&ghdb_search_cat_id="+str(id)

			string=load(url)

			endpos=0
			startpos=0

			startpos=string.find("category-name")
			startpos=string.find('">',startpos+15)
			endpos=string.find("</a",startpos)
			category=string[startpos+2:endpos]
			filecontent="<h3>"+category+"</h3><br />"+filecontent
			count=string.count('class="data"')
			endpos=startpos=0

			for id2 in range(0,10):
				startpos=string.find('"http://www.exploit-db.com/ghdb/',endpos)
				endpos=string.find('">',startpos)
				link=string[startpos+1:endpos]
				try:
					str2=load(link)
					
					endpos2=0
					# print link
					
					startpos2=str2.find('<h1>',endpos2)
					endpos2=str2.find('</h1>',startpos2)
					keyword=str2[startpos2+4:endpos2]

					startpos2=str2.find('Submited: ')
					endpos2=str2.find('</p>',startpos2)
					date=str2[startpos2+10:endpos2]

					startpos2=str2.find('class="text">',endpos2)
					endpos2=str2.find('</p>',startpos2)
					text=str2[startpos2+13:endpos2]
					
					startpos2=endpos2
				except :
					 self.response.out.write(link)
			
				filecontent+="Keyword : "+'\t'+keyword+'<br />'
				filecontent+='Date : \t'+date+'<br />'
				filecontent+=text
				filecontent+='<br />'
				
		except:
			self.response.out.write(url)
	self.response.out.write(filecontent)
	
class MainHandler(webapp2.RequestHandler):
    def get(self):
		main(self)
		self.response.out.write("End")

app = webapp2.WSGIApplication([('/', MainHandler)],
                              debug=False)
