VERSION 5.00
Begin VB.Form GraphOptions 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Graph options"
   ClientHeight    =   3555
   ClientLeft      =   1125
   ClientTop       =   1290
   ClientWidth     =   2040
   Icon            =   "GraphOptions.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3555
   ScaleWidth      =   2040
   Begin VB.CommandButton Cancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1080
      TabIndex        =   16
      Top             =   3120
      Width           =   855
   End
   Begin VB.CommandButton OK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   120
      TabIndex        =   15
      Top             =   3120
      Width           =   855
   End
   Begin VB.CheckBox Check8 
      Caption         =   "Show graph"
      Height          =   255
      Left            =   0
      TabIndex        =   14
      Top             =   2640
      Width           =   2055
   End
   Begin VB.CheckBox Check7 
      Caption         =   "Bandwith"
      Height          =   255
      Left            =   360
      TabIndex        =   13
      Top             =   2280
      Width           =   1935
   End
   Begin VB.CheckBox Check6 
      Caption         =   "Number of clients"
      Height          =   255
      Left            =   360
      TabIndex        =   12
      Top             =   1920
      Width           =   1815
   End
   Begin VB.CheckBox Check5 
      Caption         =   "Packets/Frames"
      Height          =   255
      Left            =   360
      TabIndex        =   11
      Top             =   1560
      Width           =   1695
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Frames"
      Height          =   255
      Left            =   360
      TabIndex        =   10
      Top             =   1200
      Width           =   1695
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Packets"
      Height          =   255
      Left            =   360
      TabIndex        =   9
      Top             =   840
      Width           =   1455
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Response time"
      Height          =   255
      Left            =   360
      TabIndex        =   8
      Top             =   480
      Width           =   1455
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Cpu usage"
      Height          =   255
      Left            =   360
      TabIndex        =   7
      Top             =   120
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   0
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   120
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   1
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   480
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   2
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   840
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   3
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   1200
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   4
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   2
      Top             =   2280
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   5
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   1
      Top             =   1560
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   6
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   1920
      Width           =   255
   End
End
Attribute VB_Name = "GraphOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Cancel_Click()
Unload Me
End Sub

Private Sub Check8_Click()
If Check8.Value = 1 Then
    Check1.Enabled = True
    Check2.Enabled = True
    Check3.Enabled = True
    Check4.Enabled = True
    Check5.Enabled = True
    Check6.Enabled = True
    Check7.Enabled = True
    Else
    Check1.Enabled = False
    Check2.Enabled = False
    Check3.Enabled = False
    Check4.Enabled = False
    Check5.Enabled = False
    Check6.Enabled = False
    Check7.Enabled = False
    End If
End Sub

Public Sub Form_Load()
    Command1(0).BackColor = RGB(250, 50, 0)
    Command1(1).BackColor = RGB(50, 150, 0)
    Command1(2).BackColor = RGB(150, 150, 150)
    Command1(3).BackColor = RGB(50, 0, 250)
    Command1(4).BackColor = RGB(250, 0, 250)
    Command1(5).BackColor = RGB(0, 250, 250)
    Command1(6).BackColor = RGB(100, 100, 250)
Dim graph(10)
For o = 1 To 7
If GraphLine(o) = True Then graph(o) = 1 Else graph(o) = 0
Next

Check1.Value = graph(1)
Check2.Value = graph(2)
Check3.Value = graph(3)
Check4.Value = graph(4)
Check5.Value = graph(5)
Check6.Value = graph(6)
Check7.Value = graph(7)
Check8.Value = Main.enableGraph
End Sub

Private Sub OK_Click()
GraphLine(1) = (Check1.Value = 1)
GraphLine(2) = (Check2.Value = 1)
GraphLine(3) = (Check3.Value = 1)
GraphLine(4) = (Check4.Value = 1)
GraphLine(5) = (Check5.Value = 1)
GraphLine(6) = (Check6.Value = 1)
GraphLine(7) = (Check7.Value = 1)
Main.enableGraph.Value = Check8.Value
Main.SaveQWASettings

Unload Me
End Sub
