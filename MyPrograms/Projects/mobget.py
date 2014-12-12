import urllib

con=urllib.urlopen('http://kstock.comyr.com/sync/mob')
s=con.read()

s=s.replace('<br>','\n')
print s
con.close()

u=raw_input("Enter file name : ")
con=urllib.urlretrieve('http://kstock.comyr.com/sync/mob/'+u,'E:\\Downloads\\'+u)
con.close()