import urllib2
import re
from HTMLParser import HTMLParser

class MLStripper(HTMLParser):
    def __init__(self):
        self.reset()
        self.fed = []
    def handle_data(self, d):
        self.fed.append(d)
    def get_data(self):
        return ''.join(self.fed)

def strip_tags(html):
    s = MLStripper()
    s.feed(html)
    return s.get_data()

def getcon(url):
	content=urllib2.urlopen(url).read()
	content=content.replace("&#8211;","-")
	content=content.replace("&#8212;","--")
	res=re.findall(r'<h1.+>(.+)</h1> ',content,re.DOTALL)
	title=res[0].strip()
	print title
	
	res=re.findall(r'<div.+>(.+Views).+</div>',content,re.DOTALL)
	view=res[0].strip()
	
	res=re.findall(r'<div class="entry-content">(.+)dd_post_share',content,re.DOTALL)
	t=res[0].strip()
	text=strip_tags(t)
	res=re.findall(r'===.+hatim',text,re.DOTALL)
	if res:
		print res[0]
		text=text.replace(res[0],"")
#	print text
	text=title+"\n"+view+"\n\n"+text
	f=open(title+".txt",'w')
	f.write(text)
	f.close()
	  

for i in range(1,12):
	url = "http://tabandchord.com/category/tab/tab-hindi/page/"+str(i)+"/"
	con=urllib2.urlopen(url)
	txt=con.read()
	lst=re.findall(r'(http://tabandchord.com/\d\d\d\d/\d\d/.+/)"',txt)
	for l in lst:
		getcon(l)
