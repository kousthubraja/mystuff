VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "1234567890123"
   ClientHeight    =   5130
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7155
   LinkTopic       =   "Form1"
   ScaleHeight     =   5130
   ScaleWidth      =   7155
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   2400
      Top             =   120
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
Private Declare Function SetWindowText Lib "user32" Alias "SetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String) As Long
Private Declare Function GetForegroundWindow Lib "user32" () As Long
Private Declare Function Putfocus Lib "user32" Alias "SetFocus" (ByVal hwnd As Long) As Long

Private Sub Timer1_Timer()
Dim s As String
s = String(10, Chr$(0))
GetWindowText GetForegroundWindow, s, 10

Trim s
MsgBox s
SetWindowText GetForegroundWindow, "Kousthub is a good boy! - " & s

End Sub
