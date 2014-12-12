VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4005
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5880
   LinkTopic       =   "Form1"
   ScaleHeight     =   4005
   ScaleWidth      =   5880
   StartUpPosition =   3  'Windows Default
   Begin VB.CommandButton Command2 
      Caption         =   "Find"
      Height          =   615
      Left            =   1080
      TabIndex        =   3
      Top             =   1080
      Width           =   855
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   240
      TabIndex        =   2
      Top             =   240
      Width           =   2775
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Check"
      Height          =   615
      Left            =   720
      TabIndex        =   1
      Top             =   2280
      Width           =   975
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   2280
      TabIndex        =   0
      Top             =   2880
      Width           =   3375
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
b = check_binary(Text1)
Print b
End Sub

Private Sub Command2_Click()
Dim n As Integer, t As Double
n = Val(Text2.Text)
i = 1

While True
t = n * i
b = check_binary(Trim(Str(t)))
If b = 0 Then GoTo a
i = i + 1
Wend

a:
MsgBox i
End Sub
