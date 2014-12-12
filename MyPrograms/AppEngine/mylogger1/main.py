#!/usr/bin/env python

import webapp2
import urllib2

headder = {'User-Agent': 'Nokia6630/1.0 (2.3.129) SymbianOS/8.0 Series60/2.6 Profile/MIDP-2.0 Configuration/CLDC-1.1'}

import datetime
from google.appengine.ext import db
from google.appengine.api import users


class Phone(db.Model):
  name=db.StringProperty()
  num=db.StringProperty()


def main(self):
  for i in range(1,10):
    num=str(i)
    p=Phone(name='Kousthub',num+='8891222456')
    p.put()
  self.response.out.write(p)



class MainHandler(webapp2.RequestHandler):
    def get(self):
        main(self)
        self.response.out.write('Hello world!')

app = webapp2.WSGIApplication([('/', MainHandler)],
                              debug=True)
