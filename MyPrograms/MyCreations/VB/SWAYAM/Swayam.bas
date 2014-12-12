Attribute VB_Name = "Module1"
'************************API Declares************************
'/**********************************************************/
'************************************************************

Public Declare Sub mouse_event Lib "user32" (ByVal dwFlags As Long, ByVal dx As Long, ByVal dy As Long, ByVal cButtons As Long, ByVal dwExtraInfo As Long)
Public Declare Function FindWindow Lib "user32" Alias "FindWindowA" (ByVal lpClassName As String, ByVal lpWindowName As String) As Long
Public Declare Function SetForegroundWindow Lib "user32" (ByVal hwnd As Long) As Long
Public Declare Sub Sleep Lib "kernel32" (ByVal dwMilliseconds As Long)

Public Const MOUSE_MOVED = &H1
Public Const MOUSEEVENTF_ABSOLUTE = &H8000 '  absolute move
Public Const MOUSEEVENTF_LEFTDOWN = &H2 '  left button down
Public Const MOUSEEVENTF_LEFTUP = &H4 '  left button up
Public Const MOUSEEVENTF_MIDDLEDOWN = &H20 '  middle button down
Public Const MOUSEEVENTF_MIDDLEUP = &H40 '  middle button up
Public Const MOUSEEVENTF_MOVE = &H1 '  mouse move
Public Const MOUSEEVENTF_RIGHTDOWN = &H8 '  right button down
Public Const MOUSEEVENTF_RIGHTUP = &H10 '  right button up





'************************My Functions************************
'/**********************************************************/
'************************************************************

Public com As String, dx As Long, dy As Long, er As Byte

Function lineno(Text As String) As Integer
For i = 1 To Len(Text)
If Mid(Text, i, 1) = Chr(13) Then
n = n + 1
End If
Next i
lineno = n
End Function

Function linebyline(Text As String) As String()
linebyline = Split(Text, vbCrLf)
End Function

Sub getArgs(s As String)
If Trim(s) <> "" Then
    Dim i As Integer, x As String, y As String
    i = 1
    com = ""
    f = 0
    While Mid(s, i, 1) <> " " And i < 10
        com = com & Mid(s, i, 1)
        i = i + 1
    Wend
    If com <> "click" And com <> "lup" And com <> "ldown" And com <> "rup" And com <> "rdown" And com <> "dclick" And com <> "wait" Then
        i = i + 1
        For j = 1 To Len(s)
        If Mid(s, j, 1) = "," Then er = 1
        Next j
        If er <> 1 Then
        MsgBox "Syntax Error", vbCritical
        Exit Sub
        End If
        While Mid(s, i, 1) <> ","
            x = x & Mid(s, i, 1)
            i = i + 1
        Wend
        dx = Val(x)
        
        For i = i + 1 To Len(s)
            y = y & Mid(s, i, 1)
        Next i
        dy = Val(y)
    
    ElseIf com = "wait" Then
        Dim tmps() As String
            tmps = Split(s, " ")
            dx = Val(tmps(1))
    End If
End If
End Sub

Public Sub clickat(x As Long, y As Long)
mouse_event MOUSEEVENTF_MOVE Or MOUSEEVENTF_ABSOLUTE, x, y, 120, 0
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, x, y, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, x, y, 120, 0
End Sub

Public Sub click()
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
End Sub

Public Sub dclickat(x As Long, y As Long)
mouse_event MOUSEEVENTF_MOVE Or MOUSEEVENTF_ABSOLUTE, x, y, 120, 0
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
End Sub

Public Sub dclick()
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTDOWN Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
mouse_event MOUSEEVENTF_LEFTUP Or MOUSEEVENTF_ABSOLUTE, 0, 0, 120, 0
End Sub

Public Sub mmove(x As Long, y As Long)
mouse_event MOUSEEVENTF_MOVE Or MOUSEEVENTF_ABSOLUTE, x, y, 120, 0
End Sub

Public Sub mover(x As Long, y As Long)
mouse_event MOUSEEVENTF_MOVE, x, y, 120, 0
End Sub

Public Sub lup()
mouse_event MOUSEEVENTF_LEFTUP, 0, 0, 120, 0
End Sub

Public Sub ldown()
mouse_event MOUSEEVENTF_LEFTDOWN, 0, 0, 120, 0
End Sub

Public Sub rup()
mouse_event MOUSEEVENTF_RIGHTUP, 0, 0, 120, 0
End Sub

Public Sub rdown()
mouse_event MOUSEEVENTF_RIGHTDOWN, 0, 0, 120, 0
End Sub

Sub Savefile(FileName As String)
Dim f As Object, stream As Object
Set f = CreateObject("Scripting.filesystemobject")
Set stream = f.createtextfile(thefile)
stream.write txtuserarea.Text
stream.Close
End Sub


