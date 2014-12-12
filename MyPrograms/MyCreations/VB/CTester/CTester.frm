VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H00000000&
   BorderStyle     =   1  'Fixed Single
   Caption         =   "C-Tester"
   ClientHeight    =   5655
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6825
   ClipControls    =   0   'False
   Icon            =   "CTester.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   5655
   ScaleWidth      =   6825
   StartUpPosition =   3  'Windows Default
   Begin VB.OptionButton cpp 
      BackColor       =   &H00000000&
      Caption         =   "C++"
      ForeColor       =   &H00C0C000&
      Height          =   435
      Left            =   1200
      TabIndex        =   3
      Top             =   5040
      Value           =   -1  'True
      Width           =   615
   End
   Begin VB.OptionButton c 
      BackColor       =   &H00000000&
      Caption         =   "C"
      ForeColor       =   &H00C0C000&
      Height          =   435
      Left            =   360
      TabIndex        =   2
      Top             =   5040
      Width           =   615
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00C0C0FF&
      Caption         =   "&RUN"
      Height          =   495
      Left            =   2760
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   5040
      Width           =   1335
   End
   Begin VB.TextBox Text1 
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Courier"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000C000&
      Height          =   4695
      Left            =   120
      MultiLine       =   -1  'True
      TabIndex        =   0
      Text            =   "CTester.frx":0442
      Top             =   120
      Width           =   6615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Open "C:\ctmp\cruntmp.cpp" For Output As #1
Print #1, Text1
Close #1
If c.Value = True Then
  Shell "C:\ctmp\crun.bat", vbNormalFocus
Else
  Shell "C:\ctmp\cpprun.bat", vbNormalFocus
End If
End Sub

