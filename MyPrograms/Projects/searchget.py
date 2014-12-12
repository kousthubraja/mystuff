import urllib2
headder = {'User-Agent': 'Nokia6630/1.0 (2.3.129) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1'}
#headder={'User-Agent':'Mozilla 5'}
res=""
for n in range(0,30,10):
    pno=str(n)
    print "*********** Page "+ pno+" *************"
    url="https://www.google.com/search?q=inurl%3Aftp+inurl%3Aasp+login+inurl%3Agov.cn&start=" + pno
    print "\n"+url
    req=urllib2.Request(url,headers=headder)
    page=urllib2.urlopen(req)
    string= page.read()
    endpos=0
    string.replace("<b>","")
    
    for i in range(10):
        startpos=string.find("ftp://",endpos)
        endpos=string.find("/",startpos+6)
        if endpos-startpos>13:
            temp=string[startpos+6:endpos]
            if res.find(temp)==-1:
                res+= temp+"\n"


print res
fil=open("ftpserv.txt","w")
fil.write(res)
fil.close()    
