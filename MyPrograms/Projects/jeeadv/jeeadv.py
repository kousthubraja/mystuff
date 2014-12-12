import requests

url=url='http://jeeadv.iitm.ac.in/resultstatus.php'

for regno in range(6069000,6069280):
	data={'regno':str(regno)}
	req=requests.post(url,data)
	text=req.text
	if 'Congratulations!' in text:
		print regno
		#text contains the html code for result page.. get name and AIR from it.