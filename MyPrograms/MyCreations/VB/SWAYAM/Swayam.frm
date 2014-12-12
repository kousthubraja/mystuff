VERSION 5.00
Object = "{F9043C88-F6F2-101A-A3C9-08002B2F49FB}#1.2#0"; "COMDLG32.OCX"
Begin VB.Form Form1 
   Caption         =   "Swayam"
   ClientHeight    =   6120
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   4800
   Icon            =   "Swayam.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   6120
   ScaleWidth      =   4800
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      BackColor       =   &H80000008&
      BeginProperty Font 
         Name            =   "Terminal"
         Size            =   12
         Charset         =   255
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H0000FF00&
      Height          =   6135
      Left            =   0
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   0
      Top             =   0
      Width           =   4815
   End
   Begin MSComDlg.CommonDialog cd1 
      Left            =   4680
      Top             =   4680
      _ExtentX        =   847
      _ExtentY        =   847
      _Version        =   393216
   End
   Begin VB.Menu mnufile 
      Caption         =   "File"
      Begin VB.Menu mnunew 
         Caption         =   "New"
         Shortcut        =   ^N
      End
      Begin VB.Menu mnuopen 
         Caption         =   "&Open"
         Shortcut        =   ^O
      End
      Begin VB.Menu mnusave 
         Caption         =   "&Save"
         Shortcut        =   ^S
      End
      Begin VB.Menu mnusaveas 
         Caption         =   "Save &As"
      End
      Begin VB.Menu mnuexit 
         Caption         =   "E&xit"
         Shortcut        =   ^Q
      End
   End
   Begin VB.Menu mnuedit 
      Caption         =   "Edit"
      Begin VB.Menu mnucut 
         Caption         =   "Cut"
         Shortcut        =   ^X
      End
      Begin VB.Menu mnucopy 
         Caption         =   "Copy"
         Shortcut        =   ^C
      End
      Begin VB.Menu mnupaste 
         Caption         =   "Paste"
         Shortcut        =   ^V
      End
   End
   Begin VB.Menu mnutools 
      Caption         =   "Tools"
      Begin VB.Menu mnupview 
         Caption         =   "Pixel Viewer"
      End
   End
   Begin VB.Menu mnurun 
      Caption         =   "Run"
      Begin VB.Menu mnurunscript 
         Caption         =   "Run Script"
         Shortcut        =   {F5}
      End
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim filesaved As Boolean, filen As String
Sub execute()
On Error GoTo erh
If Trim(Text1) <> "" Then
Dim X As Long, Y As Long
s = linebyline(Text1)
For i = 0 To lineno(Text1)
    Text = Trim(s(i))
    
    getArgs (Text)
    If com <> "click" And com <> "lup" And com <> "ldown" And com <> "rup" And com <> "rdown" And com <> "dclick" Then
        X = dx
        Y = dy
    End If
    
    'Checks the command
    Select Case com
    Case "move"
        mmove X, Y
    Case "click"
        click
    Case "dclick"
        dclick
    Case "clickat"
        clickat X, Y
    Case "dclickat"
        dclickat X, Y
    Case "lup"
        lup
    Case "ldown"
        ldown
    Case "rup"
        rup
    Case "rdown"
        rdown
    Case "mover"
        mover X, Y
    Case "wait"
        Sleep (X)
    End Select
Next i
End If
Exit Sub
erh:
MsgBox "Error : " & Err.Description, vbCritical
End Sub

Private Sub Form_Load()
filesaved = True
End Sub

Private Sub Form_Resize()
On Error GoTo erh
If Form1.Width > 300 Then Text1.Width = Form1.Width - 120
If Form1.Height > 1000 Then Text1.Height = Form1.Height - 800
Exit Sub
erh:
MsgBox "Error : " & Err.Description, vbCritical
End Sub

Private Sub mnucopy_Click()
Clipboard.SetText Text1.SelText
End Sub

Private Sub mnucut_Click()
Clipboard.SetText Text1.SelText
Text1.SelText = ""
End Sub

Private Sub mnuexit_Click()
If filesaved = False Then
    Select Case MsgBox("Current file not saved. Save it now?", vbYesNoCancel)
    Case vbYes
        Call mnusave_Click
        End
    Case vbNo
        End
    Case vbCancel
        Exit Sub
    End Select
Else
    End
End If
End Sub

Private Sub mnunew_Click()
If filesaved = False Then
Select Case MsgBox("Current file not saved. Save it now?", vbYesNoCancel)
Case vbYes
Call mnusave_Click
Case vbNo
GoTo newf
Case vbCancel
Exit Sub
End Select
Else
newf:
Text1.Text = ""
End If
End Sub

Private Sub mnuopen_Click()
On Error GoTo erh
If filesaved = False Then
Select Case MsgBox("Current file not saved. Save it now?", vbYesNoCancel)
Case vbYes
Call mnusave_Click
Case vbNo
GoTo fopen
Case vbCancel
Exit Sub
End Select
Else
fopen:
On Error Resume Next
cd1.ShowOpen
If Trim(cd1.FileName) = "" Then Exit Sub
Dim a As Object, b As Object
Set a = CreateObject("scripting.filesystemobject")
Set b = a.opentextfile(cd1.FileName)
Text1.Text = b.readall
b.Close
End If
Exit Sub
erh:
MsgBox "Error : " & Err.Description, vbCritical
End Sub

Private Sub mnupaste_Click()
Text1.SelText = Clipboard.GetText
End Sub

Private Sub mnupview_Click()
Form2.Show
End Sub

Private Sub mnurunscript_Click()
execute
End Sub

Private Sub mnusave_Click()
On Error GoTo erh
If Trim(filen) = "" Then
cd1.ShowSave
If Trim(cd1.FileName) = "" Then Exit Sub
filen = cd1.FileName
End If
Dim a As Object, b As Object
Set a = CreateObject("Scripting.FilesystemObject")
Set b = a.createtextfile(filen)
b.write Text1.Text
b.Close
filesaved = True
Exit Sub
erh:
MsgBox "Error : " & Err.Description, vbCritical
End Sub

Private Sub mnusaveas_Click()
On Error GoTo erh
cd1.ShowSave
If Trim(cd1.FileName) = "" Then Exit Sub
Dim a As Object, b As Object
Set a = CreateObject("Scripting.FilesystemObject")
Set b = a.createtextfile(cd1.FileName)
b.write Text1.Text
b.Close
filesaved = False
Exit Sub
erh:
MsgBox "Error : " & Err.Description, vbCritical
End Sub

Private Sub Text1_Change()
If filesaved = True Then filesaved = False
End Sub
