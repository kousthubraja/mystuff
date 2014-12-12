VERSION 5.00
Begin VB.Form lin2var 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Linear 2-Variable Equation Solver"
   ClientHeight    =   7710
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   8610
   BeginProperty Font 
      Name            =   "Arial"
      Size            =   14.25
      Charset         =   0
      Weight          =   700
      Underline       =   0   'False
      Italic          =   0   'False
      Strikethrough   =   0   'False
   EndProperty
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MDIChild        =   -1  'True
   ScaleHeight     =   7710
   ScaleWidth      =   8610
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
      Height          =   7575
      Left            =   120
      TabIndex        =   5
      Top             =   0
      Width           =   8415
      Begin VB.TextBox cxy 
         Height          =   855
         HideSelection   =   0   'False
         Left            =   840
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   13
         Top             =   4680
         Width           =   5655
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Clear"
         Height          =   615
         Left            =   5880
         TabIndex        =   12
         Top             =   3720
         Width           =   1335
      End
      Begin VB.Frame Frame2 
         Height          =   2535
         Left            =   480
         TabIndex        =   8
         Top             =   1920
         Width           =   4575
         Begin VB.TextBox tr 
            Height          =   450
            Left            =   3000
            TabIndex        =   6
            Top             =   1800
            Width           =   1215
         End
         Begin VB.TextBox tq 
            Height          =   450
            Left            =   3000
            TabIndex        =   4
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox tp 
            Height          =   450
            Left            =   3000
            TabIndex        =   3
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox ta 
            Height          =   450
            Left            =   840
            TabIndex        =   0
            Top             =   360
            Width           =   1215
         End
         Begin VB.TextBox tb 
            Height          =   450
            Left            =   840
            TabIndex        =   1
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox tc 
            Height          =   450
            Left            =   840
            TabIndex        =   2
            Top             =   1800
            Width           =   1215
         End
         Begin VB.Label Label3 
            Caption         =   "r :"
            Height          =   375
            Index           =   5
            Left            =   2400
            TabIndex        =   19
            Top             =   1800
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "q :"
            Height          =   375
            Index           =   4
            Left            =   2400
            TabIndex        =   18
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "p  :"
            Height          =   375
            Index           =   3
            Left            =   2400
            TabIndex        =   17
            Top             =   360
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "a  :"
            Height          =   375
            Index           =   0
            Left            =   240
            TabIndex        =   11
            Top             =   360
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "b  :"
            Height          =   375
            Index           =   1
            Left            =   240
            TabIndex        =   10
            Top             =   1080
            Width           =   495
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
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Solve"
         Height          =   615
         Left            =   5880
         TabIndex        =   7
         Top             =   3000
         Width           =   1335
      End
      Begin VB.Label Label4 
         Caption         =   "px + qy + r = 0"
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
         TabIndex        =   16
         Top             =   1320
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
         TabIndex        =   15
         Tag             =   " "
         Top             =   360
         Width           =   5655
      End
      Begin VB.Label Label1 
         Caption         =   "ax + by + c = 0"
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
         TabIndex        =   14
         Top             =   960
         Width           =   2415
      End
   End
End
Attribute VB_Name = "lin2var"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim a As Double, b As Double, c As Double, p As Double, q As Double, r As Double, x As Double, y As Double, d As Double
a = Val(Trim(ta))
b = Val(Trim(tb))
c = Val(Trim(tc))
p = Val(Trim(tp))
q = Val(Trim(tq))
r = Val(Trim(tr))

If a / p = b / q And a / p <> c / r Then
    cxy = "No solution for x and y"
ElseIf a / p = b / q And a / p = c / r Then
    cxy = "Infinite No. of solutions for x and y"
ElseIf c = r = 0 Then
    cxy = "x=0" & vbCrLf & "y=0"
Else
    d = (a * q - b * p)
    x = (b * r - c * q) / d
    y = (c * p - a * r) / d
    cxy = x & vbCrLf & y
End If
End Sub

Private Sub Command2_Click()
ta = ""
tb = ""
tc = ""
tp = ""
tq = ""
tr = ""
cxy = ""
End Sub
