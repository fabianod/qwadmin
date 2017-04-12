VERSION 5.00
Begin VB.Form ChooseMod 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Unidentified MOD"
   ClientHeight    =   4530
   ClientLeft      =   2340
   ClientTop       =   1725
   ClientWidth     =   6855
   Icon            =   "ChooseMod.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4530
   ScaleWidth      =   6855
   StartUpPosition =   2  'CenterScreen
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   495
      Left            =   6240
      Picture         =   "ChooseMod.frx":0442
      ScaleHeight     =   495
      ScaleWidth      =   495
      TabIndex        =   12
      Top             =   120
      Width           =   495
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Normal Deathmatch"
      Height          =   195
      Index           =   11
      Left            =   4080
      TabIndex        =   17
      Tag             =   "DM"
      Top             =   3120
      Width           =   3615
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Pure CTF"
      Height          =   195
      Index           =   10
      Left            =   960
      TabIndex        =   16
      Tag             =   "PURECTF"
      Top             =   3600
      Width           =   2415
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Clan arena"
      Height          =   195
      Index           =   9
      Left            =   4080
      TabIndex        =   15
      Tag             =   "CARENA"
      Top             =   3600
      Width           =   3615
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Rocket Arena"
      Height          =   195
      Index           =   8
      Left            =   4080
      TabIndex        =   14
      Tag             =   "ARENA"
      Top             =   3360
      Width           =   3615
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Quake Ring"
      Height          =   195
      Index           =   7
      Left            =   4080
      TabIndex        =   13
      Tag             =   "QRING"
      Top             =   2640
      Width           =   3615
   End
   Begin VB.TextBox desc 
      Height          =   285
      Left            =   3120
      MaxLength       =   20
      TabIndex        =   10
      Top             =   1800
      Width           =   2295
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   9
      Top             =   4080
      Width           =   1575
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3480
      TabIndex        =   8
      Top             =   4080
      Width           =   1575
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Requiem"
      Height          =   195
      Index           =   6
      Left            =   4080
      TabIndex        =   7
      Tag             =   "REQUIEM"
      Top             =   2400
      Width           =   3615
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Thunder Walker CTF"
      Enabled         =   0   'False
      Height          =   195
      Index           =   5
      Left            =   960
      TabIndex        =   6
      Tag             =   "TWCTF"
      Top             =   3360
      Width           =   2415
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Star Wars CTF"
      Enabled         =   0   'False
      Height          =   195
      Index           =   4
      Left            =   960
      TabIndex        =   5
      Tag             =   "SWCTF"
      Top             =   3120
      Width           =   2535
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Kombat teams"
      Height          =   195
      Index           =   3
      Left            =   4080
      TabIndex        =   4
      Tag             =   "KOMBAT"
      Top             =   2880
      Width           =   2535
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "ThreeWave CTF"
      Height          =   195
      Index           =   2
      Left            =   960
      TabIndex        =   3
      Tag             =   "CTF"
      Top             =   2880
      Width           =   2655
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "Mega TF"
      Height          =   195
      Index           =   1
      Left            =   960
      TabIndex        =   2
      Tag             =   "MEGATF"
      Top             =   2640
      Width           =   2655
   End
   Begin VB.OptionButton ChosenMOD 
      Caption         =   "TeamFortress"
      Height          =   195
      Index           =   0
      Left            =   960
      TabIndex        =   1
      Tag             =   "TF"
      Top             =   2400
      Width           =   2775
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Text to appear in button:"
      Height          =   255
      Left            =   1080
      TabIndex        =   11
      Top             =   1800
      Width           =   1935
   End
   Begin VB.Line Line2 
      BorderColor     =   &H00FFFFFF&
      X1              =   120
      X2              =   6720
      Y1              =   1560
      Y2              =   1560
   End
   Begin VB.Line Line1 
      X1              =   120
      X2              =   6720
      Y1              =   1550
      Y2              =   1550
   End
   Begin VB.Label text 
      Alignment       =   2  'Center
      Caption         =   "%"
      Height          =   1335
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   6495
   End
End
Attribute VB_Name = "ChooseMod"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub ChosenMOD_Click(Index As Integer)
desc.text = ChosenMOD(Index).Tag + " settings"
End Sub

Private Sub Command1_Click()
If desc.text = "" Then dummy = MsgBox("Must supply some MOD description"): Exit Sub
For o = ChosenMOD.lbound To ChosenMOD.UBOUND
If ChosenMOD(o) = True Then
    SaveSetting AppName, "Custom mods", text.Tag, ChosenMOD(o).Tag + "," + desc.text
    Exit For
    End If
Next
Unload Me

End Sub

Private Sub Command2_Click()
Unload Me
End Sub

Public Sub ShowData()
text.Caption = "Please notify the author the following information:" + Chr$(13) + _
            "P:" + Main.findinserver$("*progs") + "," + "G:" + Main.findinserver$("*gamedir") + "," + "S:" + Main.RealGameDir$ + Chr$(13) + Chr$(13) _
            + "The reason this window appeared, is that either your version of QWAdmin is outdated, or you're using a non-supported MOD in your server." + Chr$(13) _
            + "However you can specify wich config window to use from the following list:"
text.Tag = Val(Main.findinserver$("*progs"))
End Sub

