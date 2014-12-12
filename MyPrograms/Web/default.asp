<%
response.cookies("Flirt")("MyUserID")= Cdbl(0)
response.cookies("Flirt")("MyUserName")= ""
response.cookies("Flirt")("MyUserPass")= ""
%>

<!-- #include file="Function.asp" -->

<%
CookieSet("WebREF"), "*" & request("From") & "*"
'Request.ServerVariables("HTTP_REFERER") 

CookieSet "Affiliate" , 0

if request("From") <> "" And ISNumeric(request("From")) then
	Set RsReferer=FlirtDBConn("SetHttpReferer " & request("From") & ",'" & Request.ServerVariables("REMOTE_ADDR") & "'")
	CookieSet "Affiliate" , request("From")
end if
%>
<HTML>
<HEAD>
<TITLE>FaceLink.RO </TITLE>
<LINK REL="SHORTCUT ICON" HREF=""> 
<META NAME="KEYWORDS" CONTENT="">
<META NAME="KEYWORDS" CONTENT="">
<META NAME="DESCRIPTION" content="">
<meta Name="description" Content="">
<META NAME="ROBOTS" CONTENT="ALL">
<META NAME="ABSTRACT" CONTENT="">
<META NAME="REVISIT-AFTER" CONTENT="7 days" />
<META NAME="RATING" CONTENT="General" />
<META NAME="RESOURCE-TYPE" CONTENT="document" />
<META NAME="DISTRIBUTION" CONTENT="global" />
<META NAME="DISTRIBUTION" CONTENT="">
</head>

</html>

<%
	response.Redirect "Main.asp"
%>




