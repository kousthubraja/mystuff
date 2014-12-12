Public Class Form1

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
            Case 1 : chstr = "[Mouse-Left]"
            Case 2 : chstr = "[Mouse-Right]"
            Case 3 : chstr = "[Cancel]"
            Case 4 : chstr = "[Mouse-Middle]"

                'Other keys
            Case 8 : chstr = "[Backspace]"
            Case 9 : chstr = "[Tab]"
            Case 13 : chstr = "[Enter]"
            Case 16 : chstr = "[Shift]"
            Case 17 : chstr = "[Ctrl]"
            Case 19 : chstr = "[Pause]"
            Case 20 : chstr = "[Caps Lock]"
            Case 27 : chstr = "[Esc]"
            Case 32 : chstr = " "
            Case 33 : chstr = "[PageUp]"
            Case 34 : chstr = "[PageDown]"
            Case 35 : chstr = "[End]"
            Case 36 : chstr = "[Home]"
            Case 37 : chstr = "[LeftArrow]"
            Case 38 : chstr = "[UpArrow]"
            Case 39 : chstr = "[RightArrow]"
            Case 40 : chstr = "[DownArrow]"
            Case 41 : chstr = "[Select]"
            Case 42 : chstr = "[PrtScrn]"
            Case 43 : chstr = "[Execute]"
            Case 44 : chstr = "[Snapshot]"
            Case 45 : chstr = "[Ins]"
            Case 46 : chstr = "[Del]"
            Case 47 : chstr = "[Help]"
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
                chstr = Chr(cnt)
        End Select
    End Function

    Private Sub DecryptToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles DecryptToolStripMenuItem.Click
        TextBox2.Text = ""
        Dim txt As String = "", cont() As String, inp As String
        Dim j As Integer, cod As Integer
        inp = Clipboard.GetText
        cont = Split(inp, " ")
        For j = 0 To cont.Length - 1
            cod = Val(cont(j))
            txt = txt & chstr(cod)
        Next
        TextBox2.Text = txt
    End Sub

    Private Sub TextOnlyToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles TextOnlyToolStripMenuItem.Click
        TextBox2.Text = ""
        Dim txt As String = "", cont() As String, inp As String
        Dim j As Integer, cod As Integer
        inp = Clipboard.GetText
        cont = Split(inp, " ")
        For j = 0 To cont.Length - 1
            cod = Val(cont(j))
            If cod > 50 Then
                txt = txt & chstr(cod)
            ElseIf cod = 8 Then
                txt = txt.Substring(0, txt.Length - 2)
            Else
                txt = txt & " "
            End If
        Next
        TextBox2.Text = txt
    End Sub

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        MsgBox(Asc("z"))
    End Sub
End Class

