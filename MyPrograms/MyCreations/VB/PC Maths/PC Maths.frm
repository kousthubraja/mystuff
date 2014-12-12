VERSION 5.00
Begin VB.MDIForm PC Maths 
   BackColor       =   &H8000000C&
   Caption         =   "PC Maths - Mathematics on PC!"
   ClientHeight    =   6360
   ClientLeft      =   165
   ClientTop       =   855
   ClientWidth     =   8745
   LinkTopic       =   "MDIForm1"
   StartUpPosition =   3  'Windows Default
   WindowState     =   2  'Maximized
   Begin VB.Menu eqn_sol 
      Caption         =   "Solve Equation"
      Begin VB.Menu lin_eqn 
         Caption         =   "Linear"
         Begin VB.Menu lin_1var 
            Caption         =   "1-Variable"
         End
         Begin VB.Menu lin_2var 
            Caption         =   "2-Varible"
         End
         Begin VB.Menu lin_3var 
            Caption         =   "3-Variable"
         End
      End
      Begin VB.Menu q_sol 
         Caption         =   "Quadratic"
         Begin VB.Menu q_1var 
            Caption         =   "1-Variable"
         End
      End
   End
   Begin VB.Menu eqn_mak 
      Caption         =   "Equation Maker"
      Begin VB.Menu mnuq_eqn_mak 
         Caption         =   "Qudratic"
      End
      Begin VB.Menu cub_eqn_mak 
         Caption         =   "Cubic"
      End
   End
End
Attribute VB_Name = "PC Maths"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub lin_1var_Click()
lin1var.Show
End Sub

Private Sub lin_2var_Click()
lin2var.Show
End Sub

Private Sub mnuq_eqn_mak_Click()
q_eqn_mak.Show
End Sub

Private Sub q_1var_Click()
q_eqn_1var.Show
End Sub
