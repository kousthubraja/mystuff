function cogecifrado(str) {
  if (str.indexOf('PWD=', 0) == -1 ||
      str.length-37<0) 
        alert("INVALID ENTRY: You must enter the entire line, including'PWD='");
  
  else {
	passw=str.substring(37,str.length);
	for (var i = 0; i<passw.length/2; i++)
	 {	 
	   var caracter=passw.substring(i*2,i*2+2);
	   var sal=str.substring(5+i,6+i);
	   var claro=parseInt("0x"+caracter) -i -1 - ((47+parseInt("0x"+sal))%57);
           document.form1.text2.value=document.form1.text2.value+String.fromCharCode(claro);
	  }
	}
  }
