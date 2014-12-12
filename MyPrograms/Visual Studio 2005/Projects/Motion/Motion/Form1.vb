Public Class Form1

    Dim ox, oy As Int32

    Private Sub Form1_Load(ByVal sender As System.Object, ByVal e As System.EventArgs) Handles MyBase.Load

    End Sub

    Private Sub Form1_MouseMove(ByVal sender As Object, ByVal e As System.Windows.Forms.MouseEventArgs) Handles Me.MouseMove
        Dim x, y, dx, dy As Int32
        x = e.Location.X
        y = e.Location.Y

        x = x / 2
        y = y / 2

        dx = x - ox
        dy = y - oy

        If dx > 0 Then
            Label1.Text = "Right"
        ElseIf dx < 0 Then
            Label1.Text = "Left"
        End If

        If dy > 0 Then
            Label2.Text = "Down"
        ElseIf dy < 0 Then
            Label2.Text = "Up"
        End If

        ox = x
        oy = y
    End Sub
End Class
