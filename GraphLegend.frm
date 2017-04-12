VERSION 5.00
Begin VB.Form GraphLegend 
   AutoRedraw      =   -1  'True
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Legend"
   ClientHeight    =   2475
   ClientLeft      =   2925
   ClientTop       =   1575
   ClientWidth     =   1635
   ClipControls    =   0   'False
   Icon            =   "GraphLegend.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2475
   ScaleWidth      =   1635
   ShowInTaskbar   =   0   'False
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   6
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   13
      Top             =   1800
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
      TabIndex        =   12
      Top             =   1440
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
      TabIndex        =   10
      Top             =   2160
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
      TabIndex        =   6
      Top             =   1080
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
      Top             =   720
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
      TabIndex        =   2
      Top             =   360
      Width           =   255
   End
   Begin VB.CommandButton Command1 
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      Height          =   255
      Index           =   0
      Left            =   0
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   0
      Top             =   0
      Width           =   255
   End
   Begin VB.Label Label2 
      Caption         =   "Bandwith"
      Height          =   255
      Index           =   6
      Left            =   360
      TabIndex        =   11
      Top             =   2160
      Width           =   1695
   End
   Begin VB.Label Label2 
      Caption         =   "Number of clients"
      Height          =   255
      Index           =   5
      Left            =   360
      TabIndex        =   9
      Top             =   1800
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Packets/Frames"
      Height          =   255
      Index           =   4
      Left            =   360
      TabIndex        =   8
      Top             =   1440
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Frames"
      Height          =   255
      Index           =   3
      Left            =   360
      TabIndex        =   7
      Top             =   1080
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Packets"
      Height          =   255
      Index           =   2
      Left            =   360
      TabIndex        =   5
      Top             =   720
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Response time"
      Height          =   255
      Index           =   1
      Left            =   360
      TabIndex        =   3
      Top             =   360
      Width           =   1455
   End
   Begin VB.Label Label2 
      Caption         =   "Cpu usage"
      Height          =   255
      Index           =   0
      Left            =   360
      TabIndex        =   1
      Top             =   0
      Width           =   1455
   End
End
Attribute VB_Name = "GraphLegend"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
    GFS "Legend", Label2(0)
    GFS "Legend", Label2(1)
    GFS "Legend", Label2(2)
    GFS "Legend", Label2(3)
    GFS "Legend", Label2(4)
    GFS "Legend", Label2(5)
    GFS "Legend", Label2(6)
    Command1(0).BackColor = RGB(250, 50, 0)
    Command1(1).BackColor = RGB(50, 150, 0)
    Command1(2).BackColor = RGB(150, 150, 150)
    Command1(3).BackColor = RGB(50, 0, 250)
    Command1(4).BackColor = RGB(250, 0, 250)
    Command1(5).BackColor = RGB(0, 250, 250)
    Command1(6).BackColor = RGB(100, 100, 250)
End Sub
