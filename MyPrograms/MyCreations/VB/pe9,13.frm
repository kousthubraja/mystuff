VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   6945
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9090
   LinkTopic       =   "Form1"
   ScaleHeight     =   6945
   ScaleWidth      =   9090
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command3 
      Caption         =   "Command3"
      Height          =   735
      Left            =   360
      TabIndex        =   4
      Top             =   1800
      Width           =   975
   End
   Begin VB.TextBox Text2 
      Height          =   2415
      Left            =   5040
      MultiLine       =   -1  'True
      TabIndex        =   3
      Top             =   2040
      Width           =   2895
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   360
      TabIndex        =   2
      Top             =   240
      Width           =   4695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Command2"
      Height          =   615
      Left            =   1800
      TabIndex        =   1
      Top             =   2760
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   615
      Left            =   1560
      TabIndex        =   0
      Top             =   960
      Width           =   1215
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
For a = 1 To 500
    For b = a + 1 To 500
        For c = b + 1 To 500
            If a * a + b * b = c * c Then
                If a + b + c = 1000 Then
                    MsgBox Str(a) & " " & Str(b) & " " & Str(c)
                    End
                End If
                Print a, b, c
            End If
        Next c
    Next b
Next a
End Sub

Private Sub Command2_Click()

Dim sum As Double, n As Double
s = Split(Text2.Text, vbCrLf)

sum = 0
For i = 0 To UBound(s)
n = Val(s(i))
sum = sum + n
Next i
Text1 = sum
End Sub

