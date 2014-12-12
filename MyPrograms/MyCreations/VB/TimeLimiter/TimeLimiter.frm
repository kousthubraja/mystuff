VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Time Limiter"
   ClientHeight    =   3600
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6960
   ControlBox      =   0   'False
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3600
   ScaleWidth      =   6960
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Timer Timer2 
      Enabled         =   0   'False
      Interval        =   60000
      Left            =   4920
      Top             =   3240
   End
   Begin VB.Data Data1 
      Caption         =   "Data1"
      Connect         =   "Access"
      DatabaseName    =   "E:\tlimit.mdb"
      DefaultCursorType=   0  'DefaultCursor
      DefaultType     =   2  'UseODBC
      Exclusive       =   0   'False
      Height          =   345
      Left            =   3000
      Options         =   0
      ReadOnly        =   0   'False
      RecordsetType   =   1  'Dynaset
      RecordSource    =   "tlimit"
      Top             =   4680
      Width           =   1140
   End
   Begin VB.Timer Timer1 
      Interval        =   60000
      Left            =   3480
      Top             =   3840
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   855
      Left            =   4560
      TabIndex        =   0
      Top             =   4200
      Width           =   1335
   End
   Begin VB.Label Label1 
      Caption         =   "Your Time Limit Exceeded. Computer will shutdown in 5 minutes. Please logout fast."
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   26.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   3255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   6735
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim tm As Byte

Private Sub Foram_Load()
With Data1.Recordset
.MoveFirst

If .Fields("date") <> DateValue("5/6/2010") Then

    .Edit
    .Fields("usage") = 0
    .Fields("date") = Date
    .Fields("finished") = False
    .Update
End If
End With
tm = 0
End Sub

Private Sub Timer1_Timer()
With Data1.Recordset
.MoveFirst

If .Fields("date") <> Date Then
    .Edit
    .Fields("usage") = 0
    .Fields("date") = Date
    .Fields("finished") = False
    .Update
End If

If .Fields("finished") Then
    Timer2.Enabled = True
    Timer1.Enabled = False
    Me.Visible = True
    Me.SetFocus
End If

.Edit
.Fields("usage") = .Fields("usage") + 1
If .Fields("usage") >= 120 Then .Fields("finished") = True
.Update
End With
End Sub

Private Sub Timer2_Timer()
tm = tm + 1
If tm >= 5 Then Shell "shutdown -s -t 300"
End Sub
