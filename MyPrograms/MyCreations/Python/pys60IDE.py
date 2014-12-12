import appuifw
import e32

def quit():
	lock.signal()
appuifw.app.exit_key_handler=quit
lock=e32.Ao_lock()

def bracket():
	txt.add(u"()")
def sq_bracket():
	txt.add(u"[]")
def string():
	txt.add(u"\"\"")
def prnt():
	txt.add(u"print()")
def inp():
	txt.add(u"=raw_input(\"\")")
def ex():
	txt.add(u"**")
def fo():
	txt.add(u"for  in range():")
def tab():
	t+=1
	txt.add(u"   ")
def nl():
	txt.add(u"\n"+u"   "*t)
def deltab():
	t=0



appuifw.app.menu=[(u"Newline",nl),(u"Tab",tab),(u"Bracket",bracket),(u"String",string),(u"I/O",(u"Print",prnt),(u"Input",inp)),(u"Delete Tab",deltab)]


t=0
txt=appuifw.Text()
appuifw.app.body=txt
appuifw.app.screen="normal"
appuifw.app.title=u"PyS60 IDE"

lock.wait()

# SYMBIAN_UID = 0x01234567