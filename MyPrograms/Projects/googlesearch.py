import urllib2
import re

def search(query,start,end):
  head={'User-Agent':'Nokia6630/1.0 (2.3.129) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1'}
  query=query.replace(' ','+')
  try:
    for index in range(start,end,10):
      url="http://www.google.co.in/search?q=%s&start=%d"% (query,index)
      req=urllib2.Request(url,headers=head)
      content=urllib2.urlopen(req).read()
      urls=re.findall('(u=)([\w:/.?&;=\-+]+)(&amp;q=)',content)
      out=[]
      for url in urls:
        out.append(url[1])
      return out
  except Exception, e:
    pass
print search('kousthub raja',0,10)