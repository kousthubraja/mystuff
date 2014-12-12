import urllib2

me=raw_input("Enter your name : ")

while True:
    txt=raw_input(">>")
    if(txt.strip()!=""):
        txt=me+" : "+txt
        print txt
    txt = txt.replace(" ","%20")
    con=urllib2.urlopen("http://server880.comxa.com/chat.php?txt="+txt)
    out=con.read(2048)
    if not out.startswith(me):
        print out.split("\n")[0]