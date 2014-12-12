Module Module1
    Dim pass As String, code As Integer


    Function enc(ByVal s As String) As String
        Dim cod As String
        Dim t As String, c As String
        Dim i As Int16
        cod = ""
        For i = 1 To Len(s)
            c = Mid(s, i, 1)
            t = Trim(Str(Asc(c) + code))
            If Len(t) < 3 Then t = "0" + t
            cod = cod + t
        Next
        enc = cod
    End Function

    Function dec(ByVal s As String) As String
        Dim cod As String
        Dim t As String, c As String
        Dim i As Int16
        cod = ""
        For i = 1 To Len(s) Step 3
            c = Val(Mid(s, i, 3)) - code
            t = Chr(c)

            cod = cod + t
        Next
        dec = cod
    End Function

    Sub passcode(ByVal p As String)
        Dim i As Integer, t As Integer
        t = 0

        For i = 1 To Len(p)
            t = t + (Asc(Mid(p, i, 1)) Mod 7)

        Next
        code = t
    End Sub

    Sub Main()
        Dim a As String, f As String
        Dim filename As String, foldername As String, shortname As String
        Console.Write("Enter password : ")
        pass = Console.ReadLine()
        passcode(pass)
        Console.Write("Encryption/Decryption [E/D] : ")
        f = Console.ReadLine
        f = Trim(LCase(f))
        foldername = CurDir()
        With My.Computer.FileSystem

            If f = "e" Then
                For Each filename In .GetFiles(foldername)
                    shortname = .GetFileInfo(filename).Name
                    a = enc(shortname)
                    .RenameFile(filename, a)
                Next
            ElseIf f = "d" Then
                For Each filename In .GetFiles(foldername)
                    shortname = .GetFileInfo(filename).Name
                    a = dec(shortname)
                    .RenameFile(filename, a)
                Next
            End If
            
        End With
        Console.WriteLine("Done Successfully!" & vbCrLf & "Press any key to exit")
        Console.ReadKey()
    End Sub

End Module
