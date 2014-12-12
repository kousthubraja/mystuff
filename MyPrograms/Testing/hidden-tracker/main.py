import webapp2
import urllib2
import SocketServer

class MainHandler(webapp2.RequestHandler):
    def get(self):
        
		#site=urllib2.urlopen("http://kr.x10.mx")
		#s=site.read()
		self.response.out.write("hi")

app = webapp2.WSGIApplication([('/', MainHandler)],
                              debug=True)