VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4275
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5100
   LinkTopic       =   "Form1"
   ScaleHeight     =   4275
   ScaleWidth      =   5100
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   240
      TabIndex        =   4
      Top             =   3840
      Width           =   4575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "LEN"
      Height          =   495
      Left            =   3000
      TabIndex        =   3
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton Command2 
      Caption         =   "MUL"
      Height          =   495
      Left            =   1920
      TabIndex        =   2
      Top             =   3120
      Width           =   975
   End
   Begin VB.CommandButton Command1 
      Caption         =   "SUM"
      Height          =   495
      Left            =   840
      TabIndex        =   1
      Top             =   3120
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   2775
      Left            =   240
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   120
      Width           =   4575
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim su As Double
su = 0
For i = 1 To Len(Text1)
su = su + Val(Mid(Text1, i, 1))
Next i
Text2 = su
End Sub

Private Sub Command1_KeyPress(KeyAscii As Integer)
MsgBox "fdf"
End Sub

Private Sub Command2_Click()
Dim su As Double
su = 0
For i = 1 To Len(Text1)
su = su + Val(Mid(Text1, i, 1))
Next i
Text2 = su
End Sub

Private Sub Command3_Click()
Text2 = Len(Text1)
End Sub
