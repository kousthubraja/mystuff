Public Class Form1
    Dim logfile, tempdir, directory As String


    Private Sub Button4_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button4.Click
        End
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        On Error Resume Next
        RichTextBox1.Text = My.Computer.FileSystem.ReadAllText(logfile)
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        On Error Resume Next
        tempdir = My.Computer.FileSystem.SpecialDirectories.Temp
        directory = Mid(tempdir, 1, Len(tempdir) - 4) & "System"
        logfile = directory & "\" & "logs32.txt"
    End Sub

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        On Error Resume Next
        My.Computer.FileSystem.DeleteFile(logfile)

    End Sub

    Private Sub Button3_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button3.Click
        On Error Resume Next
        If MsgBox("Are you sure?", MsgBoxStyle.YesNo) = MsgBoxResult.Yes Then
            If Trim(InputBox("What is i raised to 1000 (i is the square root of unity)?")) = "1" Then

                Dim regKey As Microsoft.Win32.RegistryKey
                regKey = My.Computer.Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                If Trim(regKey.GetValue("Igfxprm")) <> "" Then regKey.DeleteValue("Igfxprm")
                regKey.Close()
            Else
                MsgBox("That's wrong!", MsgBoxStyle.Critical)
            End If
        End If
    End Sub
End Class
