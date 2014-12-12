Imports system.Threading.Thread

Public Class Form1

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim txt, txt2, fil, fil2 As String
        txt = TextBox1.Text
        fil = My.Computer.FileSystem.CurrentDirectory + "\pyTest.py"
        My.Computer.FileSystem.WriteAllText(fil, txt, False)
        fil2 = My.Computer.FileSystem.CurrentDirectory + "\pyTest.bat"
        txt2 = "cls" & vbCrLf & "cls" & vbCrLf & "python pyTest.py" & vbCrLf & "pause"
        My.Computer.FileSystem.WriteAllText(fil2, txt2, False)
        Shell("pyTest.bat", AppWinStyle.NormalFocus)
        Sleep(3000)
        My.Computer.FileSystem.DeleteFile(fil)
        My.Computer.FileSystem.DeleteFile(fil2)
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Form1_Resize(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Resize
        TextBox1.Width = Me.Width - 40
        TextBox1.Height = Me.Height - 96
        
        Button1.Location = New Point(Me.Width / 2 - 46, Me.Height - 76)
    End Sub
End Class
