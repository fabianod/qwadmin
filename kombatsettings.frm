VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form kombatsettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Kombat Teams Options"
   ClientHeight    =   4980
   ClientLeft      =   1620
   ClientTop       =   1545
   ClientWidth     =   9420
   Icon            =   "kombatsettings.frx":0000
   LinkTopic       =   "Link"
   MaxButton       =   0   'False
   ScaleHeight     =   4980
   ScaleWidth      =   9420
   Begin VB.Frame Frame3 
      Caption         =   "Other settings"
      Height          =   1215
      Left            =   4560
      TabIndex        =   39
      Top             =   3240
      Width           =   4815
      Begin VB.TextBox Tvar 
         Height          =   285
         Index           =   1
         Left            =   3360
         TabIndex        =   42
         Top             =   720
         Width           =   1335
      End
      Begin VB.TextBox Tvar 
         Height          =   285
         Index           =   0
         Left            =   3360
         MaxLength       =   6
         TabIndex        =   40
         Top             =   360
         Width           =   1335
      End
      Begin VB.Label textvar 
         Alignment       =   1  'Right Justify
         Caption         =   "Label2"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   43
         Top             =   720
         Width           =   3015
      End
      Begin VB.Label textvar 
         Alignment       =   1  'Right Justify
         Caption         =   "Label2"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   41
         Top             =   360
         Width           =   3015
      End
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   7680
      TabIndex        =   7
      Top             =   4560
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   5760
      TabIndex        =   6
      Top             =   4560
      Width           =   1695
   End
   Begin VB.Frame Frame2 
      Caption         =   "Game variables"
      Height          =   3135
      Left            =   4560
      TabIndex        =   2
      Top             =   0
      Width           =   4815
      Begin VB.TextBox var 
         Height          =   285
         Index           =   7
         Left            =   3600
         TabIndex        =   47
         Text            =   "0"
         Top             =   2760
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   6
         Left            =   3600
         TabIndex        =   44
         Text            =   "0"
         Top             =   2400
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   5
         Left            =   3600
         TabIndex        =   21
         Text            =   "0"
         Top             =   2040
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   4
         Left            =   3600
         TabIndex        =   18
         Text            =   "0"
         Top             =   1680
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   3
         Left            =   3600
         TabIndex        =   15
         Text            =   "0"
         Top             =   1320
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   2
         Left            =   3600
         TabIndex        =   12
         Text            =   "0"
         Top             =   960
         Width           =   855
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   1
         Left            =   3600
         TabIndex        =   9
         Text            =   "0"
         Top             =   600
         Width           =   855
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   0
         Left            =   4440
         TabIndex        =   5
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3600
         OrigTop         =   240
         OrigRight       =   3840
         OrigBottom      =   525
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin VB.TextBox var 
         Height          =   285
         Index           =   0
         Left            =   3600
         TabIndex        =   4
         Text            =   "0"
         Top             =   240
         Width           =   855
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   1
         Left            =   4440
         TabIndex        =   8
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   2
         Left            =   4440
         TabIndex        =   11
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   3
         Left            =   4440
         TabIndex        =   14
         Top             =   1320
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3600
         OrigTop         =   240
         OrigRight       =   3840
         OrigBottom      =   525
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   4
         Left            =   4440
         TabIndex        =   17
         Top             =   1680
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   5
         Left            =   4440
         TabIndex        =   20
         Top             =   2040
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   6
         Left            =   4440
         TabIndex        =   45
         Top             =   2400
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   7
         Left            =   4440
         TabIndex        =   48
         Top             =   2760
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3360
         OrigRight       =   3600
         OrigBottom      =   285
         Wrap            =   -1  'True
         Enabled         =   -1  'True
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   7
         Left            =   240
         TabIndex        =   49
         Top             =   2760
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   6
         Left            =   240
         TabIndex        =   46
         Top             =   2400
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   22
         Top             =   2040
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   19
         Top             =   1680
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   16
         Top             =   1320
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   13
         Top             =   960
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   10
         Top             =   600
         Width           =   3255
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Label1"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   3
         Top             =   240
         Width           =   3255
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Game settings"
      Height          =   4455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4455
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   16
         Left            =   120
         TabIndex        =   38
         Top             =   4080
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   15
         Left            =   120
         TabIndex        =   37
         Top             =   3840
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   14
         Left            =   120
         TabIndex        =   36
         Top             =   3600
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   13
         Left            =   120
         TabIndex        =   35
         Top             =   3360
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   12
         Left            =   120
         TabIndex        =   34
         Top             =   3120
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   11
         Left            =   120
         TabIndex        =   33
         Top             =   2880
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   10
         Left            =   120
         TabIndex        =   32
         Top             =   2640
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   9
         Left            =   120
         TabIndex        =   31
         Top             =   2400
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   8
         Left            =   120
         TabIndex        =   30
         Top             =   2160
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   29
         Top             =   1920
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   28
         Top             =   1680
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   27
         Top             =   1440
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   26
         Top             =   1200
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   25
         Top             =   960
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   24
         Top             =   720
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   23
         Top             =   480
         Width           =   4215
      End
      Begin VB.CheckBox onoff 
         Caption         =   "Boolean var"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   4215
      End
   End
End
Attribute VB_Name = "kombatsettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim perc As New progress
perc.Visible = True
perc.Label.Caption = "Configuring Kombat..."
perc.refresh

For o = 0 To onoff.UBound
If onoff(o).DataChanged Then
    tt$ = onoff(o).Tag
    dummy$ = Main.servRconAns$("localinfo " + tt$ + Str$(onoff(o).Value))
    onoff(o).DataChanged = False
    End If
perc.perc.Value = o * 3

Next

For o = 0 To var.UBound
perc.perc.Value = 40 + o * 3
If var(o).DataChanged Then
    tt$ = Label1(o).Tag
    dummy$ = Main.servRconAns$("localinfo " + tt$ + " " + var(o).text)
    var(o).DataChanged = False
    
    End If
Next

For o = 0 To textvar.UBound
perc.perc.Value = 80 + o * 10
If Tvar(o).DataChanged Then
    tt$ = textvar(o).Tag
    dummy$ = Main.servRconAns$("localinfo " + tt$ + " " + Tvar(o).text)
    Tvar(o).DataChanged = False
    
    End If
Next

Unload perc
Me.Visible = False
Unload Me

End Sub

Private Sub Command2_Click()
Unload Me

End Sub

Private Sub Form_Load()
Main.RefreshLocal
' SCALE VARS
'localinfo k_spw 2               // kombat teams respawns (see technical notes)
'localinfo k_lockmin 0           // minimum number of teams in game
'localinfo k_lockmax 32          // maximum number of teams in game
'localinfo k_membercount 0       // minimum number of players in each team to start match
'localinfo k_count 20            // number of seconds for the countdown to last
'localinfo k_timetop 60          // maximum time that can be allocated for a game by the players
'localinfo k_highspeed 370       // /speed toggles between sv_maxspeed 320 and k_highspeed

Label1(0).Caption = "Kombat teams respawns"
Label1(0).Tag = "k_spw"
UpDown(0).max = 30
Label1(1).Caption = "Minimum number of teams in game"
Label1(1).Tag = "k_lockmin"
UpDown(1).max = 32
Label1(2).Caption = "Maximum number of teams in game"
Label1(2).Tag = "k_lockmax"
UpDown(2).max = 32
UpDown(2).Min = 1
Label1(3).Caption = "Minimum number of players in each team"
Label1(3).Tag = "k_membercount"
UpDown(3).max = 32
UpDown(3).Min = 1
Label1(4).Caption = "Number of seconds for the countdown to last"
Label1(4).Tag = "k_count"
UpDown(4).max = 300
Label1(5).Caption = "Maximum time allowed for a game"
Label1(5).Tag = "k_timetop"
UpDown(5).max = 90
Label1(6).Caption = "2nd player speed for games"
Label1(6).Tag = "k_highspeed"
UpDown(6).max = 550
UpDown(6).Min = 100
'localinfo k_exclusive 1         // number of players gets locked on gamestart (0 to disable)
Label1(7).Caption = "Num. players gets locked on gamestart"
Label1(7).Tag = "k_exclusive"

' BOOLEAN VARS

'localinfo dq 0                  // drop quad off (1 to enable)
onoff(0).Caption = "Quad drop"
onoff(0).Tag = "dq"
'localinfo dr 0                  // drop ring off (1 to enable)
onoff(1).Caption = "Quad ring of shadows"
onoff(1).Tag = "dr"
'localinfo dp 1                  // drop backpacks on (0 to disable)
onoff(2).Caption = "Drop backpacks"
onoff(2).Tag = "dp"
'localinfo k_pow 1               // powerups on (0 to disable)
onoff(3).Caption = "Power ups (Quad, Penta, etc)"
onoff(3).Tag = "k_pow"
'localinfo k_dis 1               // discharge on (0 to turn off)
onoff(4).Caption = "Enable discharges in liquids"
onoff(4).Tag = "k_dis"
'localinfo k_666 0               // respawn 666 off (1 to enable)
onoff(5).Caption = "Pentagram (666) on player respawn"
onoff(5).Tag = "k_666"
'localinfo k_bzk 0               // berzerk off (1 to enable)
onoff(6).Caption = "Bezerk"
onoff(6).Tag = "k_bzk"
'localinfo k_frp 1               // best weapon backpacks (0 to disable)
onoff(7).Caption = "Best weapon in backpacks"
onoff(7).Tag = "k_frp"
'localinfo k_lockmap 0           // prevent players from changing map (1 = lock, 0 = no lock)
onoff(8).Caption = "Prevent players from changing map"
onoff(8).Tag = "k_lockmap"
'localinfo k_prewar 1            // enable playerfire before matchstart (0 to disable)
onoff(9).Caption = "Enable playerfire in pre-match time"
onoff(9).Tag = "k_prewar"
'localinfo k_ann 1               // announce spectators during game (0 to disable)
onoff(10).Caption = "Announce spectators during game"
onoff(10).Tag = "k_ann"
'localinfo k_kfp 0               // "kill" flood protection off (1 to enable)
onoff(11).Caption = "Multiple kills flood protection"
onoff(11).Tag = "k_kfp"
'localinfo k_sready 1            // players glow when not ready (0 to disable)
onoff(12).Caption = "Players glow when not ready"
onoff(12).Tag = "k_sready"
'localinfo k_admins 1            // allow admins (0 to disallow)
onoff(13).Caption = "Allow administrators"
onoff(13).Tag = "k_admins"
'localinfo k_spectalk 1          // spectators can talk to players during game (0 to silence)
onoff(14).Caption = "Spectators can talk to players during game"
onoff(14).Tag = "k_spectalk"
'localinfo k_dm2mod 1            // modified deathmatch 2 mode (see technical notes)
onoff(15).Caption = "Modified deathmatch II mode"
onoff(15).Tag = "k_dm2mod"
'localinfo k_duel 0              // kombat teams set to duel mode (no teamplay change) 1 = active
onoff(16).Caption = "Duel mode (no teamplay change)"
onoff(16).Tag = "k_duel"

' TEXT VARS
'localinfo k_admincode 666666    // 6 digit admin code (digits between 1 and 9 only)
textvar(0).Caption = "6 digit admin code (1 to 9 only)"
textvar(0).Tag = "k_admincode"
'localinfo k_defmap dm4          // server default map (see ALIEN MAPS)
textvar(1).Caption = "Server's default map"
textvar(1).Tag = "k_defmap"

End Sub
