Public Class Form1
    Dim dir, name_new As String

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        fd1.ShowDialog()
        If (fd1.SelectedPath <> "") Then
            dir = fd1.SelectedPath
            For Each oldname As String In My.Computer.FileSystem.GetFiles(dir)
                name_new = My.Computer.FileSystem.GetFileInfo(oldname).Name
                For Each cut_str As String In Split(TextBox1.Text, vbCrLf)
                    name_new = name_new.Replace(cut_str, "")
                    name_new = name_new.Replace("  ", " ")
                    name_new = name_new.Replace("_", " ")
                Next
                name_new = name_new.Substring(0, 1).ToUpper() & name_new.Substring(1)
                If My.Computer.FileSystem.GetFileInfo(oldname).Name = name_new Then Continue For
                My.Computer.FileSystem.RenameFile(oldname, My.Computer.FileSystem.GetParentPath(oldname) + "\" + name_new)
            Next

            Shell("explorer " & dir, AppWinStyle.NormalFocus)
        End If

    End Sub
End Class
