<% 
    url = "www.espn.com" 
 
    Set objWShell = CreateObject("WScript.Shell") 
    Set objCmd = objWShell.Exec("dir") 
    strPResult = objCmd.StdOut.Readall() 
 
    response.write strPResult
%>