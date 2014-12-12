VERSION 5.00
Begin VB.Form q_eqn_1var 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Quadratic Equation Solver"
   ClientHeight    =   5415
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6375
   FillStyle       =   0  'Solid
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
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   5415
   ScaleWidth      =   6375
   Begin VB.Frame Frame1 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   5295
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   6135
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   615
         Left            =   3240
         TabIndex        =   10
         Top             =   1920
         Width           =   1215
      End
      Begin VB.Frame Frame2 
         Height          =   2535
         Left            =   480
         TabIndex        =   3
         Top             =   1560
         Width           =   2415
         Begin VB.TextBox tc 
            Height          =   450
            Left            =   840
            TabIndex        =   6
            Top             =   1800
            Width           =   1215
         End
         Begin VB.TextBox tb 
            Height          =   450
            Left            =   840
            TabIndex        =   5
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox ta 
            Height          =   450
            Left            =   840
            TabIndex        =   4
            Top             =   360
            Width           =   1215
         End
         Begin VB.Label Label3 
            Caption         =   "c  :"
            Height          =   375
            Index           =   2
            Left            =   240
            TabIndex        =   9
            Top             =   1800
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "b  :"
            Height          =   375
            Index           =   1
            Left            =   240
            TabIndex        =   8
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "a  :"
            Height          =   375
            Index           =   0
            Left            =   240
            TabIndex        =   7
            Top             =   360
            Width           =   495
         End
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   615
         Left            =   3240
         TabIndex        =   2
         Top             =   2640
         Width           =   1215
      End
      Begin VB.TextBox cx 
         Height          =   855
         HideSelection   =   0   'False
         Left            =   240
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   4200
         Width           =   5655
      End
      Begin VB.Label Label1 
         Caption         =   "ax² + bx + c = 0"
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
         Left            =   1680
         TabIndex        =   12
         Top             =   960
         Width           =   2415
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
         Left            =   240
         TabIndex        =   11
         Tag             =   " "
         Top             =   360
         Width           =   5655
      End
   End
End
Attribute VB_Name = "q_eqn_1var"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
On Error GoTo erh
If Trim(Val(ta)) = 0 Then
MsgBox "a cannot be zero.", vbInformation
Exit Sub
End If

Dim x1 As Double, x2 As Double, a As Double, b As Double, c As Double, d As Double
a = Trim(Val(ta))
b = Trim(Val(tb))
c = Trim(Val(tc))
d = b * b - 4 * a * c

If d < 0 Then
d = d * -1
r = (-b) / (2 * a)
i = Sqr(d) / (2 * a)

sx1 = "(" & r & ") + (" & i & "i" & ")"
sx2 = "(" & r & ") - (" & i & "i" & ")"
cx.Text = "x1 = " & sx1 & vbCrLf & "x2 = " & sx2

Else
x1 = (-b + Sqr(d)) / (2 * a)
x2 = (-b - Sqr(d)) / (2 * a)
cx.Text = "x1 = " & x2 & vbCrLf & "x2 = " & x1
End If

Exit Sub
erh:
MsgBox Err.Description, vbCritical, "Error!"
End Sub

Private Sub Command2_Click()
ta = ""
tb = ""
tc = ""
cx.Text = ""
End Sub

