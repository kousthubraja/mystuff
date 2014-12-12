VERSION 5.00
Begin VB.Form Form2 
   BorderStyle     =   0  'None
   Caption         =   "Form2"
   ClientHeight    =   7560
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   9180
   LinkTopic       =   "Form2"
   ScaleHeight     =   504
   ScaleMode       =   3  'Pixel
   ScaleWidth      =   612
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "Form2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim mx As Long, my As Long
Private Sub Form_KeyPress(KeyAscii As Integer)
If KeyAscii = 27 Then
    Unload Me
ElseIf KeyAscii = Asc("c") Then
    s = Trim(Str(mx * 64)) & "," & Trim(Str(my * 87))
    'Clipboard.SetText = s
    Form1.Text1.SelText = s
    
    Unload Me
End If
End Sub

Private Sub Form_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
mx = X
my = Y

s = Trim(Str(mx * 64)) & "," & Trim(Str(my * 87))
Cls
PSet (X, Y)
Print s


End Sub
