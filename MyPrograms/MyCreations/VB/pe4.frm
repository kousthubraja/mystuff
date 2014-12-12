VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   735
      Left            =   3000
      TabIndex        =   2
      Top             =   1200
      Width           =   1095
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   600
      TabIndex        =   1
      Top             =   240
      Width           =   2895
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   735
      Left            =   1200
      TabIndex        =   0
      Top             =   1200
      Width           =   1455
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Double
n = Val(Text1)
t = 1
Dim m(3) As Long
m(0) = m(1) = 0

For j = n To 2 Step -1
    i = j
    While i > 1
        i = cn(i)
        t = t + 1
        Print i, t
    Wend
    If t > m(0) Then
        m(0) = t
        m(1) = j
    End If
Next j
MsgBox Str(m(0)) & " " & Str(m(1))
End Sub

Function cn(n As Double) As Double
If n Mod 2 = 0 Then
    cn = n / 2
Else
    cn = 3 * n + 1
End If
End Function

