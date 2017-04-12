VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form DMSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "iD DeathMatch settings"
   ClientHeight    =   1680
   ClientLeft      =   2730
   ClientTop       =   2565
   ClientWidth     =   3225
   Icon            =   "DMSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   1680
   ScaleWidth      =   3225
   Begin ComCtl2.UpDown UpDown1 
      Height          =   285
      Left            =   2416
      TabIndex        =   6
      Top             =   120
      Width           =   240
      _ExtentX        =   423
      _ExtentY        =   503
      _Version        =   327681
      BuddyControl    =   "rj"
      BuddyDispid     =   196613
      OrigLeft        =   2400
      OrigTop         =   120
      OrigRight       =   2640
      OrigBottom      =   375
      SyncBuddy       =   -1  'True
      BuddyProperty   =   0
      Enabled         =   -1  'True
   End
   Begin VB.CheckBox rd 
      Caption         =   "Ring of shadows is dropable"
      Height          =   255
      Left            =   120
      TabIndex        =   5
      Top             =   720
      Width           =   2655
   End
   Begin VB.CheckBox qd 
      Caption         =   "Quad is dropable"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   480
      Width           =   1935
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   375
      Left            =   2040
      TabIndex        =   3
      Top             =   1200
      Width           =   1095
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   840
      TabIndex        =   2
      Top             =   1200
      Width           =   1095
   End
   Begin VB.TextBox rj 
      Height          =   285
      Left            =   1800
      TabIndex        =   0
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Rocket jump variable"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   120
      Width           =   1575
   End
End
Attribute VB_Name = "DMSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If qd.DataChanged Then dummy2$ = Main.servRconAns$("serverinfo dq" + Str$(qd.Value))
If rd.DataChanged Then dummy2$ = Main.servRconAns$("serverinfo rq" + Str$(rd.Value))
If rj.DataChanged Then Main.setinserver2 "rj", "", rj.text, ""
If MsgBox("Restart map " + Main.map.text + " ?", vbYesNo) = vbYes Then dummy$ = Main.servRconAns$("map " + Main.map.text)
Command2_Click
End Sub

Public Sub Command2_Click()

Me.Visible = False
Unload Me

End Sub
