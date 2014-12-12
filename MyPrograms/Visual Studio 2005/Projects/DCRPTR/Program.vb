
Module Program
	
	Sub Main()

		dim a as String 
		a=console.ReadLine()
		a=enc(a)
		Console.Write("Encrypted  :  " & a & vbcrlf)
		a=dec(a)
		Console.Write("Decrypted  :  " & a)
		a=console.ReadLine()
	End Sub
	
	Function enc(s As String)as String 
		Dim cod As String
		Dim t As String,c as String 
		Dim i As Int16
		cod=""
		For i=1 To len(s)
			c=mid(s,i,1)
			t=trim(str(asc(c)+9))
			If len(t)<3 Then t="0"+t
			cod=cod+t
		Next
		enc=cod
	End Function
	
	Function dec(s As String)as String 
		Dim cod As String
		Dim t As String,c as String 
		Dim i As Int16
		cod=""
		For i=1 To len(s) step 3
			c=val(mid(s,i,3))-9
			t=chr(c)
			
			cod=cod+t
		Next
		dec=cod
	End Function
End Module
