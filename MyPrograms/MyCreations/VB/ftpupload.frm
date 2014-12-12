VERSION 5.00
Object = "{48E59290-9880-11CF-9754-00AA00C00908}#1.0#0"; "MSINET.OCX"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   3090
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   4680
   LinkTopic       =   "Form1"
   ScaleHeight     =   3090
   ScaleWidth      =   4680
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1800
      TabIndex        =   1
      Top             =   360
      Width           =   2655
   End
   Begin InetCtlsObjects.Inet Inet1 
      Left            =   2040
      Top             =   1320
      _ExtentX        =   1005
      _ExtentY        =   1005
      _Version        =   393216
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Command1"
      Height          =   975
      Left            =   240
      TabIndex        =   0
      Top             =   600
      Width           =   1335
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Inet1.AccessType = icDirect
Inet1.Protocol = icFTP
Inet1.RemotePort = 21
Inet1.URL = "ftp://kr.x10.mx"
Inet1.UserName = "kousthub"
Inet1.Password = "iamkr01"
Inet1.Execute , Text1.Text
End Sub

Private Sub Inet1_StateChanged(ByVal State As Integer)
If State = 12 Then MsgBox "finish"
Print Inet1.ResponseInfo
End Sub
