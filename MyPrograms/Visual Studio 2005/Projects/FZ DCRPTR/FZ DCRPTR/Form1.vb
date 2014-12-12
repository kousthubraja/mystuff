Public Class Form1

    Private Sub TextBox1_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextBox1.TextChanged
        TextBox2.Text = ""
        Dim s As String, i As Int16, n As Int16
        s = TextBox1.Text
        For i = 1 To Len(s) Step 3
            n = Val(Mid(s, i, 3))
            TextBox2.Text = TextBox2.Text & Chr(n)
        Next
    End Sub
End Class
