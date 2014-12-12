VERSION 5.00
Begin VB.Form p1 
   Caption         =   "Form1"
   ClientHeight    =   8235
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   9705
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   ScaleHeight     =   549
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   647
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer1 
      Enabled         =   0   'False
      Interval        =   1
      Left            =   6600
      Top             =   3000
   End
End
Attribute VB_Name = "p1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
If Button = 1 Then
'r = Rnd * 255
'g = Rnd * 255
'b = Rnd * 255
'p1.FillColor = RGB(r, g, b)
Circle (X, Y), 20, &H8000000F
End If
End Sub


Private Sub Timer1_Timer()
X = Rnd * Me.ScaleWidth
Y = Rnd * Me.ScaleHeight
ra = Rnd * 10
r = Rnd * 255
g = Rnd * 255
b = Rnd * 255
p1.FillColor = RGB(r, g, b)
p1.Circle (X, Y), 10, RGB(r, g, b)
End Sub
