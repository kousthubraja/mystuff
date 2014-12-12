Public Class Form1

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        Dim inurl As String, i As Int16, cod As String, outurl As String = ""
        inurl = TextBox1.Text
        For i = 1 To Len(inurl)
            If Mid(inurl, i, 1) = "%" Then
                cod = Mid(inurl, i, 3)
                outurl = outurl & dec(cod)
                i = i + 2
            Else
                outurl = outurl & Mid(inurl, i, 1)
            End If
        Next
        TextBox2.Text = outurl
    End Sub

    Function dec(ByVal incod As String) As String
        Select Case incod
            Case "%21"
                dec = "!"
            Case "%2A"
                dec = "*"

            Case "%27"
                dec = "'"
            Case "%28"
                dec = "("
            Case "%29"
                dec = ")"
            Case "%3B"
                dec = ";"
            Case "%3A"
                dec = ":"
            Case "%40"
                dec = "@"
            Case "%26"
                dec = "&"
            Case "%3D"
                dec = "="
            Case "%2B"
                dec = "+"
            Case "%24"
                dec = "$"
            Case "%2C"
                dec = ","
            Case "%2F"
                dec = "/"
            Case "%3F"
                dec = "?"
            Case "%23"
                dec = "#"
            Case "%5B"
                dec = "["
            Case "%5D"
                dec = "]"
            Case Else
                dec = ""
        End Select
    End Function

    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button2.Click
        MsgBox(dec(InputBox("df")))
    End Sub
End Class
