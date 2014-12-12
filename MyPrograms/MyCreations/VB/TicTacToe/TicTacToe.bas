Attribute VB_Name = "Module1"
'*************************Declares****************************
'*************************************************************
'*************************************************************
Public p(10) As Byte, moveno As Byte

'*************************Functions***************************
'*************************************************************
'*************************************************************
Function freemove()
If p(5) = 2 Then
freemove = 5
ElseIf p(1) = 2 Then
freemove = 1
ElseIf p(3) = 2 Then
freemove = 3
ElseIf p(7) = 2 Then
freemove = 7
ElseIf p(9) = 2 Then
freemove = 9
ElseIf p(2) = 2 Then
freemove = 2
ElseIf p(4) = 2 Then
freemove = 4
ElseIf p(6) = 2 Then
freemove = 6
ElseIf p(8) = 2 Then
freemove = 8
Else
freemove = 0
End If
End Function

Function checkcomwin()
If p(1) * p(2) * p(3) = 18 Then
    checkcomwin = winpos(1, 2, 3)
ElseIf p(4) * p(5) * p(6) = 18 Then
    checkcomwin = winpos(4, 5, 6)
ElseIf p(7) * p(8) * p(9) = 18 Then
    checkcomwin = winpos(7, 8, 9)
ElseIf p(1) * p(4) * p(7) = 18 Then
    checkcomwin = winpos(1, 4, 7)
ElseIf p(2) * p(5) * p(8) = 18 Then
    checkcomwin = winpos(2, 5, 8)
ElseIf p(3) * p(6) * p(9) = 18 Then
    checkcomwin = winpos(3, 6, 9)
ElseIf p(1) * p(5) * p(9) = 18 Then
    checkcomwin = winpos(1, 5, 9)
ElseIf p(3) * p(5) * p(7) = 18 Then
    checkcomwin = winpos(3, 5, 7)
Else
    checkcomwin = 0
End If
End Function

Function winpos(a As Byte, b As Byte, c As Byte)
Select Case 2
Case p(a):
    winpos = a
Case p(b):
    winpos = b
Case p(c):
    winpos = c
End Select
End Function

Function checkopponentwin()
If p(1) * p(2) * p(3) = 50 Then
    checkopponentwin = winpos(1, 2, 3)
ElseIf p(4) * p(5) * p(6) = 50 Then
    checkopponentwin = winpos(4, 5, 6)
ElseIf p(7) * p(8) * p(9) = 50 Then
    checkopponentwin = winpos(7, 8, 9)
ElseIf p(1) * p(4) * p(7) = 50 Then
    checkopponentwin = winpos(1, 4, 7)
ElseIf p(2) * p(5) * p(8) = 50 Then
    checkopponentwin = winpos(2, 5, 8)
ElseIf p(3) * p(6) * p(9) = 50 Then
    checkopponentwin = winpos(3, 6, 9)
ElseIf p(1) * p(5) * p(9) = 50 Then
    checkopponentwin = winpos(1, 5, 9)
ElseIf p(3) * p(5) * p(7) = 50 Then
    checkopponentwin = winpos(3, 5, 7)
Else
    checkopponentwin = 0
End If
End Function

Sub commove(pos As Byte)
p(pos) = 3
Form1.Label1(pos).Caption = "O"
Form1.Label1(pos).ForeColor = vbRed
If checkcomwon = True Then
    If MsgBox("I won the game!" & vbCrLf & "Better try next time", vbRetryCancel) = vbRetry Then
        init
    Else
        End
    End If
    init
End If
checkdraw
End Sub

Function checkcomwon() As Boolean
Dim won As Boolean
won = False
If p(1) * p(2) * p(3) = 27 Then
    won = True
ElseIf p(4) * p(5) * p(6) = 27 Then
    won = True
ElseIf p(7) * p(8) * p(9) = 27 Then
    won = True
ElseIf p(1) * p(4) * p(7) = 27 Then
    won = True
ElseIf p(2) * p(5) * p(8) = 27 Then
    won = True
ElseIf p(3) * p(6) * p(9) = 27 Then
    won = True
ElseIf p(1) * p(5) * p(9) = 27 Then
    won = True
ElseIf p(3) * p(5) * p(7) = 27 Then
    won = True
Else
    won = False
End If
checkcomwon = won
End Function

Function checkopponentwon() As Boolean
Dim won As Boolean
won = False
If p(1) * p(2) * p(3) = 125 Then
    won = True
ElseIf p(4) * p(5) * p(6) = 125 Then
    won = True
ElseIf p(7) * p(8) * p(9) = 125 Then
    won = True
ElseIf p(1) * p(4) * p(7) = 125 Then
    won = True
ElseIf p(2) * p(5) * p(8) = 125 Then
    won = True
ElseIf p(3) * p(6) * p(9) = 125 Then
    won = True
ElseIf p(1) * p(5) * p(9) = 125 Then
    won = True
ElseIf p(3) * p(5) * p(7) = 125 Then
    won = True
Else
    won = False
End If
checkopponentwon = won
End Function

Sub opponentmove(pos As Byte)
p(pos) = 5
Form1.Label1(pos).Caption = "X"
Form1.Label1(pos).ForeColor = vbBlue
If checkopponentwon = True Then
    MsgBox "You won!", vbExclamation
    init
End If
checkdraw
End Sub

Function finish() As Boolean
Dim t As Boolean
For i = 1 To 9
    If p(i) = 2 Then
        t = False
    End If
Next i
finish = t
End Function

Sub init()
For i = 1 To 9
    p(i) = 2
    Form1.Label1(i).Caption = ""
Next i
moveno = 0
End Sub

Function checkdraw() As Boolean
f = 0
For i = 1 To 9
    If p(i) = 2 Then
        f = 1
        Exit For
    End If
Next i
If f = 0 Then
    If MsgBox("Game is Draw." & vbCrLf & "Play new game?", vbYesNo, "Game Draw") = vbYes Then
        init
    Else
        End
    End If
End If
End Function

