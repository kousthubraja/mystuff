Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim fn As String
        For Each filest As String In My.Computer.FileSystem.GetFiles("C:\my files\test")
            fn = My.Computer.FileSystem.GetFileInfo(filest).Name

            My.Computer.FileSystem.RenameFile(filest, enc(fn))
        Next
        
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        TextBox1.Text = enc(TextBox1.Text)
    End Sub

    Function enc(ByVal s As String) As String
        Dim cod As String
        Dim t As String, c As String
        Dim i As Int16
        cod = ""
        For i = 1 To len(s)
            c = mid(s, i, 1)
            t = trim(str(asc(c) + 9))
            If len(t) < 3 Then t = "0" + t
            cod = cod + t
        Next
        enc = cod
    End Function

    Function dec(ByVal s As String) As String
        Dim cod As String
        Dim t As String, c As String
        Dim i As Int16
        cod = ""
        For i = 1 To len(s) Step 3
            c = val(mid(s, i, 3)) - 9
            t = chr(c)

            cod = cod + t
        Next
        dec = cod
    End Function

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        Dim text
        text = My.Computer.FileSystem.ReadAllText("C:\my files\test\t.bmp")
        'text = "hello" + text
        My.Computer.FileSystem.WriteAllText("C:\my files\test\t1.bmp", text, False)
    End Sub

    Private Sub TextBox2_TextChanged(ByVal sender As System.Object, ByVal e As System.EventArgs)
        Dim text
        text = My.Computer.FileSystem.ReadAllText("C:\my files\test\t.bmp")
        text = Mid(text, 5)
        My.Computer.FileSystem.WriteAllBytes("C:\my files\test\t.bmp", text, False)

    End Sub

    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        Dim fn As String
        For Each filest As String In My.Computer.FileSystem.GetFiles("C:\my files\test")
            fn = My.Computer.FileSystem.GetFileInfo(filest).Name

            My.Computer.FileSystem.RenameFile(filest, dec(fn))
        Next
    End Sub
End Class

