import appuifw
import e32

def quit():
	lock.signal()
appuifw.app.exit_key_handler=quit
lock=e32.Ao_lock()

def add(s):
	txt.add(unicode(s))
def bracket():
	add("()")
def sq_bracket():
	add("[]")
def string():
	add("\"\"")
#I/O functions
def prnt():
	add("print()")
def inp():
	add("=raw_input(\"\")")
def dsp(n):
	appuifw.note(unicode(n))
def query():
	return appuifw.query(unicode(n), "text")

def ex():
	add("**")
def fo():
	add("for  in range():")
	tab()
def whil():
	add("while :")
	tab()
def tab():
	t+=1
	add("   ")
def nl():
	add("\n"+u"   "*t)
def deltab():
	t=0
def save():
	fn=appuifw.query(u"Enter file name:", "text")
	f=open(fn,"r+")
	f.write(txt.get())
	appuifw.note(u"File Saved","conf")

def opn():
	fn=appuifw.query(u"Enter file name:", "text")
	f=open(fn,"r+")
	txt.set(f.read())

def run():
	fn="c:/tmp.py"
	f=open(fn,"r+")
	f.write(txt.get())
	execfile(fn)

#Compound operators
def plseq():
	add(u"+=")
def mineq():
	add(u"-=")
def muleq():
	add(u"*=")
def diveq():
	add(u"/=")

#Conditional operators
def eq():
	add("==")
def neq():
	add("!=")
def grt():
	add(">=")
def les():
	add("<=")

#Trig Functions
def sn():
	add("sin()")
def cs():
	add("cos()")
def tn():
	add("tan()")
def asn():
	add("asin()")
def acs():
	add("acos()")
def atn():
	add("atan()")
def snh():
	add("sinh()")
def csh():
	add("cosh()")
def tnh():
	add("tanh()")

#Angle Conversion
def deg():
	add("degrees()")
def rad():
	add("radians()")

#Arithmetic functions
def cl():
	add("ceil()")
def flor():
	add("floor()")
def fmd():
	add("fmod(,)")
def absol():
	add("fabs()")

#Exponential functions
def power():
	add("pow()")
def lg():
	add("log()")
def sqr():
	add("sqrt()")
def expo():
	add("exp()")
appuifw.app.menu=[
		(u"Newline",nl),
		(u"Operators",
			(u"Mathematical",

				(u"Arithmetic",
					(u"Ceil",cl),
					(u"Floor",flor),
					(u"Fmod",fmd),
					(u"Absolute",absol)),

				(u"Exponential",
					(u"Power",power),
					(u"Log",lg),
					(u"Exp",expo),
					(u"Sqrt",sqr)),
				
				(u"Trig-Functions",
				(u"sin(x)",sn),
				(u"cos(x)",cs),
				(u"tan(x)",tn),
				(u"asin(x)",asn),
				(u"acos(x)",acs),
				(u"atan(x)",atn),
				(u"sinh(x)",snh),
				(u"cosh(x)",csh),
				(u"tanh(x)",tnh))),
				
				(u"Angle Convertion",
					(u"ToDegree",deg),
					(u"ToRadian",rad)),
			(u"Conditional",
				(u"Equals",eq),
				(u"Not Equals",neq),
				(u"Greater than",grt),
				(u"Less than",les)),
			(u"Compound",
				(u"+=",plseq),
				(u"-=",mineq),
				(u"*=",muleq),
				(u"/=",diveq))),
		(u"Tab",tab),
		(u"Bracket",bracket),
		(u"String",string),
		
		(u"I/O",
			(u"Print",prnt),
			(u"Input",inp),
			(u"Disp",dsp),
			(u"Query",query)),
		
		(u"Delete Tab",deltab),
		(u"File",
			(u"Save",save),
			(u"Open",opn),
			(u"Run",run))
		
		]


t=0
txt=appuifw.Text()
appuifw.app.body=txt
txt.set(u"from math import *\n")
appuifw.app.screen="normal"
appuifw.app.title=u"PyMaths"

lock.wait()

# SYMBIAN_UID = 0x01234567
