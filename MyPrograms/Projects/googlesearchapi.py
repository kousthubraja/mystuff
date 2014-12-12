import urllib2,urllib
import re
import json

for i in range(0,60,10):
  s=urllib2.urlopen('http://ajax.googleapis.com/ajax/services/search/web?v=1.0&q=kinkyjo&start=%d' % i).read()
  data=json.loads(s)

  for d in data['responseData']['results']:
    print d['url']
