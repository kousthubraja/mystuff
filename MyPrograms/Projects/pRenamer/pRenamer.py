import os

l=os.walk(os.getcwd())

for (path,dirs,files) in l:
  for f in files:
    oldname= '%s%s%s' % (path,os.sep, f)
    
    nf=f.replace('_',' ')
    newname= '%s%s%s' % (path,os.sep, nf)
    os.rename(oldname,newname)