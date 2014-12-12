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
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   1440
      TabIndex        =   0
      Top             =   840
      Width           =   975
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim i As Single, h As Single, n As Single, j As Single
n = 600851475143#
h = (n - 1) / 2

For i = h To 0 Step -1
    If lmod(n, i) = 0 Then
        f = 0
        For j = (i \ 2) To 0 Step -1
            If lmod(i, j) = 0 Then
                f = 1
                Exit For
            End If
        Next j
        If f = 0 Then Exit For
    End If
Next i
End Sub

Function lmod(a As Long, b As Long)
lmod = a - Int(a / b) * b
End Function
