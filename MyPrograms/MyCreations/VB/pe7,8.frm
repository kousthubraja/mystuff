VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   7230
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9330
   LinkTopic       =   "Form1"
   ScaleHeight     =   7230
   ScaleWidth      =   9330
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   3735
      Left            =   2400
      MultiLine       =   -1  'True
      TabIndex        =   4
      Text            =   "pe7,8.frx":0000
      Top             =   2280
      Width           =   5175
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   495
      Left            =   2520
      TabIndex        =   3
      Top             =   1320
      Width           =   1095
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   495
      Left            =   2520
      TabIndex        =   2
      Top             =   720
      Width           =   1095
   End
   Begin VB.ListBox List1 
      Height          =   2595
      Left            =   360
      TabIndex        =   1
      Top             =   120
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   495
      Left            =   2520
      TabIndex        =   0
      Top             =   120
      Width           =   1095
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Double, j As Double
n = Val(InputBox("Enter limit : "))
List1.Clear
For i = 2 To n
    f = 0
    For j = 2 To i / 2
        If i Mod j = 0 Then
        f = 1
        Exit For
        End If
    Next j
    If f = 0 Then
        'i = i + 1
        List1.AddItem i
        Sum = Sum + i
    End If
    'If List1.ListCount > 10001 Then Exit For
Next i
MsgBox Sum
End Sub

Private Sub Command2_Click()
MsgBox List1.List(10001)
End Sub

Private Sub Command3_Click()
s = Text1.Text
n = 0
For i = 1 To Len(Text1)
    a = Val(Mid(Text1, i, 1))
    b = Val(Mid(Text1, i + 1, 1))
    c = Val(Mid(Text1, i + 2, 1))
    d = Val(Mid(Text1, i + 3, 1))
    e = Val(Mid(Text1, i + 4, 1))
    m = a * b * c * d * e
    If m > n Then n = m
Next i
MsgBox n
End Sub
