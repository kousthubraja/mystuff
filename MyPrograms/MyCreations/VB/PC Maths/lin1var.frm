VERSION 5.00
Begin VB.Form lin1var 
   Caption         =   "Linear 1-Variable Equation Solver"
   ClientHeight    =   3825
   ClientLeft      =   60
   ClientTop       =   450
   ClientWidth     =   5850
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   14.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form1"
   MDIChild        =   -1  'True
   ScaleHeight     =   3825
   ScaleWidth      =   5850
   Begin VB.CommandButton Command1 
      Caption         =   "Solve"
      Height          =   615
      Left            =   3120
      TabIndex        =   7
      Top             =   1560
      Width           =   1215
   End
   Begin VB.Frame Frame1 
      Height          =   1815
      Left            =   360
      TabIndex        =   2
      Top             =   1200
      Width           =   2415
      Begin VB.TextBox tb 
         Height          =   450
         Left            =   840
         TabIndex        =   4
         Top             =   1080
         Width           =   1215
      End
      Begin VB.TextBox ta 
         Height          =   450
         Left            =   840
         TabIndex        =   3
         Top             =   360
         Width           =   1215
      End
      Begin VB.Label Label3 
         Caption         =   "b  :"
         Height          =   375
         Index           =   1
         Left            =   240
         TabIndex        =   6
         Top             =   1080
         Width           =   495
      End
      Begin VB.Label Label3 
         Caption         =   "a  :"
         Height          =   375
         Index           =   0
         Left            =   240
         TabIndex        =   5
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Clear"
      Height          =   615
      Left            =   3120
      TabIndex        =   1
      Top             =   2280
      Width           =   1215
   End
   Begin VB.TextBox cx 
      Height          =   570
      HideSelection   =   0   'False
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   3120
      Width           =   5655
   End
   Begin VB.Label Label1 
      Caption         =   "ax + b = 0"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   15.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   1920
      TabIndex        =   9
      Top             =   600
      Width           =   1575
   End
   Begin VB.Label Label2 
      Caption         =   "Enter the coefficients as in the General Equation :"
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   120
      TabIndex        =   8
      Tag             =   " "
      Top             =   120
      Width           =   5655
   End
End
Attribute VB_Name = "lin1var"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo erh
Dim x As Double, a As Double, b As Double
a = Trim(Val(ta))
b = Trim(Val(tb))

If a = 0 Then
    If b = 0 Then
    cx.Text = "x can take any value"
    Else
    MsgBox "a cannot be zero.", vbInformation, "PC Maths"
    End If
    Exit Sub
End If

x = (-b) / a
cx.Text = "x = " & x

Exit Sub
erh:
MsgBox Err.Description, vbCritical, "Error!"
End Sub

Private Sub Command2_Click()
ta = ""
tb = ""
cx.Text = ""
End Sub

