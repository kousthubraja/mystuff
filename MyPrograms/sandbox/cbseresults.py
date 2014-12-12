import urllib2
import urllib
headder = {'User-Agent': 'Mozilla/5.0 (Windows NT 6.1) AppleWebKit/537.11 (KHTML, like Gecko) Chrome/23.0.1271.95 Safari/537.11'}
url="http://cbseresults.nic.in/class12/cbse122013.asp"
data = urllib.urlencode({'regno': '4648766'})
req = urllib2.Request(url,data)
req.add_header('Referer', 'http://cbseresults.nic.in/class12/cbse122013.htm')
fil=open("cbseres.html","a+")

start=int(raw_input("Enter start roll no : "))
stop=int(raw_input("Enter stop roll no : "))

for n in range(start,stop):
    data = urllib.urlencode({'regno': str(n)})
    req = urllib2.Request(url,data)
    req.add_header('Referer', 'http://cbseresults.nic.in/class12/cbse122013.htm')
    page=urllib2.urlopen(req)
    string= page.read()
    print string
    
    fil.write(string)
fil.close
