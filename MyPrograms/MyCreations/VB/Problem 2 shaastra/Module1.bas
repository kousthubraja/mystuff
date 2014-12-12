Attribute VB_Name = "Module1"
Function check_binary(num As String) As Byte

Dim b As Byte, s As String
b = 0
For i = 1 To Len(num)
s = Mid(num, i, 1)
If s <> "0" And s <> "1" Then b = 1
Next i
'If b = 0 Then
'MsgBox "Binary"
'Else
'MsgBox "Not binary"
'End If
check_binary = b
End Function

