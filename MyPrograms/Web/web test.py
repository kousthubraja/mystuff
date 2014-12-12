import urllib2
import urllib

data={'test':'hello','test2':'dude'}
edata=urllib.urlencode(data)
site=urllib2.urlopen("http://kr.x10.mx/test.php",edata)
print site.read()
