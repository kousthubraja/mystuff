Public Class Form1
    Dim dir, name_new As String

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        fd1.ShowDialog()
        If (fd1.SelectedPath <> "") Then
            dir = fd1.SelectedPath
            For Each oldname As String In My.Computer.FileSystem.GetFiles(dir)
                name_new = My.Computer.FileSystem.GetFileInfo(oldname).Name
                name_new = name_new.Replace("_", " ")
                name_new = name_new.Replace(" h264 ", " ")
                name_new = name_new.Substring(0, 1).ToUpper() & name_new.Substring(1)
                If (getnum(name_new) <> "") Then name_new = name_new.Replace(getnum(name_new), "")
                If My.Computer.FileSystem.GetFileInfo(oldname).Name = name_new Then Continue For
                My.Computer.FileSystem.RenameFile(oldname, name_new)
            Next

            Shell("explorer " & dir, AppWinStyle.NormalFocus)
        End If

    End Sub

    Function getnum(ByVal fname As String)
        Dim l, i As Int16
        Dim num As String

        i = fname.Length - 5
        num = ""

        While IsNumeric(fname.Substring(i, 1))
            num = fname.Substring(i, 1) & num
            i = i - 1
        End While

        getnum = num
    End Function

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        Dim fname As String
        fname = "hello edwe fd3"

        MsgBox(fname)
    End Sub
End Class
