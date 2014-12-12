import csv
import webbrowser

infile=open('ghdb1_2.csv','rb')
reader=csv.reader(infile)
findstr=raw_input("What to find? : ")

for row in reader:
  if findstr in row[2] or findstr in row[3]: 
    print row[2],row[3]
    url='http://www.google.com/search?q=%s' % row[2].replace(' ','+')
    webbrowser.open(url)