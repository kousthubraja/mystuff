VERSION 5.00
Begin VB.MDIForm MDIForm1 
   BackColor       =   &H8000000C&
   Caption         =   "MDIForm1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
End
Attribute VB_Name = "MDIForm1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub MDIForm_Load()
Form2.Show
Form1.Show
Arrange 2
Form1.p1.Picture = LoadPicture("E:\MyCreations\VB\Pic-Differentiator\cmp\ip1.bmp")
Form2.p2.Picture = LoadPicture("E:\MyCreations\VB\Pic-Differentiator\cmp\ip2.bmp")
End Sub
