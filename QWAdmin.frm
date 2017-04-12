VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{5E9E78A0-531B-11CF-91F6-C2863C385E30}#1.0#0"; "MSFLXGRD.OCX"
Object = "{CBB104A8-0C3C-11D1-BC39-004095912184}#2.0#0"; "ZTRAY.OCX"
Begin VB.Form Main 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Dr. Drain's QuakeWorld Server Admin version "
   ClientHeight    =   2505
   ClientLeft      =   1755
   ClientTop       =   2040
   ClientWidth     =   9975
   Icon            =   "QWAdmin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2505
   ScaleWidth      =   9975
   Visible         =   0   'False
   Begin VB.CommandButton UserInfo 
      Caption         =   "User Info..."
      Height          =   255
      Left            =   8400
      TabIndex        =   23
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Refreshit 
      Caption         =   "Refresh"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   255
      Left            =   0
      TabIndex        =   22
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Sendmsg 
      Caption         =   "Server chat"
      Height          =   255
      Left            =   5040
      TabIndex        =   21
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Console 
      Caption         =   "RCONsole"
      Height          =   255
      Left            =   6720
      TabIndex        =   20
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Kick 
      Caption         =   "Kick user"
      Height          =   255
      Left            =   1680
      TabIndex        =   19
      Top             =   2520
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "CheatCheck"
      Height          =   255
      Left            =   3360
      TabIndex        =   18
      Top             =   2520
      Width           =   1455
   End
   Begin VB.PictureBox graph 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      Height          =   885
      Left            =   0
      ScaleHeight     =   825
      ScaleWidth      =   9915
      TabIndex        =   12
      Top             =   6360
      Width           =   9975
      Begin VB.Line Line8 
         X1              =   8280
         X2              =   8280
         Y1              =   360
         Y2              =   480
      End
   End
   Begin MSFlexGridLib.MSFlexGrid playerlist 
      Height          =   3375
      Left            =   120
      TabIndex        =   17
      ToolTipText     =   "These are the players currently on the server"
      Top             =   2880
      Visible         =   0   'False
      Width           =   9735
      _ExtentX        =   17171
      _ExtentY        =   5953
      _Version        =   393216
      BackColor       =   12632256
      ForeColor       =   0
      BackColorFixed  =   12632256
      ForeColorFixed  =   0
      BackColorSel    =   8388608
      ForeColorSel    =   16777215
      BackColorBkg    =   12632256
      WordWrap        =   -1  'True
      AllowBigSelection=   0   'False
      GridLines       =   3
      SelectionMode   =   1
      AllowUserResizing=   1
      BorderStyle     =   0
   End
   Begin VB.Frame Server 
      BackColor       =   &H00C0C0C0&
      Height          =   2895
      Left            =   0
      TabIndex        =   0
      Top             =   -360
      Width           =   9975
      Begin VB.ComboBox serverip 
         CausesValidation=   0   'False
         Height          =   315
         ItemData        =   "QWAdmin.frx":164A
         Left            =   1560
         List            =   "QWAdmin.frx":164C
         TabIndex        =   46
         Text            =   "serverip"
         Top             =   600
         Width           =   1815
      End
      Begin VB.Timer Timer1 
         Interval        =   2000
         Left            =   7800
         Top             =   1920
      End
      Begin VB.TextBox qwversion 
         BackColor       =   &H00C0C0C0&
         Enabled         =   0   'False
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   6240
         TabIndex        =   38
         Top             =   1080
         Width           =   735
      End
      Begin VB.TextBox restime 
         BackColor       =   &H00C0C0C0&
         Enabled         =   0   'False
         Height          =   285
         Left            =   6240
         TabIndex        =   37
         Top             =   1800
         Width           =   735
      End
      Begin VB.TextBox packets 
         BackColor       =   &H00C0C0C0&
         Enabled         =   0   'False
         Height          =   285
         Left            =   6240
         TabIndex        =   36
         Top             =   2160
         Width           =   735
      End
      Begin VB.ComboBox clientgamedir 
         BackColor       =   &H00C0C0C0&
         ForeColor       =   &H00000000&
         Height          =   315
         ItemData        =   "QWAdmin.frx":164E
         Left            =   960
         List            =   "QWAdmin.frx":165E
         Sorted          =   -1  'True
         TabIndex        =   34
         ToolTipText     =   $"QWAdmin.frx":167D
         Top             =   1440
         Width           =   1575
      End
      Begin VB.ComboBox gamedir 
         BackColor       =   &H00C0C0C0&
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   960
         Sorted          =   -1  'True
         TabIndex        =   29
         ToolTipText     =   "This is the server's directory that contains a qwprogs.dat wich will change the game rules."
         Top             =   1800
         Width           =   1575
      End
      Begin VB.ComboBox map 
         BackColor       =   &H00C0C0C0&
         ForeColor       =   &H00000000&
         Height          =   315
         Left            =   960
         Sorted          =   -1  'True
         TabIndex        =   28
         ToolTipText     =   "This is the map wich clients will play in"
         Top             =   2160
         Width           =   1575
      End
      Begin myZTray.ZTray TrayIcon 
         Left            =   7440
         Top             =   1560
         _ExtentX        =   953
         _ExtentY        =   953
         ImageList       =   "imagelist1"
         ImageNumber     =   2
      End
      Begin MSWinsockLib.Winsock TCPServer 
         Left            =   7080
         Top             =   1320
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
      End
      Begin VB.CheckBox qwsvplus 
         Caption         =   "QWSV+ is running"
         Enabled         =   0   'False
         Height          =   195
         Left            =   2640
         TabIndex        =   27
         ToolTipText     =   "QWSV+ is a server-side update to QWSV that enables QWAdmin to use Server chat, and other stuff that a normal QWSV can't"
         Top             =   1440
         Width           =   2175
      End
      Begin MSWinsockLib.Winsock WinsockPublic 
         Left            =   7800
         Top             =   1320
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
         Protocol        =   1
      End
      Begin VB.CommandButton Disconnect 
         Caption         =   "Disconnect"
         Height          =   315
         Left            =   8520
         TabIndex        =   25
         Top             =   1680
         Width           =   1335
      End
      Begin VB.CheckBox enableGraph 
         Caption         =   "Graph is active"
         Height          =   195
         Left            =   2640
         TabIndex        =   24
         ToolTipText     =   "This enables / disables the graph at the bottom of this window"
         Top             =   1920
         Value           =   1  'Checked
         Width           =   2055
      End
      Begin MSWinsockLib.Winsock Winsock1 
         Index           =   0
         Left            =   7560
         Top             =   1200
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
         Protocol        =   1
      End
      Begin VB.Timer Timer2 
         Enabled         =   0   'False
         Interval        =   7000
         Left            =   7320
         Top             =   1920
      End
      Begin MSWinsockLib.Winsock Winsock2 
         Left            =   7080
         Top             =   1560
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   393216
         Protocol        =   1
      End
      Begin VB.CommandButton tfset 
         Caption         =   "Mod settings..."
         Enabled         =   0   'False
         Height          =   315
         Left            =   8520
         TabIndex        =   11
         Top             =   1320
         Width           =   1335
      End
      Begin VB.CommandButton settings 
         Caption         =   "Server setup..."
         Enabled         =   0   'False
         Height          =   315
         Left            =   8520
         TabIndex        =   7
         Top             =   960
         Width           =   1335
      End
      Begin VB.CheckBox Develop 
         Caption         =   "Notify cheats on server"
         Height          =   255
         Left            =   2640
         TabIndex        =   16
         ToolTipText     =   "If you enable this, players in the server will know who's has proxy's and non-standard model files"
         Top             =   1680
         Value           =   1  'Checked
         Width           =   2175
      End
      Begin VB.Timer Timer3 
         Interval        =   7000
         Left            =   7080
         Top             =   1920
      End
      Begin VB.CommandButton About 
         Caption         =   "About..."
         Height          =   315
         Left            =   8520
         Picture         =   "QWAdmin.frx":1737
         TabIndex        =   13
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox hostname 
         Alignment       =   2  'Center
         BackColor       =   &H00C0C0C0&
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   285
         Left            =   960
         TabIndex        =   10
         Top             =   1080
         Width           =   3975
      End
      Begin VB.CommandButton showmore 
         Caption         =   "More >>>"
         Enabled         =   0   'False
         Height          =   315
         Left            =   8520
         TabIndex        =   8
         Top             =   2280
         Width           =   1335
      End
      Begin VB.TextBox rcon 
         BackColor       =   &H00FFFFFF&
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   5520
         PasswordChar    =   "*"
         TabIndex        =   2
         Top             =   600
         Width           =   1215
      End
      Begin VB.CommandButton Connect 
         Caption         =   "Connect..."
         Default         =   -1  'True
         Height          =   315
         Left            =   6960
         TabIndex        =   3
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox serverport 
         BackColor       =   &H00FFFFFF&
         Height          =   285
         Left            =   3960
         TabIndex        =   1
         Text            =   "27500"
         Top             =   600
         Width           =   735
      End
      Begin ComctlLib.Slider interval 
         Height          =   255
         Left            =   2880
         TabIndex        =   30
         ToolTipText     =   "Selects the ammount of time to wait for server updates. Minimum= 3 seconds, maximum=disabled"
         Top             =   2160
         Width           =   1575
         _ExtentX        =   2778
         _ExtentY        =   450
         _Version        =   327682
         LargeChange     =   1000
         SmallChange     =   500
         Min             =   3000
         Max             =   30000
         SelStart        =   7000
         TickFrequency   =   5000
         Value           =   7000
      End
      Begin VB.Line Line9 
         BorderColor     =   &H00404040&
         Index           =   1
         X1              =   8390
         X2              =   8390
         Y1              =   2480
         Y2              =   1010
      End
      Begin VB.Line Line10 
         X1              =   5040
         X2              =   8400
         Y1              =   2510
         Y2              =   2510
      End
      Begin VB.Line Line9 
         BorderColor     =   &H00FFFFFF&
         Index           =   3
         X1              =   5050
         X2              =   5050
         Y1              =   2480
         Y2              =   1010
      End
      Begin VB.Line Line9 
         BorderColor     =   &H00FFFFFF&
         Index           =   0
         X1              =   8400
         X2              =   8400
         Y1              =   2520
         Y2              =   1000
      End
      Begin VB.Line Line7 
         Index           =   0
         X1              =   5040
         X2              =   8400
         Y1              =   1000
         Y2              =   1000
      End
      Begin VB.Line Line6 
         X1              =   5040
         X2              =   5040
         Y1              =   1010
         Y2              =   2520
      End
      Begin VB.Line Line5 
         BorderColor     =   &H00FFFFFF&
         Index           =   0
         X1              =   5040
         X2              =   8400
         Y1              =   2520
         Y2              =   2520
      End
      Begin VB.Label state 
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   1  'Fixed Single
         Enabled         =   0   'False
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   255
         Left            =   6240
         TabIndex        =   45
         Top             =   1440
         Width           =   495
      End
      Begin VB.Label Label7 
         Alignment       =   1  'Right Justify
         Caption         =   "Server version"
         Height          =   255
         Left            =   5040
         TabIndex        =   44
         Top             =   1080
         Width           =   1095
      End
      Begin VB.Label Label9 
         Alignment       =   1  'Right Justify
         Caption         =   "Server CPU %"
         Height          =   255
         Left            =   5040
         TabIndex        =   43
         Top             =   1440
         Width           =   1095
      End
      Begin VB.Label inf 
         Alignment       =   2  'Center
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1215
         Left            =   7080
         TabIndex        =   42
         Top             =   1200
         Width           =   1215
      End
      Begin VB.Label Label10 
         Alignment       =   1  'Right Justify
         Caption         =   "Response time"
         Height          =   255
         Left            =   5040
         TabIndex        =   41
         Top             =   1800
         Width           =   1095
      End
      Begin VB.Label Label11 
         Alignment       =   1  'Right Justify
         Caption         =   "Packets/frame"
         Height          =   255
         Left            =   5040
         TabIndex        =   40
         Top             =   2160
         Width           =   1095
      End
      Begin VB.Label state2 
         BackColor       =   &H00C0C0C0&
         BorderStyle     =   1  'Fixed Single
         Enabled         =   0   'False
         Height          =   255
         Left            =   6720
         TabIndex        =   39
         Top             =   1440
         Width           =   255
      End
      Begin VB.Label Label1 
         Caption         =   "Client gdir:"
         Height          =   255
         Left            =   120
         TabIndex        =   35
         Top             =   1440
         Width           =   735
      End
      Begin VB.Label Label14 
         BackStyle       =   0  'Transparent
         Caption         =   "3s."
         Height          =   255
         Left            =   2640
         TabIndex        =   33
         Top             =   2160
         Width           =   255
      End
      Begin VB.Label Label15 
         BackStyle       =   0  'Transparent
         Caption         =   "Off"
         Height          =   255
         Left            =   4560
         TabIndex        =   32
         Top             =   2160
         Width           =   375
      End
      Begin VB.Label timerdesc 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "7.0 s"
         Height          =   255
         Left            =   3120
         TabIndex        =   31
         Top             =   2400
         Width           =   1095
      End
      Begin ComctlLib.ImageList ImageList1 
         Left            =   7920
         Top             =   1560
         _ExtentX        =   1005
         _ExtentY        =   1005
         BackColor       =   -2147483643
         ImageWidth      =   32
         ImageHeight     =   32
         MaskColor       =   12632256
         _Version        =   327682
         BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
            NumListImages   =   35
            BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":8619
               Key             =   "SaveConfig"
            EndProperty
            BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":8933
               Key             =   ""
            EndProperty
            BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":8C4D
               Key             =   ""
            EndProperty
            BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":8F67
               Key             =   "QWADMIN"
            EndProperty
            BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":9281
               Key             =   ""
            EndProperty
            BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":959B
               Key             =   "Options"
            EndProperty
            BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":98B5
               Key             =   "CheatCheck"
            EndProperty
            BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":9BCF
               Key             =   "Administrator"
            EndProperty
            BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":9EE9
               Key             =   "serverbrowser"
            EndProperty
            BeginProperty ListImage10 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":A203
               Key             =   "ServerSettings"
            EndProperty
            BeginProperty ListImage11 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":A51D
               Key             =   "ModSettings"
            EndProperty
            BeginProperty ListImage12 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":A837
               Key             =   "Book"
            EndProperty
            BeginProperty ListImage13 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":AB51
               Key             =   "Check"
            EndProperty
            BeginProperty ListImage14 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":AE6B
               Key             =   "Nuclear"
            EndProperty
            BeginProperty ListImage15 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":B185
               Key             =   "Phone"
            EndProperty
            BeginProperty ListImage16 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":B49F
               Key             =   "Refresh1"
            EndProperty
            BeginProperty ListImage17 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":B7B9
               Key             =   "Refresh2"
            EndProperty
            BeginProperty ListImage18 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":BAD3
               Key             =   "top1"
            EndProperty
            BeginProperty ListImage19 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":BDED
               Key             =   "top2"
            EndProperty
            BeginProperty ListImage20 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":C107
               Key             =   "top3"
            EndProperty
            BeginProperty ListImage21 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":C421
               Key             =   "top4"
            EndProperty
            BeginProperty ListImage22 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":C73B
               Key             =   "top5"
            EndProperty
            BeginProperty ListImage23 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":CA55
               Key             =   "top6"
            EndProperty
            BeginProperty ListImage24 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":CD6F
               Key             =   "top7"
            EndProperty
            BeginProperty ListImage25 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":D089
               Key             =   "top8"
            EndProperty
            BeginProperty ListImage26 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":D3A3
               Key             =   "top9"
            EndProperty
            BeginProperty ListImage27 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":D6BD
               Key             =   "top10"
            EndProperty
            BeginProperty ListImage28 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":D9D7
               Key             =   "top11"
            EndProperty
            BeginProperty ListImage29 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":DCF1
               Key             =   "top12"
            EndProperty
            BeginProperty ListImage30 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":E00B
               Key             =   "top13"
            EndProperty
            BeginProperty ListImage31 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":E325
               Key             =   "top14"
            EndProperty
            BeginProperty ListImage32 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":E63F
               Key             =   "top15"
            EndProperty
            BeginProperty ListImage33 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":E959
               Key             =   "Graph"
            EndProperty
            BeginProperty ListImage34 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":EC73
               Key             =   "STOP"
            EndProperty
            BeginProperty ListImage35 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
               Picture         =   "QWAdmin.frx":EF8D
               Key             =   "ALERT"
            EndProperty
         EndProperty
      End
      Begin VB.Label status 
         Alignment       =   2  'Center
         BackColor       =   &H00000000&
         BorderStyle     =   1  'Fixed Single
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00FFFFFF&
         Height          =   255
         Left            =   0
         TabIndex        =   26
         Top             =   2640
         Width           =   9975
      End
      Begin VB.Line Line2 
         X1              =   120
         X2              =   8400
         Y1              =   480
         Y2              =   480
      End
      Begin VB.Label Label13 
         Alignment       =   1  'Right Justify
         Caption         =   "Gamedir:"
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   1800
         Width           =   735
      End
      Begin VB.Label Label8 
         Alignment       =   1  'Right Justify
         Caption         =   "Map:"
         Height          =   255
         Left            =   360
         TabIndex        =   14
         Top             =   2160
         Width           =   495
      End
      Begin VB.Line Line3 
         BorderColor     =   &H80000005&
         X1              =   8400
         X2              =   8400
         Y1              =   480
         Y2              =   960
      End
      Begin VB.Line Line4 
         BorderColor     =   &H80000005&
         X1              =   120
         X2              =   8400
         Y1              =   960
         Y2              =   960
      End
      Begin VB.Line Line1 
         X1              =   120
         X2              =   120
         Y1              =   960
         Y2              =   480
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         Caption         =   "Hostname"
         Height          =   255
         Left            =   120
         TabIndex        =   9
         Top             =   1080
         Width           =   735
      End
      Begin VB.Label Label4 
         Caption         =   "RCON:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   4920
         TabIndex        =   6
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label3 
         Caption         =   "Port:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   3480
         TabIndex        =   5
         Top             =   600
         Width           =   495
      End
      Begin VB.Label Label2 
         Caption         =   "QW Server Ip:"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   600
         Width           =   1335
      End
      Begin VB.Line Line11 
         BorderColor     =   &H00E0E0E0&
         X1              =   5040
         X2              =   8400
         Y1              =   1020
         Y2              =   1020
      End
   End
   Begin VB.Line Line9 
      BorderColor     =   &H00404040&
      Index           =   2
      X1              =   0
      X2              =   0
      Y1              =   1520
      Y2              =   0
   End
   Begin VB.Menu mnuServer 
      Caption         =   "&QWAdmin"
      Begin VB.Menu mnuConnect 
         Caption         =   "&Connect..."
         Shortcut        =   ^C
      End
      Begin VB.Menu mnuCentral 
         Caption         =   "Connect to Server Centra&l..."
         Shortcut        =   ^L
         Visible         =   0   'False
      End
      Begin VB.Menu mnuAddList 
         Caption         =   "Add this server to list..."
      End
      Begin VB.Menu mnuSettings 
         Caption         =   "Server &settings..."
         Shortcut        =   ^S
      End
      Begin VB.Menu mnuBlank2 
         Caption         =   "-"
      End
      Begin VB.Menu mnuQWAOptions 
         Caption         =   "QWAdmin options..."
      End
      Begin VB.Menu mnuBlank2A 
         Caption         =   "-"
      End
      Begin VB.Menu mnuServerBrowser 
         Caption         =   "Servers &Browser..."
         Shortcut        =   ^B
      End
      Begin VB.Menu mnuTFOptions 
         Caption         =   "&Mod Options..."
         Shortcut        =   ^O
      End
      Begin VB.Menu mnuBlank1 
         Caption         =   "-"
      End
      Begin VB.Menu mnuNotify 
         Caption         =   "&Notify cheats on server"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnublank8 
         Caption         =   "-"
      End
      Begin VB.Menu mnuShowGraph 
         Caption         =   "Show &graph"
         Checked         =   -1  'True
         Shortcut        =   ^G
      End
      Begin VB.Menu mnuLegend 
         Caption         =   "Graph &legend..."
      End
      Begin VB.Menu mnuGraphOptions 
         Caption         =   "Graph &options..."
      End
      Begin VB.Menu mnuTaskBar 
         Caption         =   "QWAdmin to &trayicon"
      End
      Begin VB.Menu mnublank10 
         Caption         =   "-"
      End
      Begin VB.Menu mnuShutDown 
         Caption         =   "Shutdown server"
      End
      Begin VB.Menu mnuDisconnect 
         Caption         =   "&Disconnect from server"
         Shortcut        =   ^D
      End
      Begin VB.Menu mnuQuit 
         Caption         =   "E&xit"
         Shortcut        =   ^X
      End
   End
   Begin VB.Menu mnuConfig 
      Caption         =   "&Config"
      Begin VB.Menu mnuImport 
         Caption         =   "&Import..."
         Shortcut        =   ^I
      End
      Begin VB.Menu mnuCustomImport 
         Caption         =   "&Custom import..."
      End
      Begin VB.Menu mnuExport 
         Caption         =   "&Export..."
         Shortcut        =   ^E
      End
      Begin VB.Menu mnublank3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuMapRotation 
         Caption         =   "&Map rotation"
      End
      Begin VB.Menu mnuWizard 
         Caption         =   "TF Clan match &wizard..."
         Shortcut        =   ^W
      End
   End
   Begin VB.Menu mnuClients 
      Caption         =   "&Players"
      Begin VB.Menu mnuShowPlayerlist 
         Caption         =   "&Show playerlist..."
         Checked         =   -1  'True
      End
      Begin VB.Menu mnuminping 
         Caption         =   "Minimum ping..."
         Begin VB.Menu mnuping 
            Caption         =   "Minimum ping active"
         End
         Begin VB.Menu mnupingset 
            Caption         =   "Set minimum ping in this server..."
         End
      End
      Begin VB.Menu mnuBlank11 
         Caption         =   "-"
      End
      Begin VB.Menu mnucheatcheck 
         Caption         =   "&Full cheat check..."
         Shortcut        =   ^K
      End
      Begin VB.Menu mnuModelscheck 
         Caption         =   "&Models cheat-check"
      End
      Begin VB.Menu mnuProxyCheck 
         Caption         =   "&Proxy cheat-check"
      End
      Begin VB.Menu mnuCheatCheckonConnect 
         Caption         =   "Cheat-check players on &connect"
         Checked         =   -1  'True
      End
      Begin VB.Menu mnublank6 
         Caption         =   "-"
      End
      Begin VB.Menu mnuPlayerinfo 
         Caption         =   "Player's &information..."
      End
      Begin VB.Menu mnukick 
         Caption         =   "&Kick player..."
      End
      Begin VB.Menu mnuKickandBanLIST 
         Caption         =   "Kick and &ban player..."
         Begin VB.Menu mnubanlevel1 
            Caption         =   "Kick and ban level 1 (x.x.x.x)"
         End
         Begin VB.Menu mnubanlevel2 
            Caption         =   "Kick and ban level 2 (x.x.x.*)"
         End
         Begin VB.Menu mnubanlevel3 
            Caption         =   "Kick and ban level 3 (x.x.*.*)"
         End
         Begin VB.Menu mnubanlevel4 
            Caption         =   "Kick and ban level 4 (x.*.*.*)"
         End
      End
      Begin VB.Menu mnyblank7 
         Caption         =   "-"
      End
      Begin VB.Menu mnuRefreshlist 
         Caption         =   "&Refresh player list"
      End
   End
   Begin VB.Menu mnuOther 
      Caption         =   "&Other"
      Begin VB.Menu mnuRConsole 
         Caption         =   "&RConsole..."
         Shortcut        =   ^R
      End
      Begin VB.Menu mnuMessages 
         Caption         =   "Server &chat"
         Shortcut        =   ^T
      End
      Begin VB.Menu mnuIPBan 
         Caption         =   "IP &Ban menu..."
         Shortcut        =   ^J
      End
   End
   Begin VB.Menu PlayerPopup 
      Caption         =   "ClientsPopup1"
      Begin VB.Menu PopRefresh 
         Caption         =   "&Refresh list"
      End
      Begin VB.Menu PopConsole 
         Caption         =   "&RCONsole..."
      End
      Begin VB.Menu PopBlank4 
         Caption         =   "-"
      End
      Begin VB.Menu popConfig 
         Caption         =   "Server &configure"
         Begin VB.Menu PopServerSettings 
            Caption         =   "Configure server &settings..."
         End
         Begin VB.Menu PopTFSettings 
            Caption         =   "&MOD settings..."
         End
         Begin VB.Menu PopBlank1 
            Caption         =   "-"
         End
         Begin VB.Menu PopImport 
            Caption         =   "&Import a config file..."
         End
         Begin VB.Menu PopExport 
            Caption         =   "&Export current configuration..."
         End
      End
      Begin VB.Menu PopBlank2 
         Caption         =   "-"
      End
      Begin VB.Menu popUserInfo 
         Caption         =   "User &information..."
      End
      Begin VB.Menu mnuCheat 
         Caption         =   "Cheat commands"
         WindowList      =   -1  'True
         Begin VB.Menu mnuGod 
            Caption         =   "Enable / disable god mode"
         End
         Begin VB.Menu mnuFly 
            Caption         =   "Enable / disable fly mode"
         End
         Begin VB.Menu mnuGive 
            Caption         =   "Give weapons to player"
         End
      End
      Begin VB.Menu popBlank3 
         Caption         =   "-"
      End
      Begin VB.Menu PopKick 
         Caption         =   "&Kick player"
      End
      Begin VB.Menu PopKickBanLIST 
         Caption         =   "Kick and &Ban player"
         Begin VB.Menu mnuban1 
            Caption         =   "Ban level 1 (x.x.x.x)"
         End
         Begin VB.Menu mnuban2 
            Caption         =   "Ban level 2 (x.x.x.*)"
         End
         Begin VB.Menu mnuban3 
            Caption         =   "Ban level 3 (x.x.*.*)"
         End
         Begin VB.Menu mnuban4 
            Caption         =   "Ban level 4 (x.*.*.*)"
         End
      End
   End
   Begin VB.Menu mnuTray 
      Caption         =   "Tray Menu"
      Begin VB.Menu trayOpen 
         Caption         =   "&Open QWAdmin..."
      End
      Begin VB.Menu TrayHide 
         Caption         =   "&Hide QWAdmin..."
      End
      Begin VB.Menu TrayBrowser 
         Caption         =   "Server &browser..."
      End
      Begin VB.Menu TrayEmpty1 
         Caption         =   "-"
      End
      Begin VB.Menu TrayConsole 
         Caption         =   "&RCONsole..."
      End
      Begin VB.Menu TraySettings 
         Caption         =   "Server &settings..."
      End
      Begin VB.Menu TrayTFSettings 
         Caption         =   "&MOD Settings..."
      End
      Begin VB.Menu TrayEmpty2 
         Caption         =   "-"
      End
      Begin VB.Menu trayExit 
         Caption         =   "E&xit QWAdmin"
      End
   End
   Begin VB.Menu mnublank5 
      Caption         =   "&Help"
      NegotiatePosition=   3  'Right
      Begin VB.Menu mnuAbout 
         Caption         =   "&About..."
      End
   End
End
Attribute VB_Name = "Main"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public ExpandedMode, DeveloperMode
Public Sub RefreshLocal()
a$ = Main.servRconAns$("localinfo")
k = InStr(a$, Chr$(10))
c$ = Mid$(a$, k + 1)
o = 0
Do
If Left$(c$, 1) = Chr$(0) Then Exit Do
k = InStr(c$, Chr$(10))
If k = 0 Then Exit Do
o = o + 1
serverlocalinfo(o) = Left$(c$, k - 1)
c$ = Mid$(c$, k + 1)
Loop
NumLocals = o

End Sub

Public Sub setinserver(a$, b$, k, onoroff As Boolean)
If Val(Main.localvalue(a$, b$)) <> k Then
    If onoroff = True Then
        If k = 1 Then c$ = "on" Else c$ = "off"
        Else
        c$ = Main.removespaces$(Str$(k))
        End If
    If b$ = "" Then KK$ = a$ Else KK$ = b$
    If Main.findinserver$(a$) > "" Then Main.servRconAns$ ("serverinfo " + a$ + " " + c$): Exit Sub
    If Main.findinserver$(b$) > "" Then Main.servRconAns$ ("serverinfo " + b$ + " " + c$): Exit Sub
    
    For o = 1 To NumLocals
    If Left$(serverlocalinfo$(o), Len(a$) + 1) = a$ + " " Then KK$ = a$: Exit For
    If Left$(serverlocalinfo$(o), Len(b$) + 1) = b$ + " " And b$ > "" Then KK$ = b$:  Exit For
    Next
    
        dummy$ = Main.servRconAns$("localinfo " + KK$ + " " + c$)
    
    End If
End Sub

Public Sub setinserver2(a$, b$, c$, d$)
If d$ <> c$ Then
    If b$ = "" Then KK$ = a$ Else KK$ = b$
    If Main.findinserver$(a$) > "" Then Main.servRconAns$ ("serverinfo " + a$ + " " + c$): Exit Sub
    If Main.findinserver$(b$) > "" Then Main.servRconAns$ ("serverinfo " + b$ + " " + c$): Exit Sub
    
    For o = 1 To NumLocals
    If Left$(serverlocalinfo$(o), Len(a$) + 1) = a$ + " " Then KK$ = a$: Exit For
    If Left$(serverlocalinfo$(o), Len(b$) + 1) = b$ + " " And b$ > "" Then KK$ = b$: Exit For
    Next
    dummy$ = Main.servRconAns$("localinfo " + KK$ + " " + c$)
    End If

End Sub

Private Static Sub UpdateGraph(v, v2, v3, v4, v5, v6, v7)
If DeveloperMode = False Then On Error GoTo errhand:

If v = -2 Then
    k = 0
    kj = 0
    Exit Sub
    End If
t = 99
ts = graph.Width / t
If kj = 0 Then
    Dim values(102, 7) As Single
    Dim max(7) As Single
    Dim avg As Double
    kj = 1
    Dim scalexx(7)
    Dim Colour(7) As ColorConstants
    Colour(1) = RGB(250, 50, 0)
    Colour(2) = RGB(50, 150, 0)
    Colour(3) = RGB(150, 150, 150)
    Colour(4) = RGB(50, 0, 250)
    Colour(5) = RGB(250, 0, 250)
    Colour(6) = RGB(0, 250, 250)
    Colour(7) = RGB(100, 100, 250)
    End If
If v <> -1 Then
    gh = graph.Height - 40
    scalexx(1) = (gh - 20) / 100
    
    k = k + 1
    If k = 101 Then
        For i = 0 To 100
        values(i, 1) = values(i + 1, 1)
        values(i, 2) = values(i + 1, 2)
        values(i, 3) = values(i + 1, 3)
        values(i, 4) = values(i + 1, 4)
        values(i, 5) = values(i + 1, 5)
        values(i, 6) = values(i + 1, 6)
        values(i, 7) = values(i + 1, 7)
        Next
        k = 100
        End If
    avg = ((avg * (k - 1)) + v) / k
    
    If v > 100 Then v = 100
    If v < 0 Then v = 0
    values(k, 1) = v
    values(k, 2) = v2
    values(k, 3) = v3
    values(k, 4) = v4
    values(k, 5) = v5
    values(k, 6) = v6
    values(k, 7) = v7
    max(1) = 100
    If v2 > max(2) Then max(2) = v2: scalexx(2) = (gh - 20) / max(2)
    If v3 > max(3) Then max(3) = v3: scalexx(3) = (gh - 20) / max(3)
    If v4 > max(4) Then max(4) = v4: scalexx(4) = (gh - 20) / max(4)
    If v5 > max(5) Then max(5) = v5: scalexx(5) = (gh - 20) / max(5)
    If v6 > max(6) Then max(6) = v6: scalexx(6) = (gh - 20) / max(6)
    If v7 > max(7) Then max(7) = v7: scalexx(7) = (gh - 20) / max(7)
    End If
If enableGraph.Value = 0 Then Exit Sub

graph.Cls
yy = graph.Height - 20 - (avg * scalexx(1))
Main.graph.Line (0, yy)-(graph.Width, yy), QBColor(9)

If v = -1 Then Exit Sub
For p = 1 To 7

If (max(p) > 0 Or p = 1) And GraphLine(p) = True Then
    Main.graph.PSet (0, graph.Height - 40 - values(1, p) * scalexx(p))
    
    For o = 1 To k - 1
    pj = o * ts
    yy = gh - (values(o + 1, p) * scalexx(p))
    Main.graph.Line -(pj + 1, yy), Colour(p)
    Next
    End If
Next
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
End Sub

Public Sub SetUser(NC, a$, a2$)
If DeveloperMode = False Then On Error GoTo errhand:

player(NC).lastsetuser = Timer
na$ = Left$(a$, 20)
player(NC).RealName = na$
a$ = Mid$(a$, 20)
player(NC).name = Quake2ASC$(player(NC).RealName)
a$ = removespaces$(a$)
b = InStr(a$, " ")
player(NC).uid = Val(Left$(a$, b))
a$ = Mid$(a$, b + 1)
player(NC).frags = Val(a$)
a2$ = removespaces$(a2$)
k = InStr(a2$, " ")
If k > 0 Then ip$ = Left$(a2$, k - 1): a2$ = Mid$(a2$, k + 1)
a2$ = removespaces$(a2$)
player(NC).ip = ip$

k = InStr(a2$, " ")
krate = Val(Left$(a2$, k))
CheckRate NC, Left$(a2$, k)
a2$ = Mid$(a2$, k + 1)

If krate > Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000")) Then krate = Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000"))
If krate > 0 Then player(NC).rate = krate
a2$ = removespaces$(a2$)

k = InStr(a2$, " ")
If k > 0 Then player(NC).ping = Val(Left$(a2$, k)): a2$ = Mid$(a2$, k + 1)
a2$ = removespaces$(a2$)

k = InStr(a2$, " ")
If k > 0 Then player(NC).drop = Val(Left$(a2$, k)): a2$ = Mid$(a2$, k + 1)
a2$ = removespaces$(a2$)

If player(NC).uid <> 0 And player(NC).pmodel < 2 Then
    KK$ = servRconAns$("user " + Mid$(Str$(player(NC).uid), 2))
    
    kb = 0
    Do
    k = InStr(KK$, Chr$(10))
    If k = 0 Then Exit Do
    t$ = Left$(KK$, k - 1)
    KK$ = Mid$(KK$, k + 1)
    kb = kb + 1
    player(NC).setinfo(kb) = t$
    Loop
    tmp = Val(FindInPLayer$("rate", NC))
    
    If tmp < Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000")) Then player(NC).rate = tmp
    
    'tmp = Val(FindInPLayer$("*spectator", NC))
    'If tmp <> 0 Then player(NC).spectator = True Else player(NC).spectator = False
        
    player(NC).emodel = Val(FindInPLayer$("emodel", NC))
    player(NC).pmodel = Val(FindInPLayer$("pmodel", NC))
    CheckModels NC
    
    player(NC).topcolor = Val(FindInPLayer$("topcolor", NC))
    player(NC).bottomcolor = Val(FindInPLayer$("bottomcolor", NC))
    
    player(NC).team = removespaces$(FindInPLayer$("team", NC))
    player(NC).skin = removespaces$(FindInPLayer$("skin", NC))
    player(NC).tfclass = ClassFromSkin(player(NC).skin)
    End If
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
End Sub

Public Function removespaces$(a$)
For o = 1 To Len(a$)
If Mid$(a$, o, 1) <> " " Then Exit For
Next
removespaces$ = Mid$(a$, o)
End Function
Public Function mustbe$(l, p$)
If Len(p$) > l Then
    mustbe$ = Left$(p$, l)
    Else
    mustbe$ = p$ + String$(l - Len(p$), " ")
    End If
End Function

Public Function FindInPLayer$(a$, playernum)
For o = 1 To 40
t$ = Left$(LCase$(player(playernum).setinfo(o)), Len(a$))
If LCase$(a$) = t$ Then
    FindInPLayer$ = Mid$(player(playernum).setinfo(o), Len(a$) + 1)
    Exit For
    End If
Next
End Function

Private Sub About_Click()
Load AboutWindow
AboutWindow.Visible = True
End Sub

Private Static Sub Command1_Click()
PlayerModelCheck -1
PlayerProxyCheck
End Sub

Public Sub console_Click()
On Error Resume Next
If qwconsole.Visible Then qwconsole.SetFocus: Exit Sub
Load qwconsole
qwconsole.serverip.text = serverip.text
qwconsole.serverport.text = serverport.text
qwconsole.serverrcon.text = rcon.text
qwconsole.ConnectToServer
qwconsole.Visible = True
qwconsole.Enabled = True
qwconsole.SetFocus
End Sub

Public Sub Connect_Click()
Quake2 = False
If serverip.text = "" Then
    a = MsgBox("Server ip is missing...", vbOKOnly, "Missing info")
    Exit Sub
    End If
If rcon.text = "" Then
    If MsgBox("Server rcon is missing, continue with rcon password as nul ?", vbYesNo, "No rcon password") = vbNo Then Exit Sub
    End If
    
logfile "Attempting to connect to " & serverip & ":" & rcon
If ServerOnline Then
    a = MsgBox("You are currently online with the qw server." + Chr$(13) + "Do you wish to disconnect ? (Say yes only if the server has crashed)", vbYesNo, "Disconnect")
    If a = vbYes Then
        ServerOnline = False
        Disconnected
        Else
        Exit Sub
        End If
    End If
ConnectToServer
If ServerOnline = False Then
    WinsockPublic.Close
    Disconnected
    Exit Sub
    End If
NumInfo = 0
UpdateInfo
If NumInfo = 0 Then
    MsgBox "No reply from server"
    Disconnected
    Exit Sub
    End If

If ServerOnline = False Then Exit Sub
If NumInfo > 0 Then
    If Quake2 = True Then
        logfile "Connected to a Quake 2 server..."
        dummy2 = MsgBox("Sorry but this version of QWAdmin doesn't allow you to configure Quake II servers yet... Check for updates in http://planetquake.com/qwadmin/." + Chr$(13) + "The only window that you can use with Quake2 servers right now is RConsole. Do you wish to load it ?", vbYesNo)
        If dummy2 = vbYes Then
            Dim KKk As New qwconsole
            KKk.serverip = serverip.text
            KKk.serverport = serverport.text
            KKk.serverrcon = rcon.text
            KKk.ConnectToServer
            KKk.Visible = True
            KKk.SetFocus
            End If
        Disconnected
        Exit Sub
        End If
    If PRO = True Then
        Else
        If Quake2 = False Then
            dummy$ = servRconAns$("say " + Chr$(34) + "- —◊¡dmin êLiTEëç  v" + removespaces$(Str$(App.Major)) + "." + removespaces$(Str$(App.Minor)) + "." + removespaces$(Str$(App.Revision)) + " * <-" + Chr$(34))
            dummy$ = servRconAns$("say " + Chr$(34) + "- (c)1998 ƒrÖ ƒr·Œ http://planetquake.com/qwadmin/ -" + Chr$(34))
            Else
            dummy$ = servRconAns$("say " + Chr$(34) + "- QWAdmin [LiTE] v" + removespaces$(Str$(App.Major)) + "." + removespaces$(Str$(App.Minor)) + "." + removespaces$(Str$(App.Revision)) + " * <-" + Chr$(34))
            dummy$ = servRconAns$("say " + Chr$(34) + "- (c)1998 Dr. Drain http://planetquake.com/qwadmin/ -" + Chr$(34))
            End If
        End If
    If ServerOnline = False Then
        Disconnected
        Exit Sub
        End If
    UpdateStatus
    If ServerOnline = False Then
        Disconnected
        Exit Sub
        End If
    UpdatePlayers
    UpdateValues
    connected
    CheckQWSVPlus
    Timer2.Enabled = True
    enableGraph.Value = 1
    If serverip.ListCount >= 19 Then Exit Sub
    
    tmp$ = serverip.text & ":" & serverport
    For o = 0 To serverip.ListCount
    If serverip.List(o) = tmp$ Then
        Exit Sub
        End If
    Next
    
    serverip.AddItem tmp$
    rcons$(serverip.ListCount - 1) = rcon.text
    
    Else
    status.Caption = "No reply from server..."
    logfile "No reply from server"
    ServerOnline = False
    Disconnected
    End If

End Sub


Private Sub Develop_Click()
mnuNotify.Checked = Develop.Value
End Sub

Public Sub Disconnect_Click()
dummy = MsgBox("Are you sure you wish to disconnect from server ?", vbYesNo, "Confirm disconnection")
If dummy = vbYes Then
    Disconnected
    ServerOnline = False
    logfile "User disconnected from server"
    QWSVPass$ = ""
    End If
End Sub

Private Sub enableGraph_Click()
If enableGraph.Value = 1 Then
    mnuShowGraph.Checked = True
    graph.Enabled = True
    graph.BackColor = RGB(0, 0, 0)
    graph.Cls
    graph.Visible = True
    Main.Height = 7920
    UpdateGraph -1, 0, 0, 0, 0, 0, 0
    Else
    mnuShowGraph.Checked = False
    Main.Height = 7050
    graph.BackColor = RGB(192, 192, 192)
    graph.Cls
    graph.Visible = False
    graph.Enabled = False
    End If
End Sub

Private Sub Form_GotFocus()
UpdateGraph -1, 0, 0, 0, 0, 0, 0
End Sub

Public Sub Form_Load()
PRO = True
QWAInitialized = False
MainRegistryPath$ = "HKEY_LOCAL_MACHINE\SOFTWARE\QWAdmin\"
' ////////////////////////////////////////
DeveloperMode = False
' ////////////////////////////////////////
On Error Resume Next
For o = 1 To 8
Load Winsock1(o)
Next

PlayerPopup.Visible = False
mnuTray.Visible = False
serverbrowser.Visible = False

Dim InstalledComponents As Variant

' Main.Enabled = True
' Main.Visible = False

InstalledComponents = GetAllSettings(AppName, "Settings")

' MkDir CurDir + "\Configs"

SaveSetting AppName, "Settings", "Directory", CurDir
SaveSetting AppName, "Settings", "ConfigDirectory", CurDir + "\Configs"
    
If IsEmpty(InstalledComponents) Then
    SaveSetting AppName, "Settings", "Installed", "1"
    SaveSetting AppName, "REGISTRATION", "key", ""
    SaveSetting AppName, "REGISTRATION", "owner", ""
    SaveSetting AppName, "REGISTRATION", "code", ""
    End If

If DeveloperMode = False Then On Error GoTo RNE
    
RegistredTO$ = GetSetting("QWAdmin", "REGISTRATION", "owner")
regcode = Val(RegisterCODE$)
Do
If RegistredTO$ = "" Then
    RegistredTO$ = InputBox("Enter your name or login:")
    SaveSetting "QWAdmin", "REGISTRATION", "owner", RegistredTO$
    Else
    Exit Do
    End If
Loop
PRO = True
TrayIcon.ImageList = "ImageList1"
TrayIcon.ImageNumber = 4
TrayIcon.ShowInTray = True

LoadQWASettings

GFS "Map text", map
GFS "Gamedir text", gamedir
GFS "Client gamedir", clientgamedir
GFS "Hostname text", hostname
GFS "Server version", qwversion
GFS "Server Cpu", state
GFS "Response time", restime
GFS "Packets / frames", packets
GFS "More >>> main button", showmore
GFS "Mod configuration button", tfset
GFS "Player list font", playerlist
GFS "Buttons above player list", refreshit
GFS "Buttons above player list", Kick
GFS "Buttons above player list", Command1
GFS "Buttons above player list", Sendmsg
GFS "Buttons above player list", Console
GFS "Buttons above player list", UserInfo
GFS "Connect button", Connect

GFS "All other buttons in main window", About
GFS "All other buttons in main window", settings
GFS "All other buttons in main window", Disconnect

Main.Visible = False
Disconnected
Main.Visible = False

ServerOnline = False
    
        If PRO Then
            With frmSplash
            .Label4.Caption = "PROFESSIONAL VERSION"
            ' .Label4.ForeColor = RGB(35, 128, 255)
            .Label4.refresh
            .regto.Caption = "Registred to: " + RegistredTO$
            If TrialKey Then
                .trial.Caption = "This trial key expires on " & ExpireDate
                .trial.Visible = True
                End If
            .regto.refresh
            ' .Timer1.interval = 1000
            End With
            Main.Visible = True
            Else
            Main.Visible = False
            End If
        frmSplash.Visible = True
        frmSplash.refresh
        frmSplash.Timer1.Enabled = True
    
    inf.Caption = "Players:" + Chr$(13) + "Spectators:" + Chr$(13)
    serverip.text = ""
    rcon.text = ""

progversion$ = App.Major & "." & App.Minor & " revision " & App.Revision
Main.Caption = "Dr. Drain's QuakeWorld ServerAdmin v" + progversion$

Exit Sub
RNE:
Select Case ShowError
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
End Sub

Private Sub Form_Resize()
If Main.WindowState = 1 Then
'    Main.Visible = False
    If ServerOnline = True And Val(GetSetting("QWAdmin", "Settings", "qwaidle", 1)) = 1 Then
        interval.Value = interval.max
        End If
    End If

If Main.WindowState = 0 Then Main.Visible = True
End Sub

Private Sub Form_Terminate()
Quit

End Sub

Public Sub Form_Unload(Cancel As Integer)
Quit
End Sub

Public Sub gamedir_Change()
    nmaps = Val(GetSetting("QWAdmin", "MODS\" + gamedir.text, "Maps", ""))
    map.Clear
    For o = 1 To nmaps
    m$ = GetSetting("QWAdmin", "MODS\" + gamedir.text, "map" & o, "")
    map.AddItem m$
    Next
    map.DataChanged = True
    clientgamedir.text = GameDirOf$(gamedir.text)
    
End Sub

Private Sub gamedir_click()
gamedir_Change
End Sub

Public Sub gamedir_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case 13
        t$ = GetSetting("QWAdmin", "MODS", "Listed mods", "")
        If InStr(t$, gamedir.text) Then
            nmaps = Val(GetSetting("QWAdmin", "MODS\" + gamedir.text, "Maps", ""))
            map.Clear
            om = map.text
            For o = 1 To nmaps
            m$ = GetSetting("QWAdmin", "MODS\" + gamedir.text, "map" & o, "")
            map.AddItem m$
            map.DataChanged = False
            Next
            map.text = findinserver$("map")
            map.text = om
            Else
            t$ = GetSetting("QWAdmin", "MODS", "Listed mods", "")
            SaveSetting "QWAdmin", "MODS", "Listed mods", t$ + "," + gamedir.text
            gamedir.AddItem gamedir.text
            End If
        clientgamedir.text = GameDirOf$(gamedir.text)
                
    Case Else
    End Select
End Sub

Private Sub hostname_Change()
' hostname.SetFocus
End Sub

Private Sub hostname_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then
    hostname.text = subst$(hostname.text, " ", "_")
    Main.servRconAns$ "hostname " + hostname.text
    End If
    
End Sub

Private Sub interval_Change()
If interval.Value = interval.max Then
    Timer2.Enabled = False
    Timer3.Enabled = False
    state.Caption = "Off"
    timerdesc.Caption = "Disabled"
    status.Caption = "There are no qwadmin<->server update information transfers [QWAdmin is idle]"
    status.refresh
    Else
    If ServerOnline Then
        Timer2.Enabled = True
        Timer3.Enabled = True
        Timer2.interval = interval.Value
        Timer3.interval = interval.Value
        status.Caption = "Online"
        status.refresh
        timerdesc.Caption = Format$(interval.Value / 1000, "##0.0") + " s"
        End If
    End If
End Sub


Private Sub Kick_Click()
k = playerlist.RowSel
If k > 0 Then
    p$ = player(k).name
    a = MsgBox("Are you sure you wish to kick " + p$ + " from server ?", vbYesNo, "Kick confirm")
    If a = vbYes Then
        ServerMessage player(k).RealName + " (UID " & player(k).uid & ") was kicked from game."
        KickPlayer k
        End If
    End If
End Sub


Private Sub map_Click()
dummy = MsgBox("Restart server with " & gamedir & " and map " & map & " ?" + Chr$(13) + "Players will use " & clientgamedir & " directory.", vbYesNo)
map.DataChanged = True
gamedir.DataChanged = True

If dummy = vbYes Then
    servRconAns$ ("gamedir " + gamedir)
    If clientgamedir <> gamedir Then servRconAns$ ("sv_gamedir " + clientgamedir)
    m = map
    servRconAns$ ("map " + m)
    map.DataChanged = False
    gamedir_KeyPress 13
    map.text = m
    gamedir.DataChanged = False
    clientgamedir.DataChanged = False
    map.DataChanged = False
    
    End If
End Sub

Public Sub map_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case 13
        found = False
        For o = 0 To map.ListCount
        If map.List(o) = map.text Then found = True: Exit For
        Next
        If found = False Then
            nmaps = Val(GetSetting("QWAdmin", "MODS\" + gamedir.text, "Maps", ""))
            nmaps = nmaps + 1
            map.AddItem map.text
            SaveSetting "QWAdmin", "MODS\" + gamedir.text, "map" & nmaps, map.text
            SaveSetting "QWAdmin", "MODS\" + gamedir.text, "Maps", nmaps
            End If
        dummy = MsgBox("Restart server with " & gamedir & " and map " & map & " ?" + Chr$(13) + "Players will use " & clientgamedir & " directory.", vbYesNo)
        If dummy = vbYes Then
            servRconAns$ ("gamedir " + gamedir)
            If gamedir <> clientgamedir Then servRconAns$ ("sv_gamedir " + clientgamedir)
            servRconAns$ ("map " + map)
            map.DataChanged = False
            gamedir.DataChanged = False
            clientgamedir.DataChanged = False
            
            End If
        gamedir.DataChanged = False
            
    End Select

End Sub

Private Sub mnuAbout_Click()
Load AboutWindow
AboutWindow.Visible = True
End Sub

Private Sub mnuAddList_Click()
If ServerOnline Then
    serverbrowser.addnewserver serverip, serverport, rcon, qwaserver$
    serverbrowser.Visible = True
    End If
End Sub

Private Sub mnuban1_Click()
KickAndBan

End Sub

Private Sub mnuban2_Click()
KickAndBanL 1

End Sub

Private Sub mnuban3_Click()
KickAndBanL 2

End Sub

Private Sub mnuban4_Click()
KickAndBanL 3

End Sub

Private Sub mnubanlevel1_Click()
KickAndBan

End Sub

Private Sub mnubanlevel2_Click()
KickAndBanL 1


End Sub

Private Sub mnubanlevel3_Click()
KickAndBanL 2

End Sub

Private Sub mnubanlevel4_Click()
KickAndBanL 3

End Sub

Private Sub mnuCentral_Click()
SCLogin.Visible = True
SCLogin.SetFocus

End Sub


Private Sub mnucheatcheck_Click()
Command1.Enabled = False

PlayerModelCheck -1

PlayerProxyCheck
Command1.Enabled = True

End Sub

Private Sub mnuCheatCheckonConnect_Click()
k = mnuCheatCheckonConnect.Checked
If k = 0 Then
    mnuCheatCheckonConnect.Checked = True
    Else
    mnuCheatCheckonConnect.Checked = False
    End If
End Sub

Private Sub mnuConnect_Click()
Main.Connect_Click
End Sub

Private Sub mnuCustomImport_Click()
If DeveloperMode = True Then Else On Error Resume Next
Dim fb As New SelectFile
Dim ans As String


Filterfile = "Config files(*.cfg)|*.cfg|Script files (*.scr)|*.scr|All files|*.*"

dd$ = GetSetting(AppName, "Settings", "Configdirectory", CurDir)

fb.file.InitDir = dd$
With fb.file
    .DialogTitle = "Import config file..."
    .Flags = vbOFNReadOnly Or vbOFNFileMustExist
    .FilterIndex = 1
    .CancelError = True
    .filename = ""
    .Filter = Filterfile
    .FilterIndex = 1
    
    On Error Resume Next
    .ShowOpen
    End With

If Err <> 0 Then
    ' No file selected from the Open File dialog box.
    Exit Sub
    End If
    
F$ = fb.file.filename
tt$ = Dir$(F$)
If tt$ > "" Then
    dd$ = fb.file.filename
    For oi = Len(dd$) To 1 Step -1
    Select Case Mid$(dd$, oi, 1)
        Case "\", ":"
            pt = oi
            Exit For
        End Select
    Next
    
    If pt Then
        SaveSetting AppName, "Settings", "Configdirectory", Left$(dd$, pt)
        End If
    a = FreeFile
    ' File exist
    Open F$ For Input As #a
    lin = 0
    ReDim inputf$(10)
    
    Do
    Do
    Line Input #a, tt$
    If Left$(tt$, 2) <> "//" And tt$ > "" Then Exit Do
    Loop Until EOF(a)
'    If EOF(a) Then Exit Do
    DoEvents
    
    Do
    tmp0 = InStr(LCase$(tt$), "%comment")
    If tmp0 Then
        tmp2 = InStr(tmp0 + 1, tt$, "%")
        If tmp2 > 0 Then
            kt$ = Mid$(tt$, tmp0, tmp2 - tmp0 + 1)
            tp1 = InStr(kt$, "(")
            tp2 = InStr(kt$, ")")
            bt$ = subst$(Mid$(kt$, tp1 + 1, tp2 - tp1 - 1), Chr$(34), "")
            MsgBox bt$
            End If
        tt$ = subst$(tt$, kt$, "")
        End If
    tmp1 = InStr(LCase$(tt$), "%input")
    If tmp1 Then
        tmp2 = InStr(tmp1 + 1, tt$, "%")
        If tmp2 > 0 Then
            kt$ = Mid$(tt$, tmp1, tmp2 - tmp1 + 1)
            tp1 = InStr(kt$, "(")
            tp2 = InStr(kt$, ")")
            tp$ = subst$(Mid$(kt$, tp1 + 1, tp2 - tp1 - 1), Chr$(34), "")
            t = InStr(tp$, ",")
            ans = ""
            If t Then
                ans = InputBox(Left$(tp$, t - 1), Left$(tp$, t - 1), Mid$(tp$, t + 1))
                End If
            End If
        tt$ = subst$(tt$, kt$, ans)
        Else
        F1 = False
        End If
    
    tmp1 = InStr(LCase$(tt$), "%ask")
    If tmp1 Then
        tmp2 = InStr(tmp1 + 1, tt$, "%")
        If tmp2 > 0 Then
            kt$ = Mid$(tt$, tmp1, tmp2 - tmp1 + 1)
            tp1 = InStr(kt$, "(")
            tp2 = InStr(kt$, ")")
            tp$ = subst$(Mid$(kt$, tp1 + 1, tp2 - tp1 - 1), Chr$(34), "")
            t = InStr(tp$, ",")
            ans = ""
            ans = MsgBox(Left$(tp$, t - 1), vbYesNo, Left$(tp$, t - 1))
            If ans = vbYes Then ans = Mid$(tp$, t + 1) Else ans = ""
            End If
        tt$ = subst$(tt$, kt$, ans)
        Else
        F2 = False
        End If
    Loop Until F1 = False And F2 = False
    
    If removespaces$(tt$) > "" Then
        lin = lin + 1
        ReDim Preserve inputf$(lin)
        inputf$(lin) = tt$
        End If
    Loop Until EOF(a)
    Close #a
    
    Dim PWin As New progress
    PWin.Visible = True
    PWin.Label2.Caption = "Sending " + F$ + " to server..."
    PWin.perc = 0
    Load PWin
       
    For o = 0 To lin
    PWin.Label = "[ " + inputf$(o) + " ]"
    PWin.Label.refresh
    PWin.refresh
    PWin.Frame1.refresh
    
    PWin.perc = (o / lin) * 100
    dummy$ = servRconAns$(inputf$(o))
    If Left$(dummy$, 15) = "Unknown command" Then
        PWin.Label2 = dummy$
        PWin.Label2.refresh
        End If
    Next
    
    PWin.Visible = False
    Unload PWin
    dummy$ = MsgBox("Successefully loaded " + F$ + " to server...", vbOKOnly, "Import complete")
    Else
    dummy$ = MsgBox("File does not exist...", vbOKOnly, "File not found")
    End If

End Sub

Private Sub mnuDisconnect_Click()
Disconnect_Click

End Sub

Public Sub mnuExport_Click()
Load ExportConfig
ExportConfig.Visible = True
ExportConfig.SetFocus
End Sub

Private Sub mnuFly_Click()
k = playerlist.RowSel
If CheatsEnabled = False Then Exit Sub
If k > 0 Then
    p$ = player(k).name
    d$ = servRconAns$("noclip " & player(k).uid)
    a$ = "Fly mode setting changed for player " & player(k).RealName
    If PRO = False Then ServerMessage a$
    MsgBox a$
    End If

End Sub

Private Sub mnuGive_Click()
k = playerlist.RowSel
If CheatsEnabled = False Then Exit Sub
If k > 0 Then
    p$ = player(k).name
    w = InputBox("What should I give to " & p$ & _
        Chr$(13) & "See Quakeworld documentation for variables...", "Give " & p$, "")
    If w = "" Then Exit Sub
    d$ = servRconAns$("give " & player(k).uid & " " & w)
    a$ = "Gave " & player(k).RealName & " item " & w
    If PRO = False Then ServerMessage a$
    MsgBox a$
    End If

End Sub

Private Sub mnuGod_Click()
k = playerlist.RowSel
If CheatsEnabled = False Then Exit Sub
If k > 0 Then
    p$ = player(k).name
    d$ = servRconAns$("god " & player(k).uid)
    a$ = "God mode setting changed for player " & player(k).RealName$
    If PRO = False Then ServerMessage a$
    MsgBox a$
    End If

End Sub

Private Sub mnuGraphOptions_Click()
Load GraphOptions
GraphOptions.Visible = True
GraphOptions.SetFocus
End Sub

Public Sub mnuImport_Click()
Dim fb As New SelectFile
   

Filterfile = "Config files(*.cfg)|*.cfg|Script files (*.scr)|*.scr|All files|*.*"

dd$ = GetSetting(AppName, "Settings", "Configdirectory", CurDir)

fb.file.InitDir = dd$
With fb.file
    .DialogTitle = "Import config file..."
    .Flags = vbOFNReadOnly Or vbOFNFileMustExist
    .FilterIndex = 1
    .CancelError = True
    .filename = ""
    .Filter = Filterfile
    .FilterIndex = 1
    
    On Error Resume Next
    .ShowOpen
    End With

If Err <> 0 Then
    ' No file selected from the Open File dialog box.
    Exit Sub
    End If
    
F$ = fb.file.filename
tt$ = Dir$(F$)
If tt$ > "" Then
    dd$ = fb.file.filename
    For oi = Len(dd$) To 1 Step -1
    Select Case Mid$(dd$, oi, 1)
        Case "\", ":"
            pt = oi
            Exit For
        End Select
    Next
    
    If pt Then
        SaveSetting AppName, "Settings", "Configdirectory", Left$(dd$, pt)
        End If
    a = FreeFile
    ' File exist
    Open F$ For Input As #a
    lin = 0
    ReDim inputf$(10)
    
    Do
    Line Input #a, tt$
    If Left$(tt$, 2) = "//" Then tt$ = ""
    If tt$ > "" Then
        lin = lin + 1
        ReDim Preserve inputf$(lin)
        inputf$(lin) = tt$
        End If
    Loop Until EOF(a)
    Close #a
    
    Dim PWin As New progress
    PWin.Visible = True
    PWin.Label2.Caption = "Sending " + F$ + " to server..."
    PWin.perc = 0
    Load PWin
       
    For o = 0 To lin
    PWin.Label = "[ " + inputf$(o) + " ]"
    If Left$(inputf$(o), 1) <> "/" Then
    PWin.Label.refresh
    PWin.refresh
    PWin.Frame1.refresh
    
    PWin.perc = (o / lin) * 100
    dummy$ = servRconAns$(inputf$(o))
    If Left$(dummy$, 15) = "Unknown command" Then
        PWin.Label2 = dummy$
        PWin.Label2.refresh
        End If
    End If
    Next
    
    PWin.Visible = False
    Unload PWin
    dummy$ = MsgBox("Successefully loaded " + F$ + " to server...", vbOKOnly, "Import complete")
    Else
    dummy$ = MsgBox("File does not exist...", vbOKOnly, "File not found")
    End If
    
End Sub

Private Sub mnuIPBan_Click()
Load IPBan
IPBan.RefreshList
IPBan.Visible = True

IPBan.SetFocus

End Sub

Private Sub mnuKick_Click()
Kick_Click
End Sub

Public Sub mnuKickandBan_Click()
KickAndBan
End Sub

Private Sub mnuLegend_Click()
Load GraphLegend
GraphLegend.Visible = True
GraphLegend.SetFocus

End Sub

Public Sub mnuMapRotation_Click()
Load MapRotation
MapRotation.refreshit
MapRotation.Visible = True
MapRotation.SetFocus

End Sub

Public Sub mnuMessages_Click()
If qwsvplus.Value = 1 Then
    Load ServerChat
    ServerChat.Visible = True
    ServerChat.SetFocus
    Else
    msg$ = InputBox("You haven't installed QWSV+ in your server so, you can't talk directly with the players." & Chr$(13) & "Check QWAdmin's homepage on how to install QWSV+ on your server and what are your advantages." & Chr$(13) & Chr$(13) & "You can send them a message:", "Server message")
    If msg > "" Then ServerMessage msg$
    End If
End Sub

Private Sub mnuModelscheck_Click()
PlayerModelCheck -1
End Sub

Private Sub mnuNotify_Click()
a = Develop.Value
If a = 1 Then Develop.Value = 0 Else Develop.Value = 1
mnuNotify.Checked = Develop.Value
End Sub

Private Sub mnuping_Click()
Select Case mnuping.Checked
    Case False
        mnuping.Checked = True
        If Val(mnuminping.Tag) <= 0 Then mnupingset_Click
    Case True
        mnuping.Checked = False
    End Select
End Sub

Public Sub mnupingset_Click()
mnuminping.Tag = Val(InputBox("Enter minimum ping allowed for this server (0=disable , max=500)", "Minimum ping", mnuminping.Tag))
If Val(mnuminping.Tag) > 500 Then mnuminping.Tag = 500
If Val(mnuminping.Tag) = 0 Then mnuping.Checked = False Else mnuping.Checked = True
End Sub

Private Sub mnuPlayerinfo_Click()
UserInfo_Click
End Sub

Private Sub mnuProxyCheck_Click()
PlayerProxyCheck
End Sub
Public Sub mnuQuit_Click()
Quit
End Sub


Private Sub mnuQWAOptions_Click()
Load QWAOptions
QWAOptions.Visible = True
QWAOptions.SetFocus
End Sub

Private Sub mnuRConsole_Click()
If Console.Enabled Then console_Click
End Sub

Private Sub mnuRefreshlist_Click()
refreshit_Click

End Sub

Public Sub mnuServerBrowser_Click()
Load serverbrowser
ServerBrowserVisible = True
serverbrowser.Visible = True
serverbrowser.SetFocus
End Sub

Private Sub mnuSettings_Click()
Main.settings_Click
End Sub

Private Sub mnuShowGraph_Click()
k = enableGraph.Value
If k = 1 Then
    enableGraph.Value = 0
    mnuShowGraph.Checked = 0
    Else
    enableGraph.Value = 1
    mnuShowGraph.Checked = 0
    End If
End Sub

Private Sub mnuShowPlayerlist_Click()
If showmore.Enabled Then showmore_Click
End Sub

Private Sub mnuShutDown_Click()
If ServerOnline Then
    dummy = MsgBox("This will shutdown the server ! Are you sure you wish to do that ?", vbYesNo)
    If dummy = vbYes Then
        Winsock1(0).SendData String$(4, Chr$(255)) + "rcon " + rcon.text + " quit" + Chr$(0)
        Disconnected
        End If
    End If
End Sub

Private Sub mnuTaskBar_Click()
TrayHide_Click
End Sub

Private Sub mnuTFOptions_Click()
If tfset.Enabled Then tfset_Click
End Sub

Private Sub mnuWizard_Click()
MatchWizard
End Sub

Private Sub playerlist_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
If button = 2 Then
    PopupMenu PlayerPopup
    End If
End Sub

Public Sub PopConsole_Click()
If ServerOnline Then console_Click
End Sub

Public Sub PopExport_Click()
mnuExport_Click

End Sub

Public Sub PopImport_Click()
mnuImport_Click

End Sub

Private Sub PopKick_Click()
Kick_Click

End Sub

Public Sub PopKickBan_Click()
mnuKickandBan_Click

End Sub


Public Sub PopRefresh_Click()
If refreshit.Enabled Then refreshit_Click
End Sub

Private Sub PopServerSettings_Click()
If settings.Enabled Then settings_Click

End Sub

Public Sub PopTFSettings_Click()
If tfset.Enabled Then tfset_Click
End Sub

Private Sub popUserInfo_Click()
UserInfo_Click
End Sub

Private Sub qwsvplus_Click()
qwsvplus.Value = Val(qwsvplus.Tag)
End Sub

Private Sub refreshit_Click()
Timer2.Enabled = False
Timer3.Enabled = False
refreshit.Enabled = False
Dim newplayer As userid
For o = 1 To NumClients
player(o) = newplayer
Next
NumClients = 0
UpdateStatus
refreshit.Enabled = True
Timer2.Enabled = True
Timer3.Enabled = True
End Sub

Private Sub Sendmsg_Click()
Main.mnuMessages_Click
End Sub

Private Sub serverip_Click()
a$ = serverip.text
b$ = rcons$(serverip.SelStart)
k = InStr(a$, ":")
If k = 0 Then k = Len(a$)
serverip.text = Left$(a$, k - 1)
serverport.text = Val(Mid$(a$, k + 1))
If Val(serverport.text) = 0 Then serverport.text = 27500
rcon.text = b$
Connect_Click
serverip.text = Left$(a$, k - 1)
serverip.Tag = serverip.text

End Sub

Public Sub settings_Click()
If DeveloperMode = False Then On Error GoTo errhand
Dim progres As New progress

progres.perc.Value = 0
progres.Label.Caption = "Receiving server's settings..."
progres.Visible = True
progres.refresh

Main.UpdateStatus
Main.UpdateInfo
Main.RefreshLocal


SettingForm.gamedir.text = gamedir
SettingForm.maxclients.text = findinserver$("maxclients")
SettingForm.gamedir.DataChanged = False
SettingForm.maxclients.DataChanged = False

progres.perc.Value = 2

For o = 0 To 7
progres.perc.Value = 3 + o
With SettingForm
    TagText$ = .sinfo(o).Tag
    TTTT$ = findinserver$(TagText$)
    TTTT2$ = Main.localvalue$(TagText$, "")
    If TTTT$ = "" Then TTTT$ = TTTT2$
    .sinfo(o).text = TTTT$
    .sinfo(o).DataChanged = False
    ' .sinfo(o).Enabled = PRO
End With
Next

SettingForm.maxspectators.text = findinserver$("maxspectators")
SettingForm.maxspectators.DataChanged = False
progres.perc.Value = 12

SettingForm.map.text = findinserver$("map")
SettingForm.map.DataChanged = False
progres.perc.Value = 15

SettingForm.Watervis.Value = Val(findinserver$("watervis"))
SettingForm.Watervis.DataChanged = False
progres.perc.Value = 20

k$ = servRconAns$("floodprot")
progres.perc.Value = 25

If InStr(k$, Chr$(10)) Then k$ = Mid$(k$, InStr(k$, Chr$(10)) + 1)

If InStr(LCase$(k$), "after") Then after = Val(Mid$(k$, InStr(LCase$(k$), "after") + 6, 4))
If InStr(LCase$(k$), "per") Then per = Val(Mid$(k$, InStr(LCase$(k$), "per") + 4, 4))
If InStr(LCase$(k$), "for") Then Delay = Val(Mid$(k$, InStr(LCase$(k$), "for") + 4, 4))
SettingForm.nummsgs.text = Str$(after)
SettingForm.msgtime.text = Str$(per)
SettingForm.shuttime.text = Str$(Delay)
msg$ = servRconAns$("floodprotmsg")
progres.perc.Value = 30

k = InStr(msg$, "msg: ") + 4
j = Len(msg$) - k - 2
If j > 0 Then
    m$ = Mid$(msg$, k + 1, InStr(k + 1, msg, Chr$(10)) - k - 1)
    Else
    m$ = ""
    End If
    
SettingForm.floodmsg.text = m$
SettingForm.hostname.text = findinserver$("hostname")
SettingForm.hostname.DataChanged = False

progres.perc.Value = 35

SettingForm.colornicks.Value = Val(ServerVar$("sv_highchars"))
progres.perc.Value = 40

SettingForm.spectatormessages.Value = Val(ServerVar$("sv_spectalk"))
progres.perc.Value = 45

SettingForm.allowdownload.Value = Val(ServerVar$("allow_download"))
progres.perc.Value = 50

If SettingForm.allowdownload.Value = 0 Then
    SettingForm.dlbsp.Enabled = 0
    SettingForm.dlmdl.Enabled = 0
    SettingForm.dlwav.Enabled = 0
    SettingForm.dlskins.Enabled = 0
    End If
    
SettingForm.dlbsp.Value = Val(ServerVar$("allow_download_maps"))
progres.perc.Value = 55

SettingForm.dlskins.Value = Val(ServerVar$("allow_download_skins"))
progres.perc.Value = 60

SettingForm.dlmdl.Value = Val(ServerVar$("allow_download_models"))
progres.perc.Value = 65

SettingForm.dlwav.Value = Val(ServerVar$("allow_download_sounds"))
progres.perc.Value = 70

k = Val(ServerVar$("pausable"))
SettingForm.pausable.Value = k
SettingForm.pausable.DataChanged = False

progres.perc.Value = 75

SettingForm.pausable.Value = k
SettingForm.Spawn.Value = Val(findinserver$("spawn"))
progres.perc.Value = 80

For o = 0 To 12
progress.perc.Value = 81 + o
With SettingForm
    dummy$ = Main.ServerVar$(.Label17(o).Tag)
    .sv(o).text = dummy$
    .sv(o).text = subst$(.sv(o).text, ",", ".")
    .sv(o).text = subst$(.sv(o).text, "0.", ".")
    ' .UpDown4(o).Value = Val(dummy$)
    If o >= 5 Then .sv(o).Enabled = PRO: .UpDown4(o).Enabled = PRO
    .sv(o).Tag = .sv(o).text
    .sv(o).DataChanged = False
End With
Next
t$ = Main.ServerVar$("sv_phs")
SettingForm.phs.Value = Val(t$)
SettingForm.phs.Enabled = PRO

SettingForm.phs.DataChanged = False


SettingForm.fraglimit.text = ServerVar$("fraglimit")
SettingForm.timelimit.text = ServerVar$("timelimit")
If Val(SettingForm.fraglimit.text) > 0 Then
    SettingForm.fraglimitcheck.Value = 1
    Else
    SettingForm.fraglimitcheck.Value = 0
    End If

If Val(SettingForm.timelimit.text) > 0 Then
    SettingForm.Timelimitcheck.Value = 1
    Else
    SettingForm.Timelimitcheck.Value = 0
    End If
    


k = Val(findinserver$("needpass"))
progres.perc.Value = 90

pass$ = ServerVar$("password")
If pass$ = "" Then pass$ = "none"
SettingForm.password.text = pass$
    
If (k And 1) Then
    SettingForm.passwordenabled.Value = 1
    SettingForm.password.Enabled = True
    Else
    SettingForm.password.Enabled = False
    SettingForm.passwordenabled.Value = 0
    End If

progres.perc.Value = 92
SettingForm.mapcheck.Value = Abs(Sgn(Val(ServerVar$("sv_mapcheck"))))
    
pass$ = ServerVar$("spectator_password")
progres.perc.Value = 95

SettingForm.spectpassword.text = pass$

If (k And 2) Then
    SettingForm.spectpassenabled.Value = 1
    SettingForm.spectpassword.Enabled = True
    Else
    SettingForm.spectpassenabled.Value = False
    SettingForm.spectpassword.Enabled = 0
    End If
progres.perc.Value = 100
SettingForm.teamplay.text = findinserver$("teamplay")
SettingForm.teamplay.DataChanged = False


a = Val(findinserver$("fpd"))
If a = 0 Then
    SettingForm.enableproxy.Value = False
    SettingForm.Qizmo1.Value = False
    SettingForm.Qizmo2.Value = False
    SettingForm.Qizmo4.Value = False
    SettingForm.Qizmo8.Value = False
    SettingForm.qizmo16.Value = False
    SettingForm.qizmo32.Value = False
    SettingForm.qizmo64.Value = False
    SettingForm.qizmo128.Value = False
    SettingForm.qizmo256.Value = False
    SettingForm.qizmo512.Value = False
    Else
    SettingForm.enableproxy.Value = 1
    SettingForm.Qizmo1.Value = Abs(Sgn(a And 1))
    SettingForm.Qizmo2.Value = Abs(Sgn(a And 2))
    SettingForm.Qizmo4.Value = Abs(Sgn(a And 4))
    SettingForm.Qizmo8.Value = Abs(Sgn(a And 8))
    SettingForm.qizmo16.Value = Abs(Sgn(a And 16))
    SettingForm.qizmo32.Value = Abs(Sgn(a And 32))
    SettingForm.qizmo64.Value = Abs(Sgn(a And 64))
    SettingForm.qizmo128.Value = Abs(Sgn(a And 128))
    SettingForm.qizmo256.Value = Abs(Sgn(a And 256))
    SettingForm.qizmo512.Value = Abs(Sgn(a And 512))
    End If
    

a = Val(findinserver$("deathmatch")) - 1
If a < 0 Then a = 0
If a > 2 Then a = 2
SettingForm.dm.Item(a) = True

SettingForm.Caption = "Server settings " + serverip.text + ":" + serverport.text
SettingForm.refreshit.Enabled = True
SettingForm.Cancel.Enabled = True
SettingForm.OK.Enabled = True
SettingForm.Watervis.DataChanged = False
SettingForm.colornicks.DataChanged = False
SettingForm.timelimit.DataChanged = False
SettingForm.fraglimit.DataChanged = False

k = Val(findinserver$("QWA_MS"))
For o = 0 To 9
SettingForm.mserver(o).DataChanged = False
If ((2 ^ o) And k) <> 0 Then
    SettingForm.mserver(o).Value = 1
    Else
    SettingForm.mserver(o).Value = 0
    End If
If PRO = True Then
    SettingForm.mserver(o).Enabled = True
    Else
    SettingForm.mserver(o).Enabled = False
    End If
Next

SettingForm.svgamedir.text = Main.clientgamedir

progres.Visible = False
SettingForm.Visible = True
SettingForm.Enabled = True
SettingForm.SetFocus
NeedToRestart = False
For o = 1 To 40
ChangedSetting(o) = False
Next

Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Sub

Private Sub showmore_Click()
' 3150  - Just top (no player list, no graph)
' 7050  - Just with player list (no graph)
' 7920  - Full with playerlist and graph
If ExpandedMode = False Then
    showmore.Caption = "<<< Less"
    enableGraph.Enabled = True
    If enableGraph.Value = 1 Then
        Main.Height = 7920
        Else
        Main.Height = 7050
        End If
    playerlist.Enabled = True
    playerlist.Visible = True
    ExpandedMode = True
    mnuShowPlayerlist.Checked = True
    Else
    Main.Height = 3160
    enableGraph.Enabled = False
    playerlist.Visible = False
    playerlist.Enabled = False
    showmore.Caption = "More >>>"
    ExpandedMode = False
    mnuShowPlayerlist.Checked = False
    
    End If

End Sub

Private Sub TCPServer_Close()
qwsvplus.Value = 0
qwsvplus.Tag = 0
End Sub

Private Sub TCPServer_Connect()
qwsvplus.Value = 2
qwsvplus.Tag = 2
status.Caption = "Logging on to QWSV+"
End Sub

Public Sub TCPServer_DataArrival(ByVal bytesTotal As Long)
TCPServer.GetData a$
BufferLog$ = BufferLog$ + a$
BufferLog$ = subst$(BufferLog$, Chr$(0), "")
If BufferLog$ > "" Then ProcessBufferLog
End Sub

Private Sub TCPServer_Error(ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
status.Caption = "Couldn't connect to QWSV+: (" + Hex$(Number) + ") - " + Description
TCPServer.Close
End Sub

Public Sub tfset_Click()
Select Case tfset.Tag
    Case "SWCTF"
        If PRO = True Then      ' NOT FINISHED
            MsgBox "This mod isn't yet supported by QWAdmin. Please check QWAdmin's page for updates"
            Else
            ShowRegisterMessage
            End If
    Case "PURECTF"
        If PRO = True Then      ' NOT FINISHED
            ShowPureCTFSettings
            Else
            ShowRegisterMessage
            End If
    Case "REQUIEM"
        If PRO = True Then
            ShowRequiemSettings
            Else
            ShowRegisterMessage
            End If
    Case "TWCTF"
        If PRO = True Then      ' NOT FINISHED
            MsgBox "This mod isn't yet supported by QWAdmin. Please check QWAdmin's page for updates"
            Else
            ShowRegisterMessage
            End If
    Case "ARENA"
        If PRO = True Then      ' NOT FINISHED
            ShowArenaSettings
            Else
            ShowRegisterMessage
            End If
    Case "QRING"
        If PRO = True Then
            ShowQRingSettings
            Else
            ShowRegisterMessage
            End If
    Case "MEGATF"
        ShowMegaTFSettings
    Case "CARENA"
        If PRO = True Then
            ShowCArenaSettings
            Else
            ShowRegisterMessage
            End If
    Case "TF"
        ShowTFSettings
    Case "KOMBAT"
        ShowKombatSettings
    Case "DM"
        ShowDMSettings
    Case "CTF"
        ShowCTFSettings
    Case Else
        Dim CM As New ChooseMod
        With CM
         .ShowData
         .Visible = True
         .SetFocus
        End With
    End Select
End Sub

Private Sub Timer1_Timer()
If ServerOnline Then
    If serverip.text = "" And serverip.Tag > "" Then serverip.text = serverip.Tag: serverip.Tag = ""
    progs = Val(findinserver$("*progs"))
    CheckMod progs
    Else
    tfset.Caption = "Mod settings..."
    tfset.Tag = ""
    tfset.Enabled = False
    End If
End Sub

Public Sub Timer2_Timer()
If serverip.Tag > "" And serverip.text = "" Then
    serverip.text = serverip.Tag
    serverip.Tag = ""
    End If
If ServerOnline = True Then
    UpdateStatus
    SmallUpdatePlayers
    a$ = Servstatus$
    b = InStr(a$, "cpu utilization")
    If b > 0 Then
        c = InStr(b, a$, ":")
        k = InStr(c + 1, a$, "%")
        p$ = removespaces$(Mid$(a$, c + 1, k - c - 1))
        b = InStr(a$, "avg response time:")
        c = InStr(b, a$, ":")
        k = InStr(c + 1, a$, Chr$(10))
        p2$ = removespaces$(Mid$(a$, c + 1, k - c - 4))
        b = InStr(a$, "/frame")
        c = InStr(b, a$, ":") + 2
        k = InStr(c + 2, a$, Chr$(10))
        ptmp$ = removespaces$(Mid$(a$, c + 1, k - c - 1))
        k = InStr(ptmp$, " ")
        If k Then
            p3$ = Left$(ptmp$, k - 1)
            p4$ = Mid$(ptmp$, k + 2)
            Else
            p3$ = ""
            p4$ = ""
            End If
        If p$ > "" Then
            totrate = 0
            If Val(p4$) Then fps = Val(p3$) / Val(p4$) Else fps = 0
            For o = 1 To NumClients
            If player(o).rate < Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000")) Then totrate = totrate + player(o).rate
            Next
            totrate = Abs(Int(totrate * 2))
            UpdateGraph Val(p$), Val(p2$), Val(p3$), Val(p4$), fps, NumClients, totrate
            Main.state.Caption = p$ + "%"
            Main.state2.Enabled = True
            If Val(p$) <= 100 And Val(p$) >= 0 Then
                cpuusage = Val(p$)
                Select Case cpuusage
                    Case Is >= 66
                        g = 255 - ((cpuusage - 66.6) / 10) * 255
                        r = 255
                    Case Is <= 33
                        g = 255
                        r = 0
                    Case Else
                        g = 255
                        r = Int(((cpuusage - 33.3) / 33.3) * 255)
                    End Select
                If r < 0 Then r = 0
                If r > 255 Then r = 255
                If g > 255 Then g = 255
                If g < 0 Then g = 0
                Main.state2.BackColor = RGB(r, g, 0)
                Main.state2.refresh
                End If
            'restime.Enabled = True
            'packets.Enabled = True
            restime.text = p2$ + "ms"
            packets.text = ptmp$
    
            End If
        End If
    
    End If
'UpdatePlayers
End Sub


Private Sub Timer3_Timer()
If ServerOnline = True Then
    UpdateInfo
    
    mnuCheat.Enabled = CheatsEnabled
    
    If ServerOnline = False Then Exit Sub
    If hostname.DataChanged = False Then
        hostname.text = findinserver$("hostname")
        hostname.DataChanged = False
        End If
    If gamedir.DataChanged = False Then
        clientgamedir.text = findinserver$("*gamedir")
        If gamedir.text = "" Then
            gamedir.text = RealGameDir$
            End If
        gamedir.DataChanged = False
        End If
    If map.DataChanged = False Or map.text = "" Then
        map.text = findinserver$("map")
        map.DataChanged = False
        End If
    progs = Val(findinserver$("*progs"))
    
    CheckMod progs
    
    numplayers = 0
    numspec = 0
    frags = 0
    band = 0
    pngavg = 0
    For o = 1 To NumClients
    If player(o).spectator = True Then numspec = numspec + 1 Else numplayers = numplayers + 1
    pngavg = pngavg + player(o).ping
    frags = frags + player(o).frags
    band = band + player(o).rate * 2
    Next
    inf.Caption = "Players:" + Str$(numplayers) + "/" + _
        findinserver$("maxclients") + Chr$(13) + _
        "Specs:" + Format$(numspec, "#0") + "/" + Format$(Val(findinserver$ _
        ("maxspectators")), "#0") + Chr$(13)
    t3$ = inf.Caption
    subst t3$, Chr$(13), "  "
    
    TrayIcon.TipText = "QWAdmin [" + serverip.text + ":" + serverport.text + "] " + t3$
    
    inf.Caption = inf.Caption + "Frags:" + Format$(frags) + Chr$(13) + _
        "Band:" + Format$(band / 1024, "####0.0") + "k/s" + Chr$(13)
    If NumClients > 0 Then _
        inf.Caption = inf.Caption + "Ping avg:" + Format$(pngavg / NumClients, "##0.0") + Chr$(13)
    End If
End Sub

Public Sub TrayBrowser_Click()
mnuServerBrowser_Click
End Sub

Public Sub TrayConsole_Click()
console_Click
End Sub

Public Sub trayExit_Click()
mnuQuit_Click

End Sub

Public Sub TrayHide_Click()
    Main.WindowState = 1
    Main.Visible = False
End Sub

Private Sub TrayIcon_Click(button As Integer)
If button = 2 Then
    PopupMenu mnuTray
    End If
End Sub

Private Sub TrayIcon_DblClick(button As Integer)
If button = 1 Then
    If Main.Visible = True Then
        Main.WindowState = 1
        Main.Visible = False
        Else
        Main.Visible = True
        Main.WindowState = 0
        End If
    End If
End Sub

Private Sub trayOpen_Click()
    Main.WindowState = 0
    Main.Visible = True
    DoEvents
    Main.SetFocus
    
End Sub

Public Sub TraySettings_Click()
settings_Click

End Sub

Public Sub TrayTFSettings_Click()
tfset_Click

End Sub

Private Sub UserInfo_Click()
If playerlist.RowSel = 0 Then
    Else
    UserInfoWindow.CurrentUser = playerlist.RowSel
    UserInfoWindow.Visible = True
    UserInfoWindow.refreshdata
    
    End If
End Sub


Public Sub UpdateValues()
Dim splay As Integer
splay = 0

If Servstatus$ = "" Then Exit Sub
map.text = findinserver$("map")
gamedir.text = findinserver$("*gamedir")
If hostname.DataChanged = False Then
    hostname.text = findinserver$("hostname")
    hostname.DataChanged = False
    End If
qwversion.text = findinserver$("*version")
ServerOnline = True
interval.Enabled = True
'UpdatePlayers

If Val(qwversion.text) < 2.2 And qwversion.text > "" Then
    dummy$ = MsgBox("Wrong qw version." + Chr$(13) + "This version of ServerAdmin requires quakeworld servers prior to version 2.20." + Chr$(13) + "Please update your server with the latest quakeworld available in http://www.quakeworld.net/", vbOKOnly, "Wrong QuakeWorld version")
    status.Caption = "Disconnected..."
    Winsock1(0).Close
    Disconnected
    Exit Sub
    Else
    Connect.Caption = "Update values..."
    settings.Enabled = True
    showmore.Enabled = True
    'If LCase$(gamedir.text) = "fortress" Then tfset.Enabled = True Else tfset.Enabled = False
    End If
    
End Sub

Public Function findinserver$(a$)
For o = 1 To NumInfo
If LCase$(a$) = LCase$(serverinfo$(o)) Then
    findinserver$ = serverinfovalue$(o)
    Exit For
    End If
Next

End Function

Public Function servRconAns$(c$)
If DeveloperMode = False Then On Error GoTo errhand
If ServerOnline = False Then Exit Function
status.Caption = "Communicating with server. [" + c$ + "]"
status.refresh

TimeOut = 2

If ServerOnline Then
    fws = Int(Rnd * 7)
    DoEvents
    If Winsock1(fws) > "" Then
        Do
        For fws = 0 To 7
        If Winsock1(fws).Tag = "" Then Exit Do
        DoEvents
        Next
        DoEvents
        Loop
        End If
    Winsock1(fws).Tag = "BUSY"
    Winsock1(fws).Close
    Winsock1(fws).RemoteHost = serverip
    Winsock1(fws).RemotePort = Val(serverport)
    Winsock1(fws).Protocol = sckUDPProtocol
    a$ = ""
    WSOCK(fws) = ""
    
    k$ = String$(4, Chr$(255)) + "rcon " & Main.rcon.text + Chr$(32) + c$ + " " & Chr$(0)
    
    If Val(GetSetting("QWAdmin", "Settings", "Log commands", "1")) = 1 Then
        logfile serverip.text + ":" + serverport.text + " >" + c$
        End If
    If Left$(c$, 4) = "map " Then
        status.ForeColor = RGB(0, 200, 0)
        status.Caption = "Changing server map to " + Mid$(c$, 5) + " - This can take a while..."
        status.refresh
        TimeOut = 10
        End If
    
    For attempt = 1 To 5
    tout = Timer
    EOP$ = Chr$(0)
    t$ = ""
    a$ = ""
    DoEvents
    
    Winsock1(fws).Bind
    Winsock1(fws).SendData k$
    If ServerOnline = False Then Exit Function
    
    Do
    DoEvents
    a$ = WSOCK(fws)
    DoEvents
    If Left$(a$, 9) = String$(4, Chr$(255)) + "print" Then Quake2 = True: EOP$ = Chr$(10)
    If Right$(a$, 9) = Chr$(10) + "banned." + Chr$(10) And Quake2 = False Then
        dummy = MsgBox("Your IP is currently banned. The only way to unban is to access it via other ip.")
        logfile serverip.text + ":" + serverport.text + " > BANNED"
        servRconAns$ = ""
        Disconnected
        Exit Function
        End If
    DoEvents
    Loop Until Right$(a$, 1) = EOP$ Or Timer - tout > TimeOut
    WSOCK(fws) = ""
    
    If ServerOnline = False Then Exit Function
    If a$ > "" Then Exit For
    DoEvents
    Next
    
    Winsock1(fws).Tag = ""
    DoEvents
    
    If a$ > "" Then
        status.ForeColor = RGB(0, 128, 255)
        status.Caption = "ONLINE WITH [" + Main.serverip.text + ":" + Main.serverport.text + "]"
        If InStr(a$, "Bad rcon_password.") Then
            ServerOnline = False
            dummy = MsgBox("Wrong rcon password." + Chr$(13) + "If you are not one of the server's administrators, please don't try to access it.", vbOKOnly, "Wrong password")
            logfile serverip.text + ":" + serverport.text + " > Wrong RCON password - " + rcon.text
            Disconnected
            Exit Function
            Else
            status.Caption = "Online"
            status.refresh
            servRconAns$ = Mid$(a$, 6)
            If Val(GetSetting("QWAdmin", "Settings", "Log commands", "1")) = 1 Then
                logfile serverip.text + ":" + serverport.text + " > REPLY:" + servRconAns$
                End If
    
            If Left$(c$, 4) = "map " Then
                UpdateInfo
                End If
            Main.serverip.Enabled = False
            Main.serverport.Enabled = False
            Main.rcon.Enabled = False
            End If
        Else
        status.Caption = "Offline"
        dummy = MsgBox("No reply from server. Connection closed.", vbOKOnly, "Connect error")
        logfile serverip.text + ":" + serverport.text + " > No reply from server - disconnected"
        serverip.Enabled = True
        serverport.Enabled = True
        Disconnected
        End If
    Else
    status.Caption = "Closing open socket..."
    status.Caption = "Socket forcely closed..."
    AlreadyRunning = False
    Disconnected
    Exit Function
    End If
DoEvents
    
Exit Function
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Function

Public Function PublicServer$(c$)
If DeveloperMode = False Then On Error GoTo errhand

If WinsockPublic.state = 0 Then
    ConnectToServer
    End If
If ServerOnline = False Then Exit Function

If WinsockPublic.state = 1 Then
    c$ = String$(4, Chr$(255)) + c$ + Chr$(0)
    For attempt = 1 To 3
    WinsockPublic.SendData c$
    tout = Timer
    a$ = ""
    EOP$ = Chr$(0)
    buf$ = ""
    Do
    If WinsockPublic.state = 0 Then Exit Function
    WinsockPublic.GetData buf$
    If buf$ > "" Then
        t$ = t$ + buf$
        If Left$(t$, 9) = String$(4, Chr$(255)) + "print" Then Quake2 = True: EOP$ = Chr$(10)
        End If
    DoEvents
    Loop Until Right$(t$, 1) = EOP$ Or Timer - tout > 2
    a$ = t$
    If Right$(a$, 1) > Chr$(0) Then Exit For
    Next
    If a$ > "" Then
        status.Caption = "ONLINE WITH [" + Main.serverip.text + ":" + Main.serverport.text + "]"
        If Quake2 = False Then
            info$ = Mid$(a$, 5)
            Else
            info$ = Mid$(a$, 10)
            End If
        PublicServer$ = info$
        'status.Caption = "READY"
        Exit Function
        Else
        Exit Function
        End If
    Else
    status.Caption = "Socket closed..."
    Disconnected
    End If

Exit Function
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Function

Public Sub ConnectToServer()
' If DeveloperMode = False Then On Error GoTo errhand
If DeveloperMode = False Then On Error Resume Next

ConnectingWindow.Visible = True
ConnectingWindow.Label.Caption = "Opening socket"
ConnectingWindow.refresh
Main.Caption = "[" + serverip.text + ":" + serverport.text + "] - QWAdmin v" + Format$(App.Major) + "." + Format$(App.Minor) + " revision " + Format$(App.Revision)

If ServerOnline = False Then
    s$ = serverip.text
    
    p = Val(serverport.text)
    
    For o = 0 To 7
    Do
    Winsock1(o).Close
    DoEvents
    Loop Until Winsock1(o).state = 0
    
    Winsock1(o).Protocol = sckUDPProtocol
    Winsock1(o).RemoteHost = s$
    Winsock1(o).RemotePort = p
    Winsock1(o).Bind
    
    Next
    
    WinsockPublic.RemoteHost = s$
    WinsockPublic.RemotePort = p
    WinsockPublic.Bind
    
    
    ConnectingWindow.Label.Caption = "Initializing UDP socket..."
    ConnectingWindow.Label.refresh
    
    For o = 0 To 7
    Do
    Winsock1(o).Close
    DoEvents
    Loop Until Winsock1(o).state = 0
    Next
    
    Do
    DoEvents
    WinsockPublic.Close
    Loop Until WinsockPublic.state = 0
    
    ConnectingWindow.Label.Caption = "Hailing " + s$ + ":" + Mid$(Str$(p), 2)
    ConnectingWindow.Label.refresh
    On Error Resume Next
    
    For o = 0 To 7
    Winsock1(o).RemoteHost = s$
    Winsock1(o).RemotePort = p
    Winsock1(o).Bind
    If Err.Number = 10065 Then
        dummy$ = MsgBox("No route to host", vbOKOnly)
        Disconnected
        Exit Sub
        End If
    Next
    WinsockPublic.RemoteHost = s$
    WinsockPublic.RemotePort = p
    WinsockPublic.Bind
    
    tout = Timer
    Do
    If Timer - tout > 1 Then
        ConnectingWindow.Label.Caption = "Hailing " + s$ + ":" + Mid$(Str$(p), 2) + " - " + Str$(Int(Timer - tout)) + " secs"
        ConnectingWindow.Label.refresh
        End If
    Loop Until Timer - tout > 3 Or (Winsock1(0).state = 1 And WinsockPublic.state = 1)
    If Winsock1(0).state = 1 Then
        WinsockPublic.SendData String$(4, Chr$(255)) + "status" + Chr$(13)
        tout = Timer
        Do
        WinsockPublic.GetData a$
        Loop Until a$ > "" Or Timer - tout > 3
        If a$ > "" Then
            Main.serverip.Enabled = False
            Main.serverport.Enabled = False
            Main.rcon.Enabled = False
            ConnectingWindow.Label.Caption = "Connected"
            ConnectingWindow.Label.refresh
            ConnectingWindow.Visible = False
            ServerOnline = True
            Else
            ConnectingWindow.Label.Caption = "Disconnected"
            ConnectingWindow.Label.refresh
            dummy$ = MsgBox("Couldn't connect to server..." + Chr$(13) + "Check IP and port and try again.", vbOKOnly, "Error in connect")
            ConnectingWindow.Visible = False
            End If
        Else
        ConnectingWindow.Label.Caption = "Disconnected"
        ConnectingWindow.Label.refresh
        dummy$ = MsgBox("Couldn't connect to server..." + Chr$(13) + "Check IP and port and try again.", vbOKOnly, "Error in connect")
        ConnectingWindow.Visible = False
        End If
    Else
    ConnectingWindow.Label.Caption = "Closing socket"
    ConnectingWindow.Label.refresh
    dummy$ = MsgBox("Socket already open... Forcing close...", vbOKOnly, "Disconnected")
    ServerOnline = False
    Disconnected
    ConnectingWindow.Visible = False
    End If
    
Exit Sub
errhand:
Select Case ShowError
    Case 1
        Unload Me
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
End Sub

Public Sub Disconnected()
If PRO = True Then
    Else
    serverbrowser.mnuRCON.Enabled = False
    End If
With Main
    .TrayConsole.Enabled = False
    .TraySettings.Enabled = False
    .TrayTFSettings.Enabled = False
End With
Connect.Default = True
If DeveloperMode = False Then On Error GoTo errhand

TCPServer.Close
qwsvplus.Value = 0
qwsvplus.Tag = 0


mnuMapRotation.Enabled = False

' Timer1.Enabled = False
mnuping.Checked = False
mnuminping.Tag = ""
mnuminping.Enabled = False
mnuping.Enabled = False
mnuminping.Enabled = False

clientgamedir.text = ""
Label14.Enabled = False
timerdesc.Enabled = False
Label15.Enabled = False
mnuAddList.Enabled = False

Timer2.Enabled = False
Timer3.Enabled = False
gamedir.Enabled = False
map.Enabled = False
hostname.Enabled = False
clientgamedir.Enabled = False
Unload qwconsole
Unload SettingForm
Unload progress
Unload ServerChat
Unload ChooseMod
Unload DMSettings
Unload ExportConfig
Unload GraphLegend
Unload IPBan
Unload kombatsettings
Unload MapRotation
Unload MegaTFSettings
Unload QRingSettings
Unload RequiemSettings
Unload TCTFSettings
Unload TFSettings
Unload UserInfoWindow
Unload Wizard

restime.text = ""
packets.text = ""
inf.Visible = False
Label9.Visible = True
Label10.Visible = True
Label11.Visible = True
packets.Visible = True
restime.Visible = True
state.Visible = True
state2.Visible = True
Disconnect.Enabled = False
mnuShowPlayerlist.Checked = False
status.ForeColor = RGB(255, 255, 255)
enableGraph.Enabled = False
mnuShowPlayerlist.Checked = False
ExpandedMode = False
Develop.Enabled = False
enableGraph.Enabled = False
For o = 0 To 8
Do
Winsock1(o).Close
DoEvents
Loop Until Winsock1(o).state = 0
Do
TCPServer.Close
DoEvents
Loop Until TCPServer.state = 0

Winsock1(o).Tag = ""
Next
Winsock2.Close
WinsockPublic.Close
map.text = ""
gamedir.text = ""
hostname.text = ""
Unload ConnectingWindow
Unload progress
Unload qwconsole
Unload TFSettings
Unload SettingForm
Unload UserInfoWindow
mnuShutDown.Enabled = False

mnuWizard.Enabled = False
tfset.Caption = "Mod settings..."
tfset.Enabled = False
tfset.Tag = ""

 ' Main.Height = 3225
If QWAInitialized Then Me.Height = 3180

UpdateGraph -2, 0, 0, 0, 0, 0, 0
serverconnected = False
NumClients = 0
ExpandedMode = False

restime.Enabled = False
packets.Enabled = False
serverip.Enabled = True
serverport.Enabled = True
Connect.Caption = "Connect..."
settings.Enabled = False
tfset.Enabled = False
qwversion.text = ""
inf.Caption = ""
SettingForm.Visible = False
TFSettings.Visible = False
UserInfoWindow.Visible = False
hostname.text = ""
status.Caption = "Offline"
showmore.Enabled = False
showmore.Caption = "More >>>"
rcon.Enabled = True
state.BackColor = RGB(192, 192, 192)
state.Caption = ""
state2.BackColor = RGB(192, 192, 192)
state2.Enabled = False
SettingForm.Visible = False
interval.Enabled = False
ServerOnline = False
status.Caption = "OFFLINE"
status.ForeColor = RGB(255, 0, 0)
status.refresh

If DeveloperMode = True Then Exit Sub

mnuWizard.Enabled = False
mnucheatcheck.Enabled = False
mnuCheatCheckonConnect.Enabled = False
mnuCustomImport.Enabled = False
mnuConnect.Enabled = Enabled
mnuDisconnect.Enabled = False
mnuExport.Enabled = False
mnuImport.Enabled = False
mnuGraphOptions.Enabled = False
mnuIPBan.Enabled = False
mnukick.Enabled = False
mnuKickandBanLIST.Enabled = False
mnuLegend.Enabled = False
mnuMessages.Enabled = False
mnuModelscheck.Enabled = False
mnuNotify.Enabled = False
mnuPlayerinfo.Enabled = False
mnuProxyCheck.Enabled = False
mnuRConsole.Enabled = False
mnuRefreshlist.Enabled = False
mnuSettings.Enabled = False
qwsvplus.Value = 0
qwsvplus.Tag = 0
qwsvplus.Enabled = False

mnuShowGraph.Enabled = False
mnuShowPlayerlist.Enabled = False
mnuTFOptions.Enabled = False



Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Sub

Public Sub UpdatePlayers()
If DeveloperMode = False Then On Error GoTo errhand
If playerlist.Enabled = False Then Exit Sub

UpdateStatus

servstat$ = Servstatus$
NumClients = 0
Do
b = InStr(servstat$, Chr$(10))
If b <= 0 Then Exit Do
c$ = Left$(servstat$, b - 1)
servstat$ = Mid$(servstat$, b + 1)
If splay = 1 Then
    If p1$ > "" Then
        p2$ = c$
        NumClients = NumClients + 1
        SetUser NumClients, p1$, p2$
        p1$ = ""
        p2$ = ""
        Else
        p1$ = c$
        End If
    End If
If InStr(c$, "----------") Then splay = 1
Loop
Dim tmpplayer As userid

Do
Sorted = True
For o = 1 To NumClients - 1
If player(o).spectator < player(o + 1).spectator Then
    tmpplayer = player(o)
    player(o) = player(o + 1)
    player(o + 1) = tmpplayer
    Sorted = False
    End If
If player(o).uid > player(o + 1).uid And player(o).spectator = False And player(o + 1).spectator = 0 Then
    tmpplayer = player(o)
    player(o) = player(o + 1)
    player(o + 1) = tmpplayer
    Sorted = False
    End If
Next

Loop Until Sorted = True

CreatePlayerListTOP
playerlist.Rows = NumClients + 1

For o = 1 To NumClients
playerlist.Row = o
AddplayerLine o
Next

Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Sub


Public Function Class$(tfclass)
Select Case tfclass
    Case 1
        Class$ = "Scout"
    Case 2
        Class$ = "Sniper"
    Case 3
        Class$ = "Soldier"
    Case 4
        Class$ = "Demoman"
    Case 5
        Class$ = "Medic"
    Case 6
        Class$ = "HWGuy"
    Case 7
        Class$ = "Pyro"
    Case 8
        Class$ = "Spy"
    Case 9
        Class$ = "Engineer"
    Case Else
        Class$ = "N/A"
    End Select
End Function

Public Sub UpdateStatus()
If DeveloperMode = False Then On Error GoTo errhand

Servstatus$ = servRconAns$("status")
a$ = Servstatus$

Do
c = InStr(a$, Chr$(10))
If c > 0 Then
    k$ = Left$(a$, c - 1)
    a$ = Mid$(a$, c + 1)
    m = m + 1
    ReDim Preserve SS$(m)
    SS$(m) = k$
    Else
    Exit Do
    End If
Loop
NumStatLines = m

For o = 1 To NumStatLines
If InStr(SS$(o), "-----") Then Exit For
Next

p = 0
For i = o + 1 To NumStatLines Step 2
a1$ = SS$(i)
If a1$ = "" Then Exit For
a2$ = removespaces$(SS$(i + 1))
p = p + 1
n$ = Left$(a1$, 16)
StatusPlayers(p).name = n$
a1$ = removespaces$(Mid$(a1$, 18))
' Now only has UID and FRAGS
k = InStr(a1$, " ")
If k > 0 Then
    StatusPlayers(p).uid = Val(Left$(a1$, k))
    StatusPlayers(p).frags = Val(removespaces$(Mid$(a1$, k + 1)))
    End If
If InStr(a1$, "(s)") Then StatusPlayers(p).spectator = True Else StatusPlayers(p).spectator = False
k = InStr(a2$, " ")
If k > 0 Then
    StatusPlayers(p).ip = Left$(a2$, k - 1)
    a2$ = removespaces$(Mid$(a2$, k + 1))
    End If
k = InStr(a2$, " ")
If k > 0 Then
    StatusPlayers(p).rate = Val(Left$(a2$, k - 1))
    a2$ = removespaces$(Mid$(a2$, k + 1))
    End If
k = InStr(a2$, " ")
If k > 0 Then
    StatusPlayers(p).ping = Val(Left$(a2$, k - 1))
    a2$ = removespaces$(Mid$(a2$, k + 1))
    End If
k = InStr(a2$, " ")
If k > 0 Then
    StatusPlayers(p).drop = Val(Left$(a2$, k - 1))
    a2$ = removespaces$(Mid$(a2$, k + 1))
    End If
Next
numstatplayers = p

For o = 1 To numstatplayers
found = False
For i = 1 To NumClients
If player(i).uid = StatusPlayers(o).uid Then
    player(i).spectator = StatusPlayers(o).spectator
    player(i).frags = StatusPlayers(o).frags
    player(i).drop = StatusPlayers(o).drop
    player(i).ip = StatusPlayers(o).ip
    player(i).ping = StatusPlayers(o).ping
    If mnuping.Checked = True Then
        If Val(mnuminping.Tag) > player(i).ping Then
            ServerMessage "This server has a minimum ping of " & mnuminping.Tag
            ServerMessage "Player " & player(i).RealName & " was kicked with ping of " & player(i).ping
            KickPlayer i
            End If
        End If
    Debug.Print "Updated player (" + player(i).name + ") from rcon status"
    found = True
    Exit For
    End If
Next
If found = False Then
    NumClients = NumClients + 1
    playerlist.Rows = NumClients + 1
    playerlist.Row = NumClients
    player(NumClients) = EmptyClient
    player(NumClients).uid = StatusPlayers(o).uid
    player(NumClients).spectator = StatusPlayers(o).spectator
    player(NumClients).ping = StatusPlayers(o).ping
    player(NumClients).drop = StatusPlayers(o).drop
    player(NumClients).name = Quake2ASC(StatusPlayers(o).name)
    player(NumClients).RealName = StatusPlayers(o).name
    player(NumClients).ip = StatusPlayers(o).ip
    AddplayerLine NumClients
    Debug.Print "Added client from rcon status: " + Str$(player(NumClients).uid) + " (" + player(NumClients).name + ")"
    logfile "Client " & player(NumClients).name & " has entered the game"
    End If
Next
ReDim RemoveList(64) As Long

rp = 0
For i = 1 To NumClients
found = False
For o = 1 To numstatplayers
If player(i).uid = StatusPlayers(o).uid Then
    found = True
    Exit For
    End If
Next
If found = False Then rp = rp + 1: RemoveList(rp) = player(i).uid
Next

If rp > 0 Then
    For o = 1 To rp
        For i = 1 To NumClients
        If player(i).uid = RemoveList(o) Then
            For ktt = i To NumClients - 1
            player(ktt) = player(ktt + 1)
            ' playerlist.Row = ktt
            ' AddplayerLine ktt
            Next
            playerlist.RemoveItem i
            
            NumClients = NumClients - 1
            Exit For
            End If
        Next
    Next
    End If

Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select



End Sub

Public Function ServerVar$(a$)
c$ = servRconAns$(a$)
If c$ > "" Then
        b = InStr(c$, " is ")
        ServerVar$ = Mid$(c$, b + 5, Len(c$) - b - 7)
        Else
        ServerVar$ = ""
        End If
End Function

Public Sub UpdateInfo()
If DeveloperMode = False Then On Error GoTo errhand

status.Caption = "Retrieving public information (frags, players, etc)..."
status.refresh

S2$ = Mid$(PublicServer$("status"), 3)
If S2$ = "" And ServerOnline Then Exit Sub
If Right$(S2$, 1) = Chr$(10) And Quake2 = True Then ServInfo$ = S2$
If Right$(S2$, 1) = Chr$(0) And Quake2 = False Then ServInfo$ = S2$
info$ = ServInfo$
If Quake2 = False Then
    k = InStr(info$, Chr$(10))
    Else
    k = InStr(info$, Chr$(10))
    End If
' If InStr(info$, Chr$(10) + "avg response time:") Then info2$ = ""
    
   
Vers$ = removespaces$(Str$(App.Major)) + "." + removespaces$(Str$(App.Minor)) + "." + removespaces$(Str$(App.Revision))
'If InStr(info$, "QWADMIN\" + Vers$) Then
'    Else
'    If Quake2 = False Then
'        dummy$ = servRconAns$("serverinfo QWADMIN " + Vers$)
'        Else
'        dummy$ = servRconAns$("set QWADMIN " + Vers$ + " s")
'        End If
'    End If

    n = 1
    Do
    b = InStr(info$, "\")
    c = InStr(info$, Chr$(10))
        
    If c < b Then b = c
    If b Then
        serverinfo$(n) = Left$(info$, b - 1)
        info$ = Mid$(info$, b + 1)
        kc = InStr(info$, "\")
        kd = InStr(info$, Chr$(10))
        If kc <= 0 Then kc = Len(info$) - 1
        If kc > kd Then kc = kd
        serverinfovalue$(n) = Mid$(info$, 1, kc - 1)
        info$ = Mid$(info$, kc + 1)
        n = n + 1
        End If
    Loop Until b <= 0
    NumInfo = n

If Quake2 Then
    ktmp = findinserver$("version")
    enableGraph.Value = 0
    enableGraph.Enabled = False
    Label9.Visible = False
    Label10.Visible = False
    Label11.Visible = False
    packets.Visible = False
    restime.Visible = False
    state.Visible = False
    state2.Visible = False
    
    Else
    ktmp = findinserver$("*version")
    End If

If ktmp > "" Then
    ktp = Val(ktmp)
    qwversion.text = ktmp
    End If

If k > 1 Then
    info2$ = Mid$(ServInfo$, k + 1)
    If Quake2 Then
        UpdateFrags2 info2$
        Else
        UpdateFrags info2$
        End If
    End If

status.Caption = "ONLINE"
status.refresh
    
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
    
   
End Sub

Public Static Sub SmallUpdatePlayers()
' Timer1.Enabled = False
Timer3.Enabled = False
If DeveloperMode = False Then On Error GoTo errhand

    
    playerlist.Enabled = False
    
            playerlist.Rows = NumClients + 1
            For o = 1 To NumClients
                playerlist.TextMatrix(o, 3) = player(o).ping
                If player(o).spectator = True Then
                    If playerlist.TextMatrix(o, 1) <> "--" Then
                        playerlist.TextMatrix(o, 1) = "--"
                        playerlist.TextMatrix(o, 3) = "--"
                        playerlist.TextMatrix(o, 4) = "--"
                        playerlist.TextMatrix(o, 5) = "--"
                        playerlist.TextMatrix(o, 6) = "--"
                        playerlist.TextMatrix(o, 7) = "--"
                        playerlist.ForeColor = RGB(0, 255, 0)
                        playerlist.TextMatrix(o, 11) = "(spec)"
                        playerlist.ForeColor = RGB(0, 0, 0)
                        End If
                    Else
                    playerlist.ForeColor = RGB(0, 0, 255)
                    playerlist.TextMatrix(o, 11) = "(" + Mid$(Str$(player(o).rate), 2) + ")"
                    playerlist.ForeColor = RGB(0, 0, 0)
                    
                    playerlist.TextMatrix(o, 1) = player(o).team
                    playerlist.TextMatrix(o, 2) = player(o).name
                    playerlist.TextMatrix(o, 4) = player(o).frags
                    playerlist.TextMatrix(o, 5) = player(o).mins
                
                If tfset.Tag = "TF" Then
                        playerlist.TextMatrix(o, 6) = Class$(player(o).tfclass) + "(" + Mid$(Str$(player(o).tfclass), 2) + ")"
                    Else
                        playerlist.TextMatrix(o, 6) = player(o).skin
                    End If
                End If
                If player(o).spectator = False Then
                    playerlist.TextMatrix(o, 7) = removespaces$(Str$(player(o).bottomcolor)) + "/" + removespaces$(Str$(player(o).topcolor))
                    End If
                Next
    playerlist.Enabled = True
    
Timer3.Enabled = True

' Timer1.Enabled = True
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
        
End Sub

Public Sub AddplayerLine(Numplayer)
If Numplayer < 1 Then playerlist.RowSel = 0: Exit Sub
If playerlist.Cols < 8 Then CreatePlayerListTOP
If DeveloperMode = False Then On Error GoTo errhand

o = Numplayer
'playerlist.Col = 0
playerlist.CellForeColor = RGB(60, 60, 0)
playerlist.TextMatrix(o, 0) = player(o).uid
'playerlist.text = Str$(player(o).uid)
'playerlist.Col = 1
If player(o).spectator = False Then
    playerlist.TextMatrix(o, 1) = player(o).team
    Else
    playerlist.TextMatrix(o, 1) = "---"
    End If
'playerlist.Col = 2
'playerlist.text = player(o).name
playerlist.TextMatrix(o, 2) = player(o).name
'playerlist.Col = 3
'playerlist.CellForeColor = RGB(0, 80, 0)
playerlist.TextMatrix(o, 3) = player(o).ping
'playerlist.text = Str$(player(o).ping)
playerlist.Col = 5
If playerlist.text <> Str$(player(o).mins) Then
    playerlist.text = Str$(player(o).mins)
    End If
    
If player(o).spectator = False Then
    playerlist.TextMatrix(playerlist.Row, 4) = Str$(player(o).frags)
    playerlist.Col = 7
    If tfset.Tag = "TF" Then
        playerlist.text = Class$(player(o).tfclass) + "(" + Str$(player(o).tfclass) + ")"
        Else
        playerlist.text = player(o).skin
        End If
    playerlist.Col = 7
    playerlist.text = removespaces$(Str$(player(o).bottomcolor)) + "/" + removespaces$(Str$(player(o).topcolor))
    Else
    playerlist.TextMatrix(playerlist.Row, 5) = "--"
    playerlist.TextMatrix(playerlist.Row, 6) = "--"
    playerlist.TextMatrix(playerlist.Row, 7) = "--"
    End If

playerlist.Col = 8
playerlist.CellForeColor = RGB(0, 63, 255)
playerlist.TextMatrix(o, 8) = player(o).ip
' playerlist.CellForeColor = RGB(0, 0, 0)
'playerlist.TextMatrix(9, playerlist.Col) = "..."
'playerlist.TextMatrix(10, playerlist.Col) = "..."
playerlist.Col = 11
If player(o).spectator = True Then
    playerlist.CellForeColor = RGB(0, 100, 0)
    KKk$ = "(Spec)"
    Else
    playerlist.CellForeColor = RGB(0, 100, 250)
    KKk$ = "(" + Mid$(Str$(player(o).rate), 2) + ")"
    ' kkk$ = "(Player)"
    End If
playerlist.text = KKk$
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
    
End Sub
Public Function subst$(text$, a$, b$)
If a$ = "" Then Exit Function
t$ = text$
ls = 1
Do
ff = False
k = InStr(ls, t$, a$)
If k > 0 Then
    t$ = Left$(t$, k - 1) + b$ + Mid$(t$, k + Len(a$))
    ls = k + Len(b$)
    ff = True
    End If
Loop Until ff = False Or k = 0
subst$ = t$
End Function

Public Function NumFrags()
NumFrags = 0
For o = 1 To NumClients
NumFrags = NumFrags + player(o).frags
Next
End Function

Public Sub UpdateFrags(info2$)
If ServerOnline = False Then Exit Sub
If playerlist.Enabled = False Then Exit Sub
If DeveloperMode = False Then On Error GoTo errhand

Timer3.Enabled = False
k = RealNumPlayerinServer(info2$)
c = NumClients

If c > k Then k = c
ReDim playertmp(64) As userid
ReDim founduser(64) As Boolean
ReDim dontupdate(64) As Boolean

o = 0
For t = 1 To k
frags = 0
ping = 0
mins = 0
skin$ = ""
pname$ = ""
topcolor = 0
bot = 0
uid = 0
GetPlayerInfo t, uid, frags, ping, mins, skin$, pname$, topcolor, bot
If uid > 0 Then
    o = o + 1
    playertmp(o).uid = uid
    playertmp(o).frags = frags
    playertmp(o).ping = ping
    playertmp(o).mins = mins
    playertmp(o).skin = skin$
    playertmp(o).RealName = pname$
    playertmp(o).topcolor = topcolor
    playertmp(o).bottomcolor = bot
    playertmp(o).name = Quake2ASC$(pname$)
    End If
Next
k = o
For o = 1 To k
    For i = 1 To NumClients
'    If player(i).spectator = True Then founduser(i) = True: Exit For
    
    If player(i).uid = playertmp(o).uid Then
        founduser(i) = True
        player(i).frags = playertmp(o).frags
        player(i).ping = playertmp(o).ping
        player(i).mins = playertmp(o).mins
        player(i).skin = playertmp(o).skin
        player(i).RealName = playertmp(o).RealName
        player(i).name = Quake2ASC$(playertmp(o).RealName)
        player(i).topcolor = playertmp(o).topcolor
        player(i).bottomcolor = playertmp(o).bottomcolor
        player(i).pmodel = Val(FindInPLayer$("pmodel", i))
        player(i).emodel = Val(FindInPLayer$("emodel", i))
        CheckModels i
        player(i).team = removespaces$(FindInPLayer$("team", i))
        If player(i).ping < 999 Then
            player(i).avgping = (player(i).avgping * player(i).numpings + player(i).ping) / (player(i).numpings + 1)
            player(i).numpings = player(i).numpings + 1
            End If
        If tfset.Tag = "TF" Then player(i).tfclass = ClassFromSkin(player(i).skin)
        If player(i).ip = "" Then
            UserRconInfo player(i).uid, ip$, drop1, drop2
            If ip$ = "" Then UpdateStatus: UserRconInfo player(i).uid, ip$, drop1, drop2
            player(i).ip = ip$
            player(i).drop = drop1 * drop2
            playerlist.TextMatrix(i, 8) = ip$
            If mnuCheatCheckonConnect.Checked Then
                    CheckModels i
                    End If
            End If
        kttmp = player(i).lasthist
        If kttmp = 100 Then k = 0: player(i).lasthist = 0
        player(i).fraghist(kttmp) = player(i).frags
        player(i).pinghist(kttmp) = player(i).ping
        player(i).classhist(kttmp) = player(i).tfclass
        player(i).minutehist(kttmp) = player(i).mins
        player(i).drophist(kttmp) = player(i).drop
        If player(i).frags > player(i).maxfrags Then player(i).maxfrags = player(i).frags
        If player(i).ping > player(i).maxping And player(i).ping < 999 Then player(i).maxping = player(i).ping
        If player(i).drop > player(i).maxdrop Then player(i).maxdrop = player(i).drop
        If Timer - player(i).lastsetuser > 180 Then
            UpdateUserInfo i
            End If
        If player(i).pmodel = 0 Then
            UpdateUserInfo i
            If mnuCheatCheckonConnect.Checked Then
                    CheckModels i
                    End If
            End If
        player(i).lasthist = player(i).lasthist + 1
        
        Exit For
        End If
    Next
    
Next

Timer3.Enabled = True
Exit Sub

NC = NumClients
For i = 1 To NC
kktmpp = playertmp(i).name

If founduser(i) = False And player(i).spectator = False Then
    'user (i) has quitted game
    leftgame$ = player(i).name
    playerlist.RemoveItem i
    
    
    For pk = i To NumClients - 1
    player(pk) = player(pk + 1)
    founduser(pk) = founduser(pk + 1)
    'For j = 0 To playerlist.Cols - 1
    '    playerlist.TextMatrix(pk, j) = playerlist.TextMatrix(pk + 1, j)
    'Next
    Next
    NumClients = NumClients - 1
    playerlist.Rows = NumClients + 1
    NC = NC - 1
    End If
Next

Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
    

End Sub

Public Sub CreatePlayerListTOP()
playerlist.Cols = 12
playerlist.Row = 0
playerlist.ColWidth(0) = 500
playerlist.Col = 0
playerlist.text = "UID"
playerlist.ColAlignment(0) = 0
playerlist.Col = 1
playerlist.ColWidth(1) = 550
playerlist.text = "Team"
playerlist.Col = 2
playerlist.ColWidth(2) = 1650
playerlist.text = "Name"
playerlist.ColAlignment(2) = 0
playerlist.Col = 3
playerlist.ColWidth(3) = 500
playerlist.text = "Ping"
playerlist.ColAlignment(3) = 1
playerlist.Col = 4
playerlist.ColWidth(4) = 550
playerlist.text = "Frags"
playerlist.ColAlignment(4) = 1
playerlist.Col = 5
playerlist.ColWidth(5) = 500
playerlist.text = "Mins"
playerlist.ColAlignment(5) = 1
playerlist.Col = 6
playerlist.ColWidth(6) = 1000
If tfset.Tag = "TF" Then
    playerlist.text = "Class"
    Else
    playerlist.text = "Skin"
    End If
playerlist.ColAlignment(6) = 0
playerlist.Col = 7
playerlist.ColWidth(7) = 600
playerlist.text = "Color"
playerlist.ColAlignment(7) = 1
playerlist.Col = 8
playerlist.ColWidth(8) = 1400
playerlist.CellForeColor = RGB(0, 63, 255)
playerlist.text = "IP"
playerlist.ColAlignment(8) = 2
playerlist.Col = 9
playerlist.ColWidth(9) = 650
playerlist.text = "Models"
playerlist.Col = 10
playerlist.text = "Proxy"
playerlist.ColWidth(10) = 750
playerlist.Col = 11
playerlist.text = "Rate"
playerlist.ColWidth(11) = 750

End Sub

Public Function RealNumPlayerinServer(a$)
    p$ = a$
    kp = 0
    Do
    KKk = InStr(a$, Chr$(10))
    If p$ = Chr$(10) Then Exit Do
    If Len(p$) < 5 Then Exit Do
    If KKk = 0 Then Exit Do
    p$ = Mid$(p$, KKk + 1)
    kp = kp + 1
    Loop Until p$ = ""
    RealNumPlayerinServer = kp
End Function

Public Sub GetPlayerInfo(playernum, uid, frags, ping, mins, skin$, pname$, topcolor, bottomcolor)
s$ = ServInfo$
k = InStr(s$, Chr$(10))
If k Then
    s$ = Mid$(s$, k + 1)
    Else
    Exit Sub
    End If
k = 1
Do

If playernum = k Then Exit Do
tt = InStr(s$, Chr$(10))
If tt = 0 Then uid = 0: Exit Sub
If tt Then s$ = Mid$(s$, tt + 1)
k = k + 1
Loop

If Left$(s$, 1) = Chr$(0) Then
    uid = 0
    Exit Sub
    End If
    
tt = InStr(s$, Chr$(10))
If tt <= 0 Then Exit Sub
s$ = Left$(s$, tt - 1)

uid = SpaceVal(s$)
tt = InStr(s$, " ")
If tt <= 0 Then Exit Sub
s$ = removespaces$(Mid$(s$, tt))
frags = SpaceVal(s$)
tt = InStr(s$, " ")
If tt <= 0 Then Exit Sub
s$ = removespaces$(Mid$(s$, tt))
mins = SpaceVal(s$)
tt = InStr(s$, " ")
If tt <= 0 Then Exit Sub
s$ = removespaces$(Mid$(s$, tt))
ping = SpaceVal(s$)
tt = InStr(s$, " ")
If tt <= 0 Then Exit Sub
s$ = removespaces$(Mid$(s$, tt))

t = InStr(3, s$, Chr$(34)) - 2
If t <= 0 Then Exit Sub
pname$ = Mid$(s$, 2, t)
s$ = removespaces$(Mid$(s$, t + 3))

t = InStr(3, s$, Chr$(34)) - 2
If t <= 0 Then Exit Sub
skin$ = Mid$(s$, 2, t)
s$ = removespaces$(Mid$(s$, t + 3))

topcolor = SpaceVal(s$)
s$ = removespaces$(Mid$(s$, InStr(s$, " ")))
bottomcolor = SpaceVal(s$)
End Sub

Private Function SpaceVal(ByVal a$)
a$ = removespaces$(a$)
k = InStr(a$ + " ", " ")
t$ = Left$(a$, k)
SpaceVal = Val(t$)
'a$ = Mid$(a$, k + 1)
End Function

Private Function Quake2ASC$(a$)
n$ = ""
For o = 1 To Len(a$)
k = Asc(Mid$(a$, o, 1))
kr = 32
Select Case k
    Case 32
    Case 144, 157, 16
        kr = Asc("[")
    Case 145, 159, 17
        kr = Asc("]")
    Case 18 To 28
        kr = Asc(Asc(Chr$(0)) + k - 18)
    Case Is < 32
        kr = 32
    Case 145 To 156
        kr = Asc(Asc(Chr$(0)) + k - 146)
    Case 193 To 247
        kr = k - 128
    Case 60 To 122
        kr = k
    Case 143
        kr = Asc(".")
    Case 133
        kr = 183
    Case 48 To 58
        kr = Asc(Asc(Chr$(0)) + k - 48)
    Case Else
    End Select
n$ = n$ + Chr$(kr)
Next
Quake2ASC$ = n$

End Function

Private Function ClassFromSkin(a$)
Select Case a$
        Case "tf_scout"
            ClassFromSkin = 1
        Case "tf_snipe"
            ClassFromSkin = 2
        Case "tf_sold"
            ClassFromSkin = 3
        Case "tf_demo"
            ClassFromSkin = 4
        Case "tf_medic"
            ClassFromSkin = 5
        Case "tf_hwguy"
            ClassFromSkin = 6
        Case "tf_pyro"
            ClassFromSkin = 7
        Case "tf_spy"
            ClassFromSkin = 8
        Case "tf_eng"
            ClassFromSkin = 9
        Case Else
            ClassFromSkin = 0
        End Select
    
End Function

Public Sub UserRconInfo(n, ip$, drop1, drop2)
a$ = Servstatus$
If a$ = "" Then Exit Sub
Do
k = InStr(a$, Chr$(10))
If k = 0 Then Exit Sub
a$ = Mid$(a$, k + 1)
k2 = InStr(a$, Chr$(10))
If k2 = 0 Then Exit Sub
p$ = Left$(a$, k2 - 1)
Loop Until InStr(p$, "-----")

a$ = Mid$(a$, k2 + 1)
Do
nn$ = Left$(a$, 16)
a$ = removespaces$(Mid$(a$, 17))
t = InStr(a$, " ")
If t = 0 Then Exit Sub
U = Val(Left$(a$, t))
t2 = InStr(a$, Chr$(10)) + 1
t3 = InStr(t2, a$, Chr$(10)) + 1
i$ = removespaces$(Mid$(a$, t2, t3 - t2))
a$ = Mid$(a$, t3)
    
If U = n Then
    t = InStr(i$, " ")
    Let ip$ = Left$(i$, t - 1)
    i$ = removespaces$(Mid$(i$, t + 1))
    t = InStr(i$, " ")
    ping = Val(Left$(i$, t))
    i$ = removespaces$(Mid$(i$, t + 1))
    t = InStr(i$, " ")
    Let drop1 = Val(Left$(i$, t))
    i$ = removespaces$(Mid$(i$, t + 1))
    t = InStr(i$, " ")
    t2 = InStr(i$, Chr$(10))
    If t2 > t Then t = t2
    Let drop2 = Val(Left$(i$, t))
    i$ = removespaces$(Mid$(i$, t + 1))
    Exit Sub
    End If
If Left$(a$, 1) = Chr$(10) Then Exit Do

Loop
End Sub

Public Sub UpdateUserInfo(i)
If player(i).uid > 0 Then
    player(i).lastsetuser = Timer
    dummy$ = servRconAns$("user " + Str$(player(i).uid))
    p = 0
    Do
    tmp = InStr(dummy$, Chr$(10))
    If tmp = 0 Then Exit Do
    p = p + 1
    player(i).setinfo(p) = Left$(dummy$, tmp - 1)
    dummy$ = Mid$(dummy$, tmp + 1)
    Loop
    player(i).team = removespaces$(FindInPLayer$("team", i))
    j$ = FindInPLayer$("rate", i)
    CheckRate i, j$
    If Val(j$) > Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000")) Then status.Caption = "Player " + player(i).name + " is using a laggy rate of " + j$: j$ = Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000"))
    player(i).rate = Val(removespaces$(j$))
    player(i).skin = removespaces$(FindInPLayer$("skin", i))
    player(i).pmodel = Val(FindInPLayer$("pmodel", i))
    player(i).emodel = Val(FindInPLayer$("emodel", i))
    CheckModels i
    'k$ = FindInPLayer$("*spectator", i)
    'If k$ = "" Or k$ = "0" Then Else k$ = "1"
    'player(i).spectator = Val(k$)
    player(nn).team = removespaces$(FindInPLayer$("team", i))
    If tfset.Tag = "TF" Then player(i).tfclass = ClassFromSkin(player(i).skin)
    End If

End Sub


Public Function localvalue$(a1$, a2$)
t1$ = findinserver$(a1$)
t2$ = findinserver$(a2$)
If t1$ = "" Then t1$ = t2$
If t1$ > "" Then
    If LCase$(t1$) = "on" Then t1$ = "1"
    If LCase$(t1$) = "off" Then t1$ = "0"
    localvalue$ = t1$
    Exit Function
    End If

For o = 1 To NumLocals
If LCase$(Left$(serverlocalinfo$(o), Len(a1$) + 1)) = LCase$(a1$ + " ") Then
    a$ = removespaces$(Mid$(serverlocalinfo$(o), Len(a1$) + 1))
    Exit For
    End If
If LCase$(Left$(serverlocalinfo$(o), Len(a2$) + 1)) = LCase$(a2$ + " ") And a2$ > "" Then
    a$ = removespaces$(Mid$(serverlocalinfo$(o), Len(a2$) + 1))
    Exit For
    End If
Next
If LCase$(a$ = "on") Then localvalue$ = "1" Else localvalue$ = a$
End Function


Public Sub connected()
If DeveloperMode = False Then On Error GoTo errhand

With Main
    .TrayConsole.Enabled = True
    .TraySettings.Enabled = True
    .TrayTFSettings.Enabled = True
End With
Connect.Default = False

Label14.Enabled = True
timerdesc.Enabled = True
Label15.Enabled = True
Main.gamedir.Enabled = True
Main.map.Enabled = True
hostname.Enabled = True
hostname.DataChanged = False
gamedir.DataChanged = False

mnuminping.Enabled = True
mnuping.Enabled = True
mnuminping.Enabled = True

mnuTFOptions.Enabled = True
mnuShutDown.Enabled = True
inf.Visible = True
status.ForeColor = RGB(0, 100, 255)
Develop.Enabled = True
mnuAddList.Enabled = True
enableGraph.Enabled = True
clientgamedir.Enabled = True
Main.mnucheatcheck.Enabled = True
Main.mnuCheatCheckonConnect.Enabled = True
Main.mnuConnect.Enabled = True
Main.mnuDisconnect.Enabled = True
Main.mnuExport.Enabled = True
Main.mnuImport.Enabled = True
Main.mnuGraphOptions.Enabled = True
Main.mnuWizard.Enabled = True
Main.mnuIPBan.Enabled = True
Main.mnukick.Enabled = True
Main.mnuKickandBanLIST.Enabled = True
Main.mnuLegend.Enabled = True
Main.mnuMessages.Enabled = True
Main.mnuModelscheck.Enabled = True
Main.mnuNotify.Enabled = True
Main.mnuPlayerinfo.Enabled = True
Main.mnuProxyCheck.Enabled = True
Main.mnuRConsole.Enabled = True
Main.mnuRefreshlist.Enabled = True
Main.mnuSettings.Enabled = True
Main.mnuShowGraph.Enabled = True
Main.mnuShowPlayerlist.Enabled = True
UpdateGraph -2, 0, 0, 0, 0, 0, 0
serverconnected = True
'restime.Enabled = True
'packets.Enabled = True
serverip.Enabled = False
serverport.Enabled = False
Connect.Caption = "Reconnect..."
Disconnect.Enabled = True
settings.Enabled = True
'tfset.Enabled = True
rcon.Enabled = False
state.BackColor = RGB(192, 192, 192)
state.Caption = ""
state2.BackColor = RGB(192, 192, 192)
state2.Enabled = True
interval.Enabled = True
ServerOnline = True


If PRO Then
    
    mnuCustomImport.Enabled = True
    mnuMapRotation.Enabled = True

End If

    t$ = GetSetting("QWAdmin", "MODS", "Listed mods", "")
    gamedir.Clear
    map.Clear
    Do
    k = InStr(t$, ",")
    If t$ > "" And k = 0 Then k = Len(t$) + 1
    If k = 0 Then Exit Do
    a$ = subst$(Left$(t$, k - 1), ",", "")
    If a$ > "" Then gamedir.AddItem Left$(a$, k - 1)
    t$ = Mid$(t$, k + 1)
    Loop
    gamedir.DataChanged = False
    map.DataChanged = False
        

Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select

End Sub

Public Sub ShowTFSettings()
RefreshLocal

'TF SETTINGS
TFSettings.oldgrens.Value = Val(localvalue$("og", "oldgrens"))
TFSettings.warstandard.Value = Val(localvalue$("ws", "use_standard"))
TFSettings.pmtime.text = localvalue$("pm", "prematch")
TFSettings.clan.Value = 0
TFSettings.clan.Value = 1
TFSettings.clan.Value = Val(localvalue$("c", "clan"))
TFSettings.teamfrag.Value = Val(localvalue$("t", "teamfrags"))
TFSettings.spyinvis.Value = Val(localvalue$("s", "spyinvis"))
k = Val(localvalue$("lg", "locked_game"))
'If k = 0 Then k = 1 Else k = 0
TFSettings.joiningame.Value = k
TFSettings.birthday.Value = Val(localvalue$("bd", "birthday"))
TFSettings.keysforflags.Value = Val(localvalue$("fe", "flag_emu"))
tt$ = findinserver$("rj")
If tt$ = "" Then tt$ = "1"
TFSettings.rj.text = Val(tt)
TFSettings.cmessages.Value = Val(localvalue$("clanmsgs", ""))

c$ = localvalue$("g", "grapple")
If c$ = "" Then c$ = "1"
TFSettings.grapple.Value = Val(c$)

c$ = localvalue$("a", "autoteam")
TFSettings.autoteam.text = c$
TFSettings.autoteamcheck.Value = Abs(Sgn(Val(c$)))

c$ = localvalue$("a", "autoteam")
TFSettings.autoteamcheck.Value = Abs(Sgn(Val(c$)))
If c$ = "1" Then c$ = "auto": TFSettings.autoteam.text = c$

c$ = localvalue$("akt", "autokicktime")
d$ = localvalue$("akk", "autokickkills")
TFSettings.fragsallowed.text = removespaces$(Str$(Val(d$)))
TFSettings.kicktime.text = removespaces$(Str$(Val(c$)))

TFSettings.RespawnDelay.text = localvalue$("rd", "respawn_delay")

TFSettings.fullteamscore.Value = Val(localvalue$("fts", "fullteamscore"))

TFSettings.adminpwd.text = localvalue$("adminpwd", "apw")
t1$ = localvalue$("t1", "team1")
t2$ = localvalue$("t2", "team2")
t3$ = localvalue$("t3", "team3")
t4$ = localvalue$("t4", "team4")
If t1$ = "" Then t1$ = "blue"
If t2$ = "" Then t2$ = "red"
If t3$ = "" Then t3$ = "gren"
If t4$ = "" Then t4$ = "yell"
TFSettings.team1.text = t1$
TFSettings.team2.text = t2$
TFSettings.team3.text = t3$
TFSettings.team4.text = t4$


' CLASS LIMITATION
ClassLim(1) = Val(localvalue$("cr_scout", "cr_sc"))
ClassLim(2) = Val(localvalue$("cr_sniper", "cr_sn"))
ClassLim(3) = Val(localvalue$("cr_soldier", "cr_so"))
ClassLim(4) = Val(localvalue$("cr_demoman", "cr_de"))
ClassLim(5) = Val(localvalue$("cr_medic", "cr_me"))
ClassLim(6) = Val(localvalue$("cr_hwguy", "cr_hw"))
ClassLim(7) = Val(localvalue$("cr_pyro", "cr_py"))
ClassLim(8) = Val(localvalue$("cr_spy", "cr_sp"))
ClassLim(9) = Val(localvalue$("cr_engineer", "cr_en"))
ClassLim(10) = Val(localvalue$("cr_random", "cr_ra"))
tt = False
If ClassLim(1) <> 0 Then TFSettings.Check1.Value = 1: tt = True Else TFSettings.Check1.Value = 0
If ClassLim(2) <> 0 Then TFSettings.Check2.Value = 1: tt = True Else TFSettings.Check2.Value = 0
If ClassLim(3) <> 0 Then TFSettings.Check3.Value = 1: tt = True Else TFSettings.Check3.Value = 0
If ClassLim(4) <> 0 Then TFSettings.Check4.Value = 1: tt = True Else TFSettings.Check4.Value = 0
If ClassLim(5) <> 0 Then TFSettings.Check5.Value = 1: tt = True Else TFSettings.Check5.Value = 0
If ClassLim(6) <> 0 Then TFSettings.Check6.Value = 1: tt = True Else TFSettings.Check6.Value = 0
If ClassLim(7) <> 0 Then TFSettings.Check7.Value = 1: tt = True Else TFSettings.Check7.Value = 0
If ClassLim(8) <> 0 Then TFSettings.Check8.Value = 1: tt = True Else TFSettings.Check8.Value = 0
If ClassLim(9) <> 0 Then TFSettings.Check9.Value = 1: tt = True Else TFSettings.Check9.Value = 0
If ClassLim(10) <> 0 Then TFSettings.Check10.Value = 1: tt = True Else TFSettings.Check10.Value = 0
If tt = True Then TFSettings.classlimit.Value = 1 Else TFSettings.classlimit.Value = 0
TFSettings.nscouts.text = Str$(ClassLim(1))
TFSettings.nsnipers.text = Str$(ClassLim(2))
TFSettings.nsoldiers.text = Str$(ClassLim(3))
TFSettings.ndemos.text = Str$(ClassLim(4))
TFSettings.nmedics.text = Str$(ClassLim(5))
TFSettings.nhwguys.text = Str$(ClassLim(6))
TFSettings.npyros.text = Str$(ClassLim(7))
TFSettings.nspys.text = Str$(ClassLim(8))
TFSettings.nengineers.text = Str$(ClassLim(9))
TFSettings.nrandom.text = Str$(ClassLim(10))
tt = False

For o = 0 To 6
Select Case o
    Case 0
        ng = Val(localvalue$("flairgren", ""))
    Case 1
        ng = Val(localvalue$("flashgren", ""))
    Case 2
        ng = Val(localvalue$("gasgren", ""))
    Case 3
        ng = Val(localvalue$("mirvgren", ""))
    Case 4
        ng = Val(localvalue$("nailgren", ""))
    Case 5
        ng = Val(localvalue$("napalmgren", ""))
    Case 6
        ng = Val(localvalue$("reggren", ""))
    End Select
If ng <> 0 Then
    TFSettings.Check11(o).Value = 1
    tt = True
    Else
    TFSettings.Check11(o).Value = 0
    End If
TFSettings.ngrens11(o).Tag = ng
TFSettings.ngrens11(o).text = Str$(ng)
Next
If tt = True Then
    If PRO = True Then
        TFSettings.grenlimit.Value = 1
        TFSettings.grenlimit.Enabled = True
        Else
        TFSettings.grenlimit.Enabled = False
        TFSettings.grenlimit.Value = 0
        For o = 0 To 6
        TFSettings.Check11(o).Enabled = False
        Next
        End If
    Else
    TFSettings.grenlimit.Value = 0
    End If

tp = Val(findinserver$("teamplay"))
TFSettings.tp1.Value = Abs(Sgn(tp And 1))
TFSettings.tp2.Value = Abs(Sgn(tp And 2))
TFSettings.tp4.Value = Abs(Sgn(tp And 4))
TFSettings.tp8.Value = Abs(Sgn(tp And 8))
TFSettings.tp16.Value = Abs(Sgn(tp And 16))
TFSettings.tp32.Value = Abs(Sgn(tp And 32))
TFSettings.tp64.Value = Abs(Sgn(tp And 64))
TFSettings.tp128.Value = Abs(Sgn(tp And 128))
TFSettings.tp256.Value = Abs(Sgn(tp And 256))
TFSettings.tp512.Value = Abs(Sgn(tp And 512))
TFSettings.tp1024.Value = Abs(Sgn(tp And 1024))
TFSettings.tp2048.Value = Abs(Sgn(tp And 2048))
TFSettings.tp4096.Value = Abs(Sgn(tp And 4096))
TFSettings.tp8192.Value = Abs(Sgn(tp And 8192))
TFSettings.tp16384.Value = Abs(Sgn(tp And 16384))


For t = 1 To 4
ttp$ = Mid$(Str$(t), 2)
For CC = 1 To 9
Select Case CC
    Case 1
        cl$ = "scout"
    Case 2
        cl$ = "sniper"
    Case 3
        cl$ = "soldier"
    Case 4
        cl$ = "demoman"
    Case 5
        cl$ = "medic"
    Case 6
        cl$ = "hwguy"
    Case 7
        cl$ = "pyro"
    Case 8
        cl$ = "spy"
    Case 9
        cl$ = "engineer"
    End Select
a$ = "sk_t" + ttp$ + "_" + cl$
sk$ = ""
sk$ = localvalue$(a$, "")
With TFSettings
    .skins(ppp).text = sk$
    .skins(ppp).Enabled = PRO
End With
ppp = ppp + 1
Next
Next

 'Team 1 Skins              Team 2 Skins
 'sk_t1_scout sk_t2_scout
 'sk_t1_sniper sk_t2_sniper
 'sk_t1_soldier sk_t2_soldier
 'sk_t1_demoman sk_t2_demoman
 'sk_t1_medic sk_t2_medic
 'sk_t1_hwguy sk_t2_hwguy
 'sk_t1_pyro sk_t2_pyro
 'sk_t1_spy sk_t2_spy
 'sk_t1_engineer sk_t2_engineer
        
'team 3 Skins              Team 4 Skins
'sk_t3_scout sk_t4_scout
'sk_t3_sniper sk_t4_sniper
'sk_t3_soldier sk_t4_soldier
'sk_t3_demoman sk_t4_demoman
'sk_t3_medic sk_t4_medic
'sk_t3_hwguy sk_t4_hwguy
'sk_t3_pyro sk_t4_pyro
'sk_t3_spy sk_t4_spy
'sk_t3_engineer sk_t4_engineer





TFSettings.Visible = True
TFSettings.SetFocus


End Sub

Public Sub PlayerModelCheck(KKk, Optional ByRef FailedEyes As Boolean, Optional ByRef FailedPlayer As Boolean, Optional ByRef glow As Boolean)
If NumClients = 0 Then Exit Sub
If playerlist.Cols < 9 Then Exit Sub

playerlist.Col = 9
If KKk < 1 Then o1 = 1: o2 = NumClients Else o1 = KKk: o2 = KKk

For o = o1 To o2
failedcheck = 0
If playerlist.Rows <= o Then Exit For
playerlist.Row = o
        
CC = (50 / NumClients)
Select Case player(o).pmodel
    Case 13845, 39460, 20572, 33168, 58759
        failedcheck = 0
    Case 43672
        If tfset.Tag = "TF" Then failedcheck = failedcheck Or 4 ' CONFIRMED GLOW PACK
        FailedPlayer = True
        glow = True
    Case 0
    Case Else
        failedcheck = failedcheck Or 2
        FailedPlayer = True
        glow = False
    End Select
OTherP = GetSetting("QWAdmin", "Settings", "Allowed PMODELS", "")
Do
k = InStr(OTherP, ",")
If k <= 0 Then Exit Do
v = Val(subst$(Left$(OTherP, k - 1), ",", ""))
OTherP = Mid$(OTherP, k + 1)
If player(o).pmodel = v Then failedcheck = 0: FailedPlayer = False: Exit Do
Loop

If player(o).emodel > 0 And player(o).emodel <> 6967 Then failedcheck = failedcheck Or 1: FailedEyes = True

If failedcheck <> 0 Then
    If (failedcheck And 1) And player(o).emodel > 2 Then
        playerlist.CellForeColor = RGB(128, 0, 0)
        playerlist.TextMatrix(o, 9) = "Fail: E"
        If Main.Develop.Value = 1 Then ServerMessage ("Warning! Player '" + player(o).name + "' has a hacked version of EYES.MDL")
        End If
    If failedcheck = 2 And gamedir.text <> "fortress" Then
        playerlist.CellForeColor = RGB(0, 0, 255)
        playerlist.TextMatrix(o, 9) = "Clear"
        End If
    
    If (failedcheck And 2) And player(o).pmodel > 2 And tfset.Tag = "TF" Then
        playerlist.CellForeColor = RGB(128, 0, 0)
        If playerlist.TextMatrix(o, 9) = "Fail: E" Then
            playerlist.TextMatrix(o, 9) = "Fail: BOTH"
            Else
            playerlist.TextMatrix(o, 9) = "Fail: P"
            End If
        If Main.Develop.Value = 1 Then ServerMessage ("Warning! Player '" + player(o).name + "' is using a non-standard PLAYER.MDL")
        End If
    If (failedcheck And 4) Then
        playerlist.CellForeColor = RGB(255, 0, 0)
        playerlist.TextMatrix(o, 9) = "GLOW"
        If Main.Develop.Value = 1 Then ServerMessage ("Warning! Player '" + player(o).name + "' is using GLOW pack.")
        End If
    Else
    playerlist.CellForeColor = RGB(0, 0, 255)
    playerlist.text = "Clear"
    End If
If player(o).emodel <= 1 Then
    playerlist.CellForeColor = RGB(0, 0, 0)
    playerlist.text = "N/A"
    End If
Next
End Sub

Public Sub PlayerProxyCheck()
On Error Resume Next
If NumClients = 0 Then Exit Sub

Command1.Enabled = False
Timer3.Enabled = False

Winsock2.Close
Dim checkport(20)

checkport(1) = 27500
checkport(2) = 27000
checkport(3) = 26000
checkport(4) = 26500
checkport(5) = 27501
nports = 5

If MsgBox("Do you want to check for proxys ?" + Chr$(13) + "This can take a while...", vbYesNo, "Question") = vbYes Then
    ' Main.Timer1.Enabled = False
    Main.Timer2.Enabled = False
    Main.Timer3.Enabled = False
    progress.Label.Caption = "Cheat checking..."
    progress.Label.refresh
    progress.perc.Value = 0
    progress.Visible = True
    progress.refresh
    progress.SetFocus
    
    For o = 1 To NumClients
    CC = (100 / NumClients)
    
    playerlist.Row = o
    failedcheck = 0
    
    For k = 1 To nports
    If player(o).proxychecked Then
        progress.Label.Caption = "Bypassing (" & player(o).name & ") - already checked"
        Exit For
        End If
    progress.Label.Caption = "Proxy checking:" + player(o).name + " (PASS " & k & ")"
    
    ' If Main.serverip.text = player(o).ip Or player(o).ip = "127.0.0.1" Then failedcheck = -1: Exit For
    
    progress.Label.refresh
    progress.perc.Value = Int(CC * (o - 1) + (CC / nports) * k - 1)
    
    Do
    Winsock2.Close
    Loop Until Winsock2.state = 0

    Winsock2.Protocol = sckUDPProtocol
    Winsock2.RemoteHost = player(o).ip
    Winsock2.RemotePort = checkport(k)
    
    Winsock2.Bind
    
    tout = Timer
    Do
    DoEvents
    Loop Until Timer - tout > 2 Or Winsock2.state > 0
    
    If Winsock2.state = 1 Then
        ProxyData$ = ""
        Winsock2.SendData String$(4, Chr$(255)) & Chr$(4) & "drop" & Chr$(0)
        DoEvents
        ' Winsock2.SendData String$(4, Chr$(255)) + "getchallenge" + Chr$(10)
        tout = Timer
        Do
        DoEvents
        Loop Until Timer - tout > 0.1
        Winsock2.SendData String$(4, Chr$(255)) + "status" + Chr$(10)
        tout = Timer
        a$ = ""
        Do
        a$ = ProxyData$
        DoEvents
        Select Case Asc(Right$(a$, 1))
            Case 0, 13, 10
                Exit Do
            End Select
        Loop Until Timer - tout > 1
        
        ProxyData$ = ""
'        Stop
        P_Port = checkport(k)
        P_IP = player(o).ip
        P_Data = a$
        
        If a$ > "" Then
            proxy$ = "Unknown"
            LegalProxy = False
            If InStr(a$, String$(4, Chr$(255)) & "c666") Then proxy$ = "Autoaim": LegalProxy = False
            If InStr(a$, "\hostname\Cheapo") Then proxy$ = "Cheapo": LegalProxy = True
            If InStr(a$, "\hostname\Qizmo") Then proxy$ = "Qizmo": LegalProxy = True
            
            If LegalProxy = False Then
                ServerMessage proxy$ & " proxy detected on player '" + player(o).RealName + "'(" + removespaces$(Str$(player(o).uid)) + ")"
                Else
                If Main.Develop.Value = 1 Then
                    ServerMessage ("Player '" + player(o).RealName + "' (" + removespaces$(Str$(player(o).uid)) + ") is using " + proxy$)
                    End If
                End If
            failedcheck = 1
            Exit For
            End If
        Winsock2.Close
        Else
        Winsock2.Close
        End If
    Winsock2.Close
    Next
    If player(o).proxychecked = True Then
        Else
    
        playerlist.Row = o
        playerlist.Col = 10
        
        Select Case failedcheck
            Case 1
                If LegalProxy Then
                    playerlist.CellForeColor = RGB(63, 0, 63)
                    Else
                    playerlist.CellForeColor = RGB(255, 0, 0)
                    End If
                playerlist.text = proxy$
            Case -1
                playerlist.CellForeColor = RGB(127, 0, 0)
                playerlist.text = "(server)"
            Case 0
                playerlist.CellForeColor = RGB(0, 0, 255)
                playerlist.text = "No"
            End Select
        player(o).proxychecked = True
        
        End If
    failedcheck = 0
    Next
    k = Timer
    ' Main.Timer1.Enabled = True
    Main.Timer2.Enabled = True
    Main.Timer3.Enabled = True
    progress.Label.Caption = "Shutting down proxy checking..."
    progress.Label.refresh
    
    progress.perc.Visible = False
    Do
    Winsock2.Close
    Loop Until Timer - k > 1
    progress.perc.Visible = True
    progress.Visible = False
    End If
playerlist.Enabled = True
playerlist.refresh
Command1.Enabled = True
Timer3.Enabled = True

End Sub

Public Sub BetaWarning()
message$ = ""
message$ = message$ + "Warning:" + Chr$(13)
message$ = message$ + "This is still a beta version of QWAdmin, and" + Chr$(13)
message$ = message$ + "some functions are not implemented yet." + Chr$(13)
message$ = message$ + "Please send your bug reports and ideas to qwadmin@planetquake.com" + Chr$(13)
message$ = message$ + "// Dr. Drain" + Chr$(13)
dummy = MsgBox(message$, vbOKOnly, "QWAdmin Beta Warning")
End Sub

Public Sub MatchWizard()
Load Wizard
Wizard.Visible = True
Wizard.SetFocus
End Sub

Public Function ShowError()
k = FreeFile
Open "qwabugs.log" For Append As #k
Print #k, date$ + " [" + Time$ + "]-------------------------"
msg = ""
a$ = "QWAdmin had an internal error."
Print #k, a$
msg = msg + a$ + Chr$(13)
a$ = "ERR:" + Str$(Err.Number) + " (" + Err.Description + ")"
msg = msg + a$ + Chr$(13)
Print #k, a$
a$ = Err.Source + " " + Str$(Err.LastDllError)
msg = msg + a$ + Chr$(13)
Close #k
dummy = MsgBox(msg, vbAbortRetryIgnore, "[QWA] Error" + Str$(Err.Number))
Select Case dummy
    Case vbAbort
        ShowError = 1
    Case vbRetry
        ShowError = 2
    Case vbIgnore
        ShowError = 3
    End Select
End Function

Public Sub ServerMessage(a$)
QWA$ = ".ê—◊¡ë ç "
If PRO = False Then
    servRconAns$ "say " + Chr$(34) + QWA$ + a$ + Chr$(34)
    Else
    k = GetSetting("QWAdmin", "Settings", "Server Name", QWA$)
    If k > "" Then k = k + ":"
    servRconAns$ "say " + Chr$(34) + k + a$ + Chr$(34)
    End If
End Sub


Public Function ValidateKey(KEY$, owner$, codekey)
t$ = "2"
kt$ = t$ + Mid$(Str$(Sqr(49)), 2) + "0" + Mid$(Str$(Sqr(81)), 2)
kt$ = kt$ + Mid$(Str$(3 * 2 * 3 + 1), 2) + Mid$(Str$(Sqr(49)), 2) + "6"
' So it's now 27091976

Unleashed = Abs(Int(((Cos(codekey / 65536) + Sin(codekey))) * 100)) + 1
Unleashed = Int(Val(kt) / Unleashed) Mod 128
Unleashed2 = Abs(Int(((Cos(codekey / 32768) + Sin(codekey))) * 10)) + 1
Unleashed2 = Int(Val(kt) / Unleashed2) Mod 128
o = 0

For i = 1 To 60
o = o + 1
If o > Len(owner$) Then o = 1
tt = (Asc(Mid$(owner$, o, 1)) * Int(Unleashed + Abs(10 * Cos(i / o)))) Mod 80 + 33
tt2 = (Asc(Mid$(owner$, o, 1)) * Int(Unleashed2 + Abs(100 * Cos(i / o)))) Mod 80 + 33
If tt < 32 Then tt = Asc("%")
If tt2 < 32 Then tt2 = Asc("%")
kkey$ = kkey$ + Chr$(tt)
kkey2$ = kkey2$ + Chr$(tt2)
Next

If kkey$ <> KEY$ And kkey2$ <> KEY$ Then
    ValidateKey = False
    dummy = MsgBox("Wrong key, name or key code." + Chr$(13) + "QWAdmin won't run", vbOKOnly, "REGISTRATION FAILED")
'    Unload Me
    Quit
    Else
    
    If KEY$ = kkey$ Then PRO = True: ValidateKey = True: Exit Function
    If kkey2$ = KEY$ Then
        TrialKey = True
        Dim KNew As Date
        Dim LD As Date
        dd$ = Left$(Right$(owner$, 11), 10)
        KNew = dd$
        ValidateKey = True
        LD = date$
        NDD = KNew - LD
        ExpireDate = KNew
        If NDD > 0 Then ValidateKey = True Else ValidateKey = False
        
        ' dummy = MsgBox("You have " & NDD & " days left.")
        
        Else
        ValidateKey = True
        TrialKey = False
        ' dummy = MsgBox("Registration passed.")
        End If
    End If
End Function


'Public Function ValidateKey(KEY$, owner$, codekey)
't$ = "2"
'kt$ = t$ + Mid$(Str$(Sqr(49)), 2) + "0" + Mid$(Str$(Sqr(81)), 2)
'kt$ = kt$ + Mid$(Str$(3 * 2 * 3 + 1), 2) + Mid$(Str$(Sqr(49)), 2) + "6"
'
'Unleashed = Abs(Int(((Cos(codekey / 65535) + Sin(codekey))) * 100)) + 1
'Unleashed = Int(Val(kt) / Unleashed) Mod 128
'
'
'For i = 1 To 60
'o = o + 1
'If o > Len(owner$) Then o = 1
'tt = (Asc(Mid$(owner$, o, 1)) * Int(Unleashed + Abs(10 * Cos(i / o)))) Mod 80 + 33
'If tt < 32 Then tt = Asc("%")
'kkey$ = kkey$ + Chr$(tt)
'Next
'
'If kkey$ <> KEY$ Then
'    ValidateKey = False
'    dummy = MsgBox("Wrong key, name or key code." + Chr$(13) + "QWAdmin won't run", vbOKOnly, "REGISTRATION FAILED")
'    Unload Me
'    End
'    Else
'    ValidateKey = True
'    End If
'End Function
'
Public Sub RegisterWindow()
Load RegisterForm
RegisterForm.Visible = True
RegisterForm.SetFocus

End Sub

Public Sub LoadQWASettings()
For o = 1 To 10
GOptions = Val(GetSetting("QWAdmin", ".", "GraphLine" + Str$(o), "1"))
GraphLine(o) = (GOptions = 1)
Next

px = Val(GetSetting("QWAdmin", ".", "posx"))
py = Val(GetSetting("QWAdmin", ".", "posy"))
If px < 800 And px > 0 And py < 600 And py > 0 Then Main.Move px, py

browser = GetSetting("QWAdmin", ".", "browseronstart")
If browser = "1" Then
    Load serverbrowser
    serverbrowser.Visible = True
    serverbrowser.SetFocus
    End If

Develop.Value = Val(GetSetting("QWAdmin", ".", "NotifyCheats"))
End Sub

Public Sub SaveQWASettings()
For o = 1 To 10
If GraphLine(o) = True Then k$ = "1" Else k$ = "0"
SaveSetting "QWAdmin", ".", "GraphLine" + Str$(o), k$
Next
SaveSetting "QWAdmin", ".", "posx", Main.Left
SaveSetting "QWAdmin", ".", "posy", Main.Top
SaveSetting "QWAdmin", ".", "NotifyCheats", Develop.Value
End Sub

Public Sub KickAndBan()
k = playerlist.RowSel
If k > 0 Then
    p$ = player(k).name
    a = MsgBox("Are you sure you wish to kick and ban " + p$ + " from server ?", vbYesNo, "Kick&Ban confirm")
    If a = vbYes Then
        ServerMessage p$ + " (UID " + Str$(player(k).uid) + ") was banned from game."
        KickPlayer k
        dummy$ = servRconAns$("addip " + player(k).ip)
        End If
    End If
End Sub

Public Function RealGameDir$()
    ppp$ = Main.servRconAns$("gamedir")
    tt$ = ""
    For j = Len(ppp$) To 1 Step -1
    If Mid$(ppp$, j, 1) = Chr$(32) Then tt$ = Mid$(ppp$, j + 1): Exit For
    Next
    If tt$ > "" Then
        tt$ = Main.subst(tt$, Chr$(0), "")
        tt$ = Main.subst(tt$, ".", "")
        tt$ = Main.subst(tt$, "/", "")
        tt$ = Main.subst(tt$, Chr$(13), "")
        tt$ = Main.subst(tt$, Chr$(10), "")
        RealGameDir$ = tt$
        Else
        RealGameDir$ = "id1"
        End If
End Function

Public Sub ShowKombatSettings()
RefreshLocal
Load kombatsettings
With kombatsettings
    .Visible = True
    .SetFocus
End With

For o = 0 To kombatsettings.onoff.UBound
With kombatsettings
    SSS$ = .onoff(o).Tag
    .onoff(o).Value = Val(Main.localvalue$(SSS$, ""))
    .onoff(o).DataChanged = False
End With
Next
For o = 0 To kombatsettings.var.UBound
With kombatsettings
    .var(o).DataChanged = False
    tt$ = .Label1(o).Tag
    dummy$ = ""
    dummy$ = Main.localvalue$(tt$, "")
    .var(o).text = dummy$
    .var(o).DataChanged = False
    
End With
Next
For o = 0 To 1
With kombatsettings
    a$ = .textvar(o).Tag
    dummy$ = ""
    dummy$ = Main.localvalue$(a$, "")
    .Tvar(o).text = dummy$
    .Tvar(o).DataChanged = False
    
End With
Next
    


End Sub

Public Sub ShowDMSettings()
Main.RefreshLocal

Load DMSettings
With DMSettings
    .qd.Value = Val(Main.localvalue$("dq", ""))
    .rd.Value = Val(Main.localvalue$("dr", ""))
    tt = Main.localvalue$("rj", "")
    If tt = "" Then tt = 1
    .rj.text = Val(tt)
End With
DMSettings.Visible = True

End Sub

Public Sub ShowCTFSettings()
Main.RefreshLocal
Load TCTFSettings
k = Val(findinserver$("teamplay"))

With TCTFSettings
    For o = 0 To 9
    .tp(o).Value = Abs(Sgn((2 ^ o) And k))
    .tp(o).DataChanged = False
    Next
    .temp1 = localvalue$("temp1", "")
    .temp1.DataChanged = False

TCTFSettings.Visible = True
    
End With
    
End Sub

Public Sub Quit()
On Error Resume Next
status.Caption = "Shutting down QuakeWorld Administrator"
log "Shuting down QWAdmin..."
Disconnected
SaveQWASettings
Unload qwconsole
Unload SettingForm
Unload progress
Unload ServerChat
Unload ChooseMod
Unload DMSettings
Unload ExportConfig
Unload GraphLegend
Unload IPBan
Unload kombatsettings
Unload MapRotation
Unload MegaTFSettings
Unload QRingSettings
Unload RequiemSettings
Unload TCTFSettings
Unload TFSettings
Unload UserInfoWindow
Unload Wizard
Unload frmSplash
Unload ServerChat
Unload qwconsole
Unload AboutWindow
Unload ConnectingWindow
Unload ExportConfig
Unload DMSettings
Unload TFSettings
Unload TCTFSettings
Unload SettingForm
Unload progress
Unload Wizard
Unload UserInfoWindow
Unload serverbrowser
Unload ServerBrowser2
Unload SelectFile
Unload RegisterForm
Unload kombatsettings
Unload IPBan
Unload GraphLegend
Unload GraphOptions
Unload MapRotation
Unload QRingSettings
Unload SCLogin
Unload QWAOptions
Unload Main
End
End Sub

Public Sub CheckQWSVPlus()
If DeveloperMode = False Then On Error Resume Next
BufferLog$ = ""
qwsvplus.Value = 0
qwsvplus.Enabled = True
qwsvplus.Tag = 0

' TCPServer.Protocol = sckTCPProtocol

'TCPServer.Bind
'TCPServer.RemoteHost = serverip.text
'TCPServer.RemotePort = Val(serverport.text)

TCPServer.Close
DoEvents

TCPServer.Connect serverip.text, Val(serverport.text)

End Sub

Public Sub ProcessBufferLog()
Do
If Right$(BufferLog$, 5) = "ogin:" Then BufferLog$ = BufferLog$ + Chr$(10)
If Right$(BufferLog$, 8) = "assword:" Then BufferLog$ = BufferLog$ + Chr$(10)
k = InStr(BufferLog$, Chr$(10))
k2 = InStr(BufferLog$, Chr$(13))
If k = 0 And k2 > 0 Then k = k2
If k = 0 Then Exit Do
lin$ = Left$(BufferLog$, k - 1)
lin$ = subst(lin$, Chr$(0), "")

DoEvents
tmp = Val(GetSetting("QWAdmin", "Settings", "Log messages", "1"))
If qwsvplus.Tag = 2 Then
    If InStr(lin$, "ogin:") Then
        TCPServer.SendData "anonymous" + Chr$(13) & Chr$(10)
        If tmp = 1 Then logfile "Login asked from qwsv+, sent 'anonymous'"
        End If
    If InStr(lin$, "assword:") Then
        QWSVPass$ = rcon.text
        If QWSVPass$ = "" Then
            QWSVPass$ = InputBox("Enter QWSV+ password:", "QWSV+ password", rcon.text)
            End If
        TCPServer.SendData QWSVPass$ + Chr$(13) + Chr$(10)
        If tmp = 1 Then logfile "Password asked from qwsv+, sent " + QWSVPass$
        End If
    If InStr(lin$, "Login failed") Then
        status.Caption = "You are not authorized to qwsv+ (password invalid)" + Chr$(10)
        If tmp = 1 Then logfile "QWAdmin wasn't authorized in QWSV+"
        TCPServer.Close
        Exit Sub
        End If
    If InStr(lin$, "Welcome.") Or InStr(lin$, "You are authorized") Or InStr(lin$, "Acess Granted") Then
        qwsvplus.Value = 0
        qwsvplus.Value = 1
        qwsvplus.Tag = 1
        qwsvplus.refresh
        If tmp = 1 Then logfile "Authorized to QWSV+ and logged in"
        status = "Logged on to QWSV+"
        End If
    Else
    qwsvplus.Value = 1
    qwsvplus.Tag = 1
    qwsvplus.refresh
    
    If qwconsole.Visible = True Then
        If LCase$(Left$(lin$, 5)) <> "rcon " Then
            With qwconsole.terminal
                .SelStart = Len(.text)
                .SelText = lin$ + Chr$(10)
                .SelStart = Len(.text)
                End With
            End If
        End If
    If ServerChat.Visible = True Then
        ServerChat.Process lin$
        End If
    End If
BufferLog$ = Mid$(BufferLog$, k + 1)
Loop
End Sub


Public Sub UpdateFrags2(DataString$)
a$ = DataString$
Do
k = InStr(a$, " ")
If k = 0 Then Exit Do
If k Then
    frags = Val(Left$(a$, k))
    End If
a$ = Mid$(a$, k + 1)
k = InStr(a$, " ")
If k Then
    ping = Val(Left$(a$, k))
    End If
a$ = Mid$(a$, k + 1)
k = InStr(a$, Chr$(10))
If k Then
    playername = Left$(a$, k)
    End If
a$ = Mid$(a$, k + 1)

'''' SET THE PLAYERS

Loop
End Sub

Public Sub ShowMegaTFSettings()
RefreshLocal

Load MegaTFSettings
With MegaTFSettings
    For o = 0 To 4
    .Check1(o).Value = Val(localvalue$(.Check1(o).Tag, ""))
    .Check1(o).DataChanged = False
    Next
End With
MegaTFSettings.Visible = True
MegaTFSettings.SetFocus
End Sub

Public Sub ShowQRingSettings()
Load QRingSettings
RefreshLocal
With QRingSettings
    For o = 0 To 7
    v$ = .Check1(o).Tag
    k = 0
    k = Val(localvalue$(v$, ""))
    .Check1(o).Value = k
    DoEvents
    Next
    k = Val(localvalue$("po", ""))
    
    .Powerups(0).Value = (k And 1) / 1
    .Powerups(0).Value = (k And 2) / 2
    .Powerups(0).Value = (k And 4) / 4
       
    For o = 0 To 7
    v$ = .values(o).Tag
    .values(o).text = localvalue$(v$, "")
    Next
    
    .AdminCode.text = localvalue$("ad", "")
    .defaultmap.text = localvalue$("default", "")
    
.Visible = True
.SetFocus
End With



End Sub

Public Sub ShowRegisterMessage()
dummy = MsgBox("You have installed the Lite version of QWAdmin." _
    + Chr$(13) + "For you to use this feature, you must register." _
    + Chr$(13) + "Check QWAdmin's homepage http://planetquake.com/qwadmin for details" _
    + Chr$(13) + Chr$(13) + "By registering you get many more new options that Lite version doesn't provide you.")
End Sub

Public Function GameDirOf$(gamedir$)
Select Case LCase$(gamedir$)
    Case "fortress", "id1", "arena", "ctf"
        GameDirOf$ = gamedir$
    Case "kombat", "kteams", "kteam"
        GameDirOf$ = "id1"
    Case "megatf", "mtf"
        GameDirOf$ = "fortress"
    Case "qring", "qr", "quakering", "ring"
        GameDirOf$ = "id1"
    Case "carena", "ca", "clanarena"
        GameDirOf$ = "arena"
    Case "requiem", "req"
        GameDirOf$ = "id1"
    End Select
If InStr(LCase$(gamedir$), "ctf") Then GameDirOf$ = "ctf"
If GameDirOf$ = "" Then GameDirOf$ = gamedir$
End Function

Public Sub ShowRequiemSettings()
Load RequiemSettings
With RequiemSettings
UpdateInfo

k = Val(findinserver$("options"))
For o = 0 To 14
.options(o).Value = Abs(Sgn(k And (2 ^ o)))
Next

k = Val(findinserver$("deathmatch"))
For o = 0 To 15
.deathmatch(o).Value = Abs(Sgn(k And (2 ^ o)))
Next

k = Val(findinserver$("teamplay"))
For o = 0 To 6
.Check1(o).Value = Abs(Sgn(k And (2 ^ (o + 7))))
Next

k = Val(findinserver$("samelevel"))
For o = 0 To 14
.Check2(o).Value = Abs(Sgn(k And (2 ^ o)))
Next

k = Val(findinserver$("others"))
 
 '  t = (2 ^ NB) * (2 ^ (sk * 4))

Select Case k
    Case 0 To 15
        sk = 0
    Case 16 To 255
        sk = 1
    Case 256 To 4095
        sk = 2
    Case 4096 To 65535
        sk = 3
    Case 65536 To 1048575
        sk = 4
    Case Is > 1048576
        sk = 5
    End Select
        

PP = (2 ^ (4 * sk))

t = k / PP
Select Case t
    Case 1
        nb = 0
    Case 2
        nb = 1
    Case 4
        nb = 2
    Case 8
        nb = 3
    End Select

.nbots.Value = (3 - nb)
.skill.Value = (5 - sk)


.motd(0) = findinserver$("motd1")
.motd(1) = findinserver$("motd2")
.motd(2) = findinserver$("motd3")

.Text1 = findinserver$("damage")
.Text2 = findinserver$("anticamp")

.Slider1.Value = (5 - Val(findinserver$("noskill")))


.Visible = True
.SetFocus

End With
End Sub

Public Function CheatsEnabled()
k = findinserver$("*cheats")
If k = "ON" Then CheatsEnabled = True Else CheatsEnabled = False
End Function

Public Sub CheckRate(i, ByRef j$)
laggerrate = GetSetting("QWAdmin", "Settings", "LaggerRate", "10000")

Dim msg As String
    jt$ = Left$(removespaces$(j$), 10)
    If Val(jt$) > laggerrate Then
        If GetSetting("QWAdmin", "Settings", "Warn lagged", 1) = 1 Then
            msg = GetSetting("QWAdmin", "Messages", "Warning to lagger", "Warning: Player '%playername%' has his rate too high")
            msg = subst$(msg, "%playername%", player(i).RealName)
            msg = subst$(msg, "%player%", player(i).name)
            msg = subst$(msg, "%ip%", player(i).ip)
            msg = subst$(msg, "%uid%", Str$(player(i).uid))
            msg = subst$(msg, "%playerrate%", j$)
            msg = subst$(msg, "%maxrate%", Str$(laggerrate))
            ServerMessage msg
            End If
        If PRO = True Then
            If GetSetting("QWAdmin", "Settings", "Kick lagged", 0) = 1 Then
                msg = GetSetting("QWAdmin", "Messages", "Warning to lagger", "Player '%playername%' was kicked. His rate was set to %playerrate%.")
                msg = subst$(msg, "%playername%", player(i).RealName)
                msg = subst$(msg, "%player%", player(i).name)
                msg = subst$(msg, "%ip%", player(i).ip)
                msg = subst$(msg, "%uid%", Str$(player(i).uid))
                msg = subst$(msg, "%playerrate%", j$)
                msg = subst$(msg, "%maxrate%", Str$(laggerrate))
                ServerMessage msg
                KickPlayer i
                End If
            If GetSetting("QWAdmin", "Settings", "Ban lagged", 0) = 1 Then
                servRconAns "addip " & player(i).ip
                End If
            player(i).lastsetuser = 0
            End If
        End If
End Sub

Public Sub CheckModels(Client)
E = player(Client).emodel
p = player(Client).pmodel
Dim eyes As Boolean, ps As Boolean, glow As Boolean
PlayerModelCheck Client, eyes, ps, glow
KE = GetSetting("QWAdmin", "Settings", "Autokick eyes", 0)
KS = GetSetting("QWAdmin", "Settings", "Autokick skins", 0)
If eyes And KE = 1 Then
    ServerMessage "Player " & player(Client).RealName & " was kicked since he changed his EYES.MDL"
    KickPlayer Client
    End If
If ps And KS = 1 Then
    ServerMessage "Player " & player(Client).RealName & " was kicked since he's not using standard TF skins"
    KickPlayer Client
    End If
If glow And KS = 1 Then
    ServerMessage "Player " & player(Client).RealName & " was kicked because he was using GLOW cheat pack."
    KickPlayer Client
    End If
End Sub

Public Sub KickPlayer(Client)
logfile "Player " & player(Client).name & " was kicked. INFO:"
logfile ">      IP:" & player(Client).ip
logfile "> EMODELS:" & player(Client).emodel
logfile "> PMODELS:" & player(Client).pmodel
logfile ">   FRAGS:" & player(Client).frags
logfile ">    RATE:" & player(Client).rate
servRconAns "kick " & player(Client).uid
End Sub

Public Sub Winsock1_DataArrival(Index As Integer, ByVal bytesTotal As Long)
Winsock1(Index).GetData a$
WSOCK(Index) = WSOCK(Index) + a$
End Sub

Private Sub Winsock1_Error(Index As Integer, ByVal Number As Integer, Description As String, ByVal Scode As Long, ByVal Source As String, ByVal HelpFile As String, ByVal HelpContext As Long, CancelDisplay As Boolean)
Winsock1(Index).Accept requestID
End Sub

Public Sub ShowCArenaSettings()
Load ClanArenaSettings
RefreshLocal
If DeveloperMode = False Then On Error Resume Next
With ClanArenaSettings
 For o = 0 To 4
 .Check1(o).Value = Val(localvalue$(.Check1(o).Tag, ""))
 Next

 For o = 0 To 10
 .values(o).text = (localvalue$(.values(o).Tag, ""))
 .UpDown(o).Value = Val(.values(o).text)
 Next
 .Visible = True
 .SetFocus
End With

End Sub

Public Sub ShowPureCTFSettings()
Dim perc As New progress
perc.Label = "Reading values from server..."
perc.perc.Value = 0
perc.Visible = True
RefreshLocal

Load PureCTFSettings

With PureCTFSettings
    perc.perc.Value = 20
    .adminpwd = localvalue$("adminpass", "")
    k = Val(localvalue$("modechange", ""))
    .adminpwd.DataChanged = False
    perc.perc.Value = 30
    
    .Check1(0).Value = (k And 1)
    .Check1(1).Value = (k And 2) / 2
    .Check1(0).DataChanged = False
    .Check1(1).DataChanged = False
    .Check2 = Val(localvalue$("adminvote", ""))
    .Check2.DataChanged = False
    perc.perc.Value = 40
    
    k = Val(localvalue$("mode", ""))
    If k < 4 And k >= 0 Then
        .Option1(k).Value = True
        End If
    
    .revert = localvalue$("revert", "")
    .revert.DataChanged = False
    perc.perc.Value = 50
    
    If .revert > "" Then .Check3.Value = 1 Else .Check3.Value = 0
    .Check3.DataChanged = False
    
    
    For o = 0 To 10
    k = Val(localvalue$(.Check4(o).Tag, ""))
    If k = 1 Or k = 0 Then .Check4(o).Value = k
    .Check4(o).DataChanged = False
    perc.perc.Value = 60 + o
    Next
    
    k = Val(localvalue$("extras", ""))
    For o = 0 To 3
    If k And (2 ^ o) Then
        .Check5(o).Value = 1
        Else
        .Check5(o).Value = 0
        End If
    .Check5(o).DataChanged = False
    Next
    perc.perc.Value = 80
    
    k = Val(localvalue$("anticheats", ""))
    For o = 0 To 4
    If k And (2 ^ o) Then
        .Check6(o).Value = 1
        Else
        .Check6(o).Value = 0
        End If
    .Check6(o).DataChanged = False
    Next
    perc.perc.Value = 90
    
    For o = 0 To 12
    t = localvalue$(.Text1(o).Tag, "")
    If t > "" Then
        k = Val(t)
        .Text1(o) = k
        If .UpDown1(o).max < k Then .UpDown1(o).max = k
        If .UpDown1(o).Min > k Then .UpDown1(o).Min = k
        .UpDown1(o).Value = k
        .Text1(o).DataChanged = False
        End If
    Next
    perc.perc.Value = 95
    
    .teamplay = ServerVar("teamplay")
    perc.perc.Value = 100
    Unload perc
    
    .Visible = True
    .SetFocus
    End With
End Sub

Public Sub CheckMod(progs)
vp = GetSetting(AppName, "Custom mods", Mid$(Str$(progs), 2), "")

' CUSTOM PROGS (NOT INCLUDED IN QWA SOURCE)
If vp > "" Then
    t = InStr(vp, ",")
    If t > 0 Then
        MI$ = Left$(vp, t - 1)
        MD$ = Mid$(vp, t + 1)
        Else
        MI$ = vp
        MD$ = "No title"
        End If
    tfset.Tag = MI$
    tfset.Caption = MD$
    tfset.Enabled = True
    If tfset.Tag = "TF" Then
        mnuWizard.Enabled = True
        Main.mnuMapRotation.Enabled = False
        End If
    Exit Sub
    End If

Select Case progs
        Case 0
        Case 57627 ' Requiem
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "QRing config"
            Main.tfset.Tag = "QRING"
        Case 38758 ' Requiem
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "Requiem config"
            Main.tfset.Tag = "REQUIEM"
        Case 41026 ' StarWars CTF
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "SW CTF config"
            Main.tfset.Tag = "SWCTF"
        Case 10793 ' ThunderWalker CTF
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "TW CTF config"
            Main.tfset.Tag = "TWCTF"
            Main.mnuMapRotation.Enabled = False
            
        Case 3907 ' PURECTF
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "PureCTF config"
            Main.tfset.Tag = "PURECTF"
            Main.mnuMapRotation.Enabled = False
            
        Case 3221, 29517, 49667, 46244, 53831, 57194, 20053, 58258 ' TF 2.9
            Main.tfset.Enabled = True
            Main.tfset.Caption = "TF Settings..."
            Main.mnuMapRotation.Enabled = False
            Main.mnuWizard.Enabled = True
            Main.tfset.Tag = "TF"
        
        Case 20147 ' Clan Arena
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "CArena setup"
            Main.tfset.Tag = "CARENA"
            Main.mnuMapRotation.Enabled = True
            
        Case 34885, 10633, 9685, 61226 ' MEGATF
            Main.tfset.Enabled = True
            mnuWizard.Enabled = True
            Main.tfset.Caption = "MegaTF config"
            Main.tfset.Tag = "MEGATF"
            Main.mnuMapRotation.Enabled = False
            
        Case 44786, 8209
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "Kombat config..."
            Main.tfset.Tag = "KOMBAT"
            Main.mnuMapRotation.Enabled = True
            
        Case 21450, 36584, 2499, 21095
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "DM Settings..."
            Main.tfset.Tag = "DM"
            Main.mnuMapRotation.Enabled = False
            
        Case 21842, 21991, 33812
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "CTF Settings..."
            Main.tfset.Tag = "CTF"
            Main.mnuMapRotation.Enabled = False
            
        Case 34226, 60586
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            Main.tfset.Caption = "Arena Settings..."
            Main.tfset.Tag = "ARENA"
            Main.mnuMapRotation.Enabled = True
        Case Else
            Main.tfset.Enabled = True
            mnuWizard.Enabled = False
            tfset.Tag = ""
            Main.tfset.Caption = "[UNKNOWN]"
        End Select
        
End Sub

Public Sub RestartMap(Optional map$)
If IsEmpty(map$) Or map$ = "" Then
    map$ = findinserver$("map")
    End If
If map$ > "" Then
    servRconAns$ "map " + map$
    End If
End Sub

Public Sub ShowArenaSettings()
Load RASettings

RefreshLocal
With RASettings
    For o = .Check1.LBound To .Check1.UBound
    k = Val(localvalue$(.Check1(o).Tag, ""))
    If k = 0 Or k = 1 Then .Check1(o) = k
    Next
    
    For o = .Check1.LBound To .Check1.UBound
    t = localvalue$(.variable(o).Tag, "")
    If t > "" Then
        k = Val(t)
        .variable(o) = k
        If .UpDown1(o).max < k Then .UpDown1(o).max = k
        If .UpDown1(o).Min > k Then .UpDown1(o).Min = k
        .UpDown1(o).Value = k
        End If
    Next
    
    For o = .Text1.LBound To .Text1.UBound
    t = localvalue$(.Text1(o).Tag, "")
    .Text1(o) = t
    Next
    
    t = localvalue$("a_weapons", "")
    If t = "" Then k = 127 Else k = Val(t)
    If k > 127 Then k = 127
    If k < 0 Then k = 0
    
    For o = 0 To 6
    .weapons(o).Value = Abs(Sgn(k And (2 ^ o)))
    Next
    .Visible = True
    .SetFocus
    End With
End Sub

Public Sub KickAndBanL(LEVEL)
k = playerlist.RowSel
If k > 0 Then
        
    p$ = player(k).name
        
        ip$ = player(k).ip
        For o = Len(ip$) To 1 Step -1
        If Mid$(ip$, o, 1) = "." Then l = l + 1
        If l = LEVEL Then Exit For
        Next
        If l < LEVEL Then MsgBox "Internal error, ignoring...": Exit Sub
        ip$ = Left$(player(k).ip, o - 1)
        For o = 1 To LEVEL
        ip$ = ip$ + ".0"
        Next
        
    a = MsgBox("Are you sure you wish to kick and ban " + p$ + " from server ? (Level " & (LEVEL + 1) & " ban - " & ip$ & ")", vbYesNo, "Kick&Ban confirm")
    If a = vbYes Then
        ServerMessage p$ + " (UID " + Str$(player(k).uid) + ") was banned from game."
        KickPlayer k
        dummy$ = servRconAns$("addip " + ip$)
        End If
    End If
End Sub

Private Sub Winsock2_DataArrival(ByVal bytesTotal As Long)
Winsock2.GetData a$
ProxyData$ = ProxyData$ + a$
End Sub

