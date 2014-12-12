Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim di As New IO.DirectoryInfo("c:\my programs")
        Dim diar1 As IO.FileInfo() = di.GetFiles
        Dim dl As IO.DirectoryInfo() = di.GetDirectories
        Dim d As IO.DirectoryInfo

        Dim dra As IO.FileInfo


        For Each d In dl
            ListBox1.Items.Add(d)

        Next

    End Sub
End Class
