import urllib
import urllib2

head={'User-agent':'Opera/9.80 (Android 4.0.4; Linux; Opera Mobi/ADR-1205181138; U; pl) Presto/2.10.254 Version/12.00'}

data={'hid_exists':'no','scrWidth':'','fkapps':'SendSMSDec19','maxwellapps':'65F6D6019BC4017EED2B01CA1455D624.8705','UgadHieXampp':'ugadicome','aprilfoolc':'HoliWed27','janrepu':'April3wed','marYellundi':'abcdef12345tops','by2Hidden':'by2sms','feb2by2action':'sf55sa5655sdf5','grabit':'applecut','shine':'65000','diwali2013':'november3','PMVMC':'','PZJFVI':'8891222456','sendSMSMsg':'found!'}

data={'hid_exists':'no','scrWidth':'','fkapps':'SendSMSDec19','maxwellapps':'B1DB0374CF8F75AC208EC57C0C43D0BE.8702','UgadHieXampp':'ugadicome','aprilfoolc':'HoliWed27','janrepu':'April3wed','marYellundi':'abcdef12345tops','by2Hidden':'by2sms','feb2by2action':'sf55sa5655sdf5','grabit':'applecut','shine':'65000','diwali2013':'november3','PWBOD':'','BMHEIH':'8891222456','sendSMSMsg':'found!'}

data={'hid_exists':'no','scrWidth':'','fkapps':'SendSMSDec19','maxwellapps':'B1DB0374CF8F75AC208EC57C0C43D0BE.8702','UgadHieXampp':'ugadicome','aprilfoolc':'HoliWed27','janrepu':'April3wed','marYellundi':'abcdef12345tops','by2Hidden':'by2sms','feb2by2action':'sf55sa5655sdf5','grabit':'applecut','shine':'65000','diwali2013':'november3','PWBOD':'','BMHEIH':'8891222456','sendSMSMsg':'last!'}
edata=urllib.urlencode(data)
req=urllib2.Request('http://m.160by2.com/SendSMSDec19',edata,head)
site=urllib2.urlopen(req)



open('url.txt','w').write(site.geturl())