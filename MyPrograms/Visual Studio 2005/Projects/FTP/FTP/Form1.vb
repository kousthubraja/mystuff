Public Class Form1
    Private Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim con As System.Net.FtpWebRequest
        con = DirectCast(System.Net.WebRequest.Create("ftp://ftp.mcraesales.com/file01.txt"), System.Net.FtpWebRequest)
        con.Credentials = New System.Net.NetworkCredential("kipmcrae@mcraesales.com", "5achamps")
        con.Method = System.Net.WebRequestMethods.Ftp.UploadFile

        Dim bFile() As Byte = System.IO.File.ReadAllBytes("C:\my files\test\test1.txt")
        Dim clsStream As System.IO.Stream = con.GetRequestStream()
        clsStream.Write(bFile, 0, bFile.Length)
        clsStream.Close()
        clsStream.Dispose()


    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        'Dim con As System.Net.FtpWebRequest
        'con = DirectCast(System.Net.FtpWebRequest.Create("ftp://ftp.mcraesales.com/index.php"), System.Net.FtpWebRequest)
        'con.Credentials = New System.Net.NetworkCredential("kipmcrae@mcraesales.com", "5achamps")
        'con.Method = System.Net.WebRequestMethods.Ftp.DownloadFile

        'Dim bFile() As Byte ' = System.IO.File.ReadAllBytes("C:\my files\test\test1.txt")
        'Dim clsStream As System.IO.Stream = con.GetRequestStream()
        'clsStream.Read(bfile,0,bfile
        'clsStream.Write(bFile, 0, bFile.Length)
        'clsStream.Close()
        'clsStream.Dispose()

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        MsgBox(My.Computer.FileSystem.SpecialDirectories.Temp)

    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        MsgBox(GetAsyncKeyState(186))

    End Sub
End Class
