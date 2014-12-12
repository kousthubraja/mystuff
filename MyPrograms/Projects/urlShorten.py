
import json
import urllib2

adr=raw_input('Enter the address : ')
l=raw_input('Enter length of urlcode (5 to 16): ')
url="http://query.yahooapis.com/v1/public/yql?q=insert%20into%20yahoo.y.ahoo.it%20(url%2C%20keysize)%20values%20('"+adr+"'%2C%20"+l+")&format=json&callback=cbfunc" 

headers = {"User-Agent": "Mozilla/5.0 (Windows NT 6.1; WOW64; rv:16.0) Gecko/20100101 Firefox/16.0"}

req=urllib2.Request(url,None,headers)
page=urllib2.urlopen(req).read()

page=page.replace('cbfunction','')
page=page.replace('cbfunc','')
page=page.replace(';','')
page=page[1:-1]

data=json.loads(page)
print data
print data['query']['results']['url']