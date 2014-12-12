VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   4695
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7425
   LinkTopic       =   "Form1"
   ScaleHeight     =   4695
   ScaleWidth      =   7425
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   1000
      Left            =   4080
      Top             =   2400
   End
   Begin VB.HScrollBar HScroll1 
      Height          =   255
      Left            =   600
      Max             =   140
      TabIndex        =   2
      Top             =   1320
      Width           =   3735
   End
   Begin VB.TextBox Text2 
      Height          =   285
      Left            =   600
      TabIndex        =   1
      Top             =   720
      Width           =   3735
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   600
      TabIndex        =   0
      Top             =   240
      Width           =   3735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub HScroll1_Change()
Text2 = ""
For i = 1 To Len(Text1)
Text2 = Text2 & Chr(Asc(Mid(Text1, i, 1)) + HScroll1.Value)
Next i
End Sub

Private Sub Timer1_Timer()
HScroll1.Value = HScroll1.Value + 1
End Sub
