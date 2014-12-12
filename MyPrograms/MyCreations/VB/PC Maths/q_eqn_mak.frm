VERSION 5.00
Begin VB.Form q_eqn_mak 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Quadratic Equation Maker"
   ClientHeight    =   4575
   ClientLeft      =   45
   ClientTop       =   435
   ClientWidth     =   6390
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
   ScaleHeight     =   80.698
   ScaleMode       =   6  'Millimeter
   ScaleWidth      =   112.713
   Begin VB.Frame Frame3 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   12
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4455
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   6135
      Begin VB.CommandButton Com_solve 
         Caption         =   "Make"
         Height          =   615
         Left            =   3240
         TabIndex        =   8
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Frame Frame4 
         Height          =   1815
         Left            =   480
         TabIndex        =   3
         Top             =   1320
         Width           =   2415
         Begin VB.TextBox tx2 
            Height          =   450
            Left            =   840
            TabIndex        =   5
            Top             =   1080
            Width           =   1215
         End
         Begin VB.TextBox tx1 
            Height          =   450
            Left            =   840
            TabIndex        =   4
            Top             =   360
            Width           =   1215
         End
         Begin VB.Label Label3 
            Caption         =   "x2  :"
            Height          =   375
            Index           =   4
            Left            =   240
            TabIndex        =   7
            Top             =   1080
            Width           =   495
         End
         Begin VB.Label Label3 
            Caption         =   "x1  :"
            Height          =   375
            Index           =   5
            Left            =   240
            TabIndex        =   6
            Top             =   360
            Width           =   495
         End
      End
      Begin VB.CommandButton Com_clear 
         Caption         =   "Clear"
         Height          =   615
         Left            =   3240
         TabIndex        =   2
         Top             =   2400
         Width           =   1215
      End
      Begin VB.TextBox teqn 
         Height          =   855
         HideSelection   =   0   'False
         Left            =   240
         Locked          =   -1  'True
         MultiLine       =   -1  'True
         TabIndex        =   1
         Top             =   3240
         Width           =   5655
      End
      Begin VB.Label Label4 
         Caption         =   "Enter the two roots to make the Quadratic Equation :"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   12
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   735
         Left            =   240
         TabIndex        =   9
         Tag             =   " "
         Top             =   360
         Width           =   5055
      End
   End
End
Attribute VB_Name = "q_eqn_mak"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Com_clear_Click()
tx1 = ""
tx2 = ""
teqn = ""
End Sub

Private Sub Com_solve_Click()
Dim x1 As Double, x2 As Double, b As Double, c As Double, eqn As String
x1 = Val(Trim(tx1))
x2 = Val(Trim(tx2))
b = x1 + x2
c = x1 * x2
eqn = "x² + " & -b & "x + " & c & " = 0"
teqn = eqn

End Sub
