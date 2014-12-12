from Tkinter import *
import cookielib
import mechanize
import re


def search():
	if(new.entry2.get()==''):
		new.textbox6.insert(INSERT,'Enter the search query..\n')
		return
	if(new.entry4.get()==''):
		new.textbox6.insert(INSERT,'Enter the no. if results needed..\n')
		return
	proxy=new.entry41.get()
	proxymatch=re.search('[\d]+[.][\d]+[.][\d+][.][\d+]',proxy)
	if(proxymatch and proxymatch.group()!=proxy):
		new.textbox6.insert(INSERT,'Enter a valid proxy..\n')
		return
	browser=mechanize.Browser()
	if proxy!='':
		actualproxy={'http':proxy}
		browser.set_proxies(actualproxy)
	if new.cookies.get()==0:
		cookiejar=cookielib.LWPCookieJar()
		browser.set_cookiejar(cookiejar)
	header=[('User-Agent', 'Nokia6630/1.0 (2.3.129) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1')]
	browser.addheaders=header
	query=new.entry2.get()
	query=query.replace(' ','+')
	no_of_results=int(new.entry4.get())
	browser.set_handle_robots(False)
	count=0
	for n in range(no_of_results*5):
		pno=str(n)
		url="http://www.google.com/search?q="+query+"&start="+pno
		page=browser.open(url)
		lines=page.read()
		lines.replace('<b>','')
		urllist=re.findall(r'cite">[\w]+[./][\w./]+[./]?</span',lines)
		print len(urllist)
		for i in range(len(urllist)):
			urllist[i]=urllist[i][6:-6]
			if(urllist[i].find('..')==-1 and urllist[i].find('...')==-1 and urllist[i] not in actualurllist):
				actualurllist.append(urllist[i])
				new.textbox6.insert(INSERT,urllist[i]+'\n')
			if count==no_of_results:
				break
		if count==no_of_results:
			break
def save():
	fname=new.entry3.get()
	if fname=='':
		fname='new.html'
	else:
		fname+='.html'
	f=open(fname,'w')
	f.write(r'<html>'+'\n')
	f.write(r'<body>'+'\n')
	f.write(r'<h1>'+'QUERY--'+new.entry2.get().upper())
	f.write(r'<h2>'+'______________________________________________________________________________________')
	for i in actualurllist:
		f.write(r'<p>'+'\n')
		f.write(r'<a href="http://'+i+r'" target="_blank">'+i+'\n')
		f.write('\n')
	f.write('\n')
	f.close()
		
		
		
	
class window:
	def __init__(self):
		self.root=Tk()
		#FRAME-1
		
		self.frame1=Frame(self.root)
		self.frame1.pack(side=TOP,expand=YES,fill=BOTH)
		text='This program can be used to mass search google anonymously.\nJust complete the queries....'
		text+='\nThe results will be automatically saved to the filename which you give (default:new.html) in the same directory in which the program\nis located.'
		self.label1=Label(self.frame1,text=text)
		self.label1.pack(side=LEFT,expand=YES,fill=BOTH)
		#FRAME-2
		
		self.frame2=Frame(self.root)
		self.frame2.pack(side=TOP,expand=YES,fill=BOTH)
		self.label2=Label(self.frame2,text="QUERY:",width=15)
		self.entry2=Entry(self.frame2,width=35)
		self.label2.grid(column=0,columnspan=6)
		self.entry2.grid(column=15,columnspan=35,row=0)
		#FRAME-3
		
		self.frame3=Frame(self.root)
		self.frame3.pack(side=TOP,expand=YES,fill=BOTH)
		self.label31=Label(self.frame3,text="FILENAME:",width=15)
		self.entry3=Entry(self.frame3,width=35)
		self.label32=Label(self.frame3,text=".html")
		self.label31.grid(column=0,columnspan=9)
		self.entry3.grid(column=15,columnspan=35,row=0)
		self.label32.grid(column=50,row=0)
		#FRAME-4
		
		self.frame4=Frame(self.root)
		self.frame4.pack(side=TOP,expand=YES,fill=BOTH)
		self.label4=Label(self.frame4,text="NO.OF RESULTS:",width=15)
		self.entry4=Entry(self.frame4,width=35)
		self.label4.grid(column=0,columnspan=15)
		self.entry4.grid(column=15,columnspan=35,row=0)
		#FRAME-41
		self.frame41=Frame(self.root)
		self.frame41.pack(side=TOP,expand=YES,fill=BOTH)
		self.label411=Label(self.frame41,text="HTTP PROXY(IP):",width=15)
		self.entry41=Entry(self.frame41,width=35)
		self.label411.grid(column=0,columnspan=15)
		self.entry41.grid(column=15,columnspan=35,row=0)
		self.label412=Label(self.frame41,text="(leave blank if you dont need anonymity)")
		self.label412.grid(column=50,row=0)
		#FRAME-42
		self.frame42=Frame(self.root)
		self.frame42.pack(side=LEFT,expand=YES,fill=BOTH)
		self.cookies=IntVar()
		self.checkbutton42=Checkbutton(self.root,text="ENABLE COOKIES",var=self.cookies)
		self.checkbutton42.pack()
		
		#FRAME-5
		
		self.frame5=Frame(self.root)
		self.frame5.pack(side=TOP,expand=YES,fill=BOTH)
		self.b51=Button(self.frame5,text='SEARCH',width=34,command=search)
		self.b51.pack(side=LEFT,expand=NO)
		self.b52=Button(self.frame5,text='SAVE TO FILE',width=34,command=save)
		self.b52.pack(side=LEFT,expand=NO)
		self.b53=Button(self.frame5,text='QUIT',width=34,command=quit)
		self.b53.pack(side=LEFT,expand=NO)
		#FRAME-6
		
		self.frame6=Frame(self.root)
		self.frame6.pack()
		self.scrollbar6=Scrollbar(self.frame6)
		self.scrollbar6.pack(side=RIGHT,fill=Y)
		self.textbox6=Text(self.frame6,yscrollcommand=self.scrollbar6.set,width=90,height=25)
		self.textbox6.pack()
		self.scrollbar6.config(command=self.textbox6.yview)
		
		
new=window()
actualurllist=[]
		
def main():
	new.root.mainloop()

if __name__=='__main__':
	main()