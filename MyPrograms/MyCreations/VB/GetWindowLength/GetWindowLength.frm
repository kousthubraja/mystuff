VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "GetWindowTitle Function"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text2 
      BeginProperty Font 
         Name            =   "Times New Roman"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2415
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   1
      Top             =   480
      Width           =   3255
   End
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   3960
      Top             =   1800
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3255
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Timer1_Timer()
Dim length As Long
Dim sl As Long
Dim s As String

length = GetWindowTextLength(GetForegroundWindow)
s = Space(length + 1)
sl = GetWindowText(GetForegroundWindow, s, length + 1)
Text1 = Left(s, sl)
MsgBox s & " - " & Val(Str(l)) & " - " & Val(Str(sl))
End Sub
