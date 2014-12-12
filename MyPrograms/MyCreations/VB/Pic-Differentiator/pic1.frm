VERSION 5.00
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5565
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   7080
   FillStyle       =   0  'Solid
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   5565
   ScaleWidth      =   7080
   Begin VB.PictureBox p1 
      FillColor       =   &H000000FF&
      ForeColor       =   &H000000FF&
      Height          =   10815
      Left            =   120
      Picture         =   "pic1.frx":0000
      ScaleHeight     =   189.706
      ScaleMode       =   6  'Millimeter
      ScaleWidth      =   263.79
      TabIndex        =   0
      Top             =   120
      Width           =   15015
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub p1_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
l = Val(InputBox("level :"))
If l < 1 Then Exit Sub

    For j = 1 To 190 Step l
        f = False
        For i = 2 To 264 Step l
            If p1.Point(i, j) <> Form2.p2.Point(i, j) Then
                p1.Circle (i, j), l
                i = i + l
                f = True
            End If
            
            If p1.Point(i, j) = Form2.p2.Point(i, j) And p1.Point(i, j) = 15591915 Then
                i = 0
                Exit For
            End If
        Next i

        If f = True Then j = j + l
        If p1.Point(i, j) = Form2.p2.Point(i, j) And p1.Point(i, j) = 15591915 Then Exit For
        
    Next j

End If
End Sub
