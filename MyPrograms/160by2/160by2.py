import urllib
import urllib2

head={'User-agent':'Opera/9.80 (Android 4.0.4; Linux; Opera Mobi/ADR-1205181138; U; pl) Presto/2.10.254 Version/12.00'}

data={'username':'8891222456','password':'iamkr01'}
edata=urllib.urlencode(data)
req=urllib2.Request('http://m.160by2.com/re-login',edata,head)
site=urllib2.urlopen(req)

open('url.txt','w').write(site.geturl())