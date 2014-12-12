VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form frmUpload 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "HTTP File Upload"
   ClientHeight    =   9630
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   12390
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   9630
   ScaleWidth      =   12390
   StartUpPosition =   3  'Windows Default
   Begin VB.TextBox txtName 
      Height          =   375
      Left            =   8880
      TabIndex        =   4
      Text            =   "file"
      ToolTipText     =   "Name of the file variable"
      Top             =   1680
      Width           =   3375
   End
   Begin VB.TextBox txtMIMEType 
      Height          =   375
      Left            =   8880
      TabIndex        =   3
      Text            =   "application/octet-stream"
      ToolTipText     =   "Content Type of the File"
      Top             =   1200
      Width           =   3375
   End
   Begin VB.CommandButton cmdUpload 
      Caption         =   "&Upload"
      Default         =   -1  'True
      Height          =   495
      Left            =   9960
      TabIndex        =   5
      Top             =   3000
      Width           =   2295
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   5760
      Top             =   3000
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
   Begin VB.FileListBox file 
      Height          =   2040
      Left            =   3960
      TabIndex        =   1
      Top             =   120
      Width           =   2775
   End
   Begin VB.DirListBox dir 
      Height          =   2115
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   3735
   End
   Begin VB.TextBox txtResponse 
      Height          =   2895
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   8
      TabStop         =   0   'False
      Top             =   6480
      Width           =   12135
   End
   Begin VB.TextBox txtRequest 
      Height          =   2055
      Left            =   120
      Locked          =   -1  'True
      MultiLine       =   -1  'True
      ScrollBars      =   3  'Both
      TabIndex        =   7
      TabStop         =   0   'False
      Top             =   3720
      Width           =   12135
   End
   Begin VB.TextBox txtUrl 
      Height          =   375
      Left            =   1800
      TabIndex        =   2
      Text            =   "http://adam.codedv.com/examples/post_dump.php"
      ToolTipText     =   "URL to send the file"
      Top             =   2400
      Width           =   10455
   End
   Begin VB.TextBox txtUploadFile 
      Height          =   375
      Left            =   6840
      Locked          =   -1  'True
      TabIndex        =   6
      TabStop         =   0   'False
      ToolTipText     =   "Path of the File to Upload"
      Top             =   600
      Width           =   5415
   End
   Begin VB.Label lblName 
      Caption         =   "Name"
      Height          =   375
      Left            =   6840
      TabIndex        =   14
      Top             =   1680
      Width           =   1935
   End
   Begin VB.Label lblMIMEType 
      Caption         =   "MIME Type"
      Height          =   375
      Left            =   6840
      TabIndex        =   13
      Top             =   1200
      Width           =   1815
   End
   Begin VB.Label lblUrl 
      Caption         =   "Upload URL"
      Height          =   375
      Left            =   120
      TabIndex        =   12
      Top             =   2400
      Width           =   1455
   End
   Begin VB.Label lblFile 
      Caption         =   "File to upload:"
      Height          =   375
      Left            =   6840
      TabIndex        =   11
      Top             =   120
      Width           =   5415
   End
   Begin VB.Label lblRequest 
      Caption         =   "HTTP Request:"
      Height          =   375
      Left            =   120
      TabIndex        =   10
      Top             =   3240
      Width           =   2175
   End
   Begin VB.Label lblResponse 
      Caption         =   "HTTP Response"
      Height          =   375
      Left            =   120
      TabIndex        =   9
      Top             =   6000
      Width           =   2055
   End
End
Attribute VB_Name = "frmUpload"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Dim blnConnected As Boolean ' flag which indicates whether or not winsock has
                            ' a connection


' this function builds a http request baes on the following parameters:
'
' data = the data from the file to be uploaded
' DestUrl = a URL to containing information on where to send the data
' UploadName = the field upload name usually pass by <input type="file" name="uploadname"
' Filename = the name of the file
' The MIME type of the file
Private Function BuildFileUploadRequest(ByRef strData As String, _
                                        ByRef DestUrl As URL, _
                                        ByVal UploadName As String, _
                                        ByVal FileName As String, _
                                        ByVal MimeType As String) As String
    
    Dim strHttp As String ' holds the entire HTTP request
    Dim strBoundary As String 'the boundary between each entity
    Dim strBody As String ' holds the body of the HTTP request
    Dim lngLength As Long ' the length of the HTTP request
        
    ' create a boundary consisting of a random string
    strBoundary = RandomAlphaNumString(32)
    
    ' create the body of the http request in the form
    '
    ' --boundary
    ' Content-Disposition: form-data; name="UploadName"; filename="FileName"
    ' Content-Type: MimeType
    '
    ' file data here
    '--boundary--
    strBody = "--" & strBoundary & vbCrLf
    strBody = strBody & "Content-Disposition: form-data; name=""" & UploadName & """; filename=""" & _
                    FileName & """" & vbCrLf
    strBody = strBody & "Content-Type: " & MimeType & vbCrLf
    strBody = strBody & vbCrLf & strData
    strBody = strBody & vbCrLf & "--" & strBoundary & "--"
    
    ' find the length of the request body - this is required for the
    ' Content-Length header
    lngLength = Len(strBody)
    
    ' construct the HTTP request in the form:
    '
    ' POST /path/to/reosurce HTTP/1.0
    ' Host: host
    ' Content-Type: multipart-form-data, boundary=boundary
    ' Content-Length: len(strbody)
    '
    ' HTTP request body
    strHttp = "POST " & DestUrl.URI & "?" & DestUrl.Query & " HTTP/1.0" & vbCrLf
    strHttp = strHttp & "Host: " & DestUrl.Host & vbCrLf
    strHttp = strHttp & "Content-Type: multipart/form-data, boundary=" & strBoundary & vbCrLf
    strHttp = strHttp & "Content-Length: " & lngLength & vbCrLf & vbCrLf
    strHttp = strHttp & strBody

    BuildFileUploadRequest = strHttp
End Function
                                     
' this routine does all the work - it gathers the info required for the HTTP request
' and sends it via the winsock control
Private Sub cmdUpload_Click()
    Dim strFile As String
    Dim strHttp As String
    Dim DestUrl As URL
    
    ' if a request is allredy being sent
    ' exit
    If blnConnected Then Exit Sub
    
    ' check that a file was selected
    If txtUploadFile.Text = vbNullString Then
        MsgBox "No File Chosen", vbCritical, "ERROR"
        
        Exit Sub
    End If

    ' extract the URL using a helper function
    DestUrl = ExtractUrl(txtUrl.Text)
    
    If DestUrl.Host = vbNullString Then
        MsgBox "Invalid Host", vbCritical, "ERROR"
        
        Exit Sub
    End If
    
    ' clear the old response
    txtResponse.Text = ""
    
    ' read the file contents as a string
    ' N.B: in HTTP everything is a string, even binary files
    strFile = GetFileContents(txtUploadFile.Text)
    
    ' build the HTTP request
    strHttp = BuildFileUploadRequest(strFile, DestUrl, txtName.Text, file.FileName, txtMIMEType.Text)
    
    ' assign the protocol host and port
    Winsock1.Protocol = sckTCPProtocol
    Winsock1.RemoteHost = DestUrl.Host
    
    If DestUrl.Port <> 0 Then
        Winsock1.RemotePort = DestUrl.Port
    Else
        Winsock1.RemotePort = 80
    End If
            
    ' make the connection and send the HTTP request
    Winsock1.Connect
    
    While Not blnConnected
        DoEvents
    Wend
    
    txtRequest.Text = strHttp
    Winsock1.SendData strHttp
End Sub

' this is executed when winsock sneds us data
' in our case it will be the HTTP response
Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
    Dim strData As String
    
    Winsock1.GetData strData, vbString, bytesTotal
    
    txtResponse.Text = txtResponse.Text & strData
    
End Sub

' this is executed when winsock generates an error
Private Sub Winsock1_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
    MsgBox Description, vbExclamation, "ERROR"
    
    Winsock1.Close
End Sub

' this is executed when we make a connection to winsock and it has been accepted
Private Sub Winsock1_Connect()
    blnConnected = True
End Sub

' this is executed when the connection to winsock is closed
Private Sub Winsock1_Close()
    Winsock1.Close
    blnConnected = False

End Sub

' this function retireves the contents of a file and returns it as a string
' this is also ture for binary files
Private Function GetFileContents(ByVal strPath As String) As String
    Dim StrReturn As String
    Dim lngLength As Long
    
    lngLength = FileLen(strPath)
    StrReturn = String(lngLength, Chr(0))
    
    On Error GoTo ERR_HANDLER
    
    Open strPath For Binary As #1
    
    Get #1, , StrReturn
    
    GetFileContents = StrReturn
    
    Close #1
    
    Exit Function
    
ERR_HANDLER:
    MsgBox Err.Description, vbCritical, "ERROR"
    
    Err.Clear
End Function

' generates a random alphanumeirc string of a given length
Private Function RandomAlphaNumString(ByVal intLen As Integer)
    Dim StrReturn As String
    
    Dim X As Integer
    Dim c As Byte
    
    Randomize
    
    For X = 1 To intLen
        c = Int(Rnd() * 127)
    
        If (c >= Asc("0") And c <= Asc("9")) Or _
           (c >= Asc("A") And c <= Asc("Z")) Or _
           (c >= Asc("a") And c <= Asc("z")) Then
           
            StrReturn = StrReturn & Chr(c)
        Else
            X = X - 1
        End If
    Next X
    
    RandomAlphaNumString = StrReturn
End Function

' the routines below have nothing to do with winsock
' they control the working of the GUI
Private Sub lblFile_Click()
    dir.SetFocus
End Sub

Private Sub lblMIMEType_Click()
    txtMIMEType.SetFocus
End Sub

Private Sub lblName_Click()
    txtName.SetFocus
End Sub

Private Sub lblUrl_Click()
    txtUrl.SetFocus
End Sub

Private Sub txtMIMEType_GotFocus()
    txtMIMEType.SelStart = 0
    txtMIMEType.SelLength = Len(txtMIMEType.Text) + 1
End Sub

Private Sub txtName_GotFocus()
    txtName.SelStart = 0
    txtName.SelLength = Len(txtName.Text) + 1
End Sub

Private Sub txtUrl_GotFocus()
    txtUrl.SelStart = 0
    txtUrl.SelLength = Len(txtUrl.Text) + 1
End Sub

Private Sub dir_Change()
    file.Path = dir.Path
End Sub

Private Sub file_Click()
    txtUploadFile.Text = file.Path & "\" & file.FileName
End Sub
