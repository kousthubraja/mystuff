Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim s() As String, tmp As String, tlst() As String, i As Integer
        Dim con As System.Net.FtpWebRequest
        '        con.Method = System.Net.WebRequestMethods.Ftp.UploadFile

        With My.Computer.FileSystem
            s = Split(.ReadAllText("c:\my files\hs.csv"), vbCrLf)
            For i = 0 To s.Length - 1
                tlst = Split(s(i), ",")
                'con = DirectCast(System.Net.WebRequest.Create("ftp://" & tlst(0)), System.Net.FtpWebRequest)
                'con.Credentials = New System.Net.NetworkCredential(tlst(1), tlst(2))
                'con.Method = System.Net.WebRequestMethods.Ftp.MakeDirectory
                md("ftp://" & tlst(0) & "", tlst(1), tlst(2))


                
            Next

        End With
    End Sub

    Sub md(ByVal fn As String, ByVal u As String, ByVal p As String)
        Dim con As System.Net.FtpWebRequest
        con = DirectCast(System.Net.WebRequest.Create(fn), System.Net.FtpWebRequest)
        con.Credentials = New System.Net.NetworkCredential(u, p, fn)
        con.Method = System.Net.WebRequestMethods.Ftp.MakeDirectory
        MsgBox(con.GetResponse().GetResponseStream.CanWrite)

    End Sub
End Class
