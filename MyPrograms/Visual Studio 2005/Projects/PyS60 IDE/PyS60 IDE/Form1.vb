Public Class Form1


    Private Sub NoteToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NoteToolStripMenuItem.Click
        Dim l As String, type As String
        l = InputBox("Enter text for note", "Insert Note")
        type = InputBox("Enter type of note(info,conf,error)", "Insert Note")
        t1.AppendText("appuifw.note(u""" & l & """,""" & type & """)" & vbCrLf)

    End Sub

    Private Sub NoteToolStripMenuItem1_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles NoteToolStripMenuItem1.Click
        Dim l As String, type As String
        l = InputBox("Enter label for query", "Insert Query")
        type = InputBox("Enter type of Query(text,number,float,date,time,code)", "Insert Query")
        t1.AppendText("appuifw.query(u""" & l & """,""" & type & """)" & vbCrLf)

    End Sub

    Private Sub MultiQueryToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MultiQueryToolStripMenuItem.Click
        Dim l1 As String, l2 As String
        l1 = InputBox("Enter first label", "Insert Multi-Query")
        l2 = InputBox("Enter second label", "Insert Multi-Query")
        t1.AppendText("appuifw.multi_query(u""" & l1 & """,u""" & l2 & """)" & vbCrLf)

    End Sub

    Private Sub PopupMenuToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles PopupMenuToolStripMenuItem.Click
        Dim lst As String, lbl As String
        lst = InputBox("Enter the list name or list", "Insert Popupmenu")
        lbl = InputBox("Enter the title", "Insert Popupmenu")
        t1.AppendText("appuifw.popup_menu(" & lst & ",u""" & lbl & """)" & vbCrLf)

    End Sub

    Private Sub MultiSelectionListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MultiSelectionListToolStripMenuItem.Click
        Dim lst As String
        lst = InputBox("Enter the list name or list", "Insert Multi-Selection List")
        t1.AppendText("appuifw.popup_menu(" & lst & "'checkbox',0)" & vbCrLf)

    End Sub

    Private Sub SelectionListToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles SelectionListToolStripMenuItem.Click
        Dim lst As String
        lst = InputBox("Enter the list name or list", "Insert Selection List")
        t1.AppendText("appuifw.popup_menu(" & lst & ",0)" & vbCrLf)

    End Sub

    Private Sub ApplicationMenuToolStripMenuItem_Click(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles ApplicationMenuToolStripMenuItem.Click
        Dim lst As String
        lst = InputBox("Enter the list name or list for menu", "Insert Menu")
        t1.AppendText("appuifw.app.menu=[" & lst & "]" & vbCrLf)

    End Sub
End Class
