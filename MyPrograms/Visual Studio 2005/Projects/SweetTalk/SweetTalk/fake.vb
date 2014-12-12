Public Class fake
    Public username As String

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        If IsNumeric(TextBox1.Text) And IsNumeric(TextBox2.Text) Then
            MsgBox(Val(TextBox1.Text) + Val(TextBox2.Text))
        Else
            If Not IsNumeric(TextBox1.Text) And TextBox2.Text.Trim = "32" Then
                username = TextBox1.Text
                Form1.Visible = True
                Me.Hide()
            End If
        End If
    End Sub
End Class