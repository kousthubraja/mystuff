Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'On Error GoTo er
        Dim di As New IO.DirectoryInfo(TextBox1.Text)
        Dim dir1 As IO.FileInfo() = di.GetFiles()
        Dim dia As IO.FileInfo
        Dim i, l As Int16
        Dim path, cpath, nam, ext, oldname, newname As String

        path = TextBox1.Text
        cpath = TextBox2.Text
        If Not IO.Directory.Exists(cpath) Then MkDir(cpath)

        ListBox1.Items.Clear()
        ListBox2.Items.Clear()

        For Each dia In dir1
            ext = dia.Extension
            nam = dia.Name.Replace(ext, "")
            oldname = path & "\" & nam & ext
            newname = cpath & "\" & format(nam) & ext

            ListBox1.Items.Add(oldname)
            ListBox2.Items.Add(newname)

            Rename(oldname, newname)


        Next
        l = ListBox1.Items.Count

        Exit Sub
er:
        MsgBox("Some error occured. Check the foldernames")
    End Sub

    Function format(ByVal fname As String)
        'format = UCase(fn)
        Dim fn As String
        fn = fname

        fn = fn.Replace("-", " ")
        fn = fn.Replace("_", " ")

        format = StrConv(fn, VbStrConv.ProperCase)

    End Function

    Private Sub TextBox1_MouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles TextBox1.MouseClick
        Dim fn, path, cpath As String
        fbd.ShowDialog()
        fn = fbd.SelectedPath
        If fn = "" Then Exit Sub

        TextBox1.Text = fn
        path = TextBox1.Text
        cpath = path
        TextBox2.Text = cpath

    End Sub

    Private Sub TextBox2_MouseClick(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles TextBox2.MouseClick
        Dim fn As String
        fbd.ShowDialog()
        fn = fbd.SelectedPath
        If fn <> "" Then TextBox2.Text = fn
    End Sub

End Class


