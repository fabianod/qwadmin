VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form RequiemSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Requiem configuration..."
   ClientHeight    =   3555
   ClientLeft      =   1770
   ClientTop       =   2040
   ClientWidth     =   6855
   Icon            =   "RequiemSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3555
   ScaleWidth      =   6855
   Begin VB.CommandButton Command3 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5520
      TabIndex        =   19
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2880
      TabIndex        =   18
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Apply"
      Height          =   375
      Left            =   4200
      TabIndex        =   17
      Top             =   3120
      Width           =   1215
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   3015
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6855
      _ExtentX        =   12091
      _ExtentY        =   5318
      _Version        =   327681
      Style           =   1
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "Server options"
      TabPicture(0)   =   "RequiemSettings.frx":08CA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame1"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "Deathmatch"
      TabPicture(1)   =   "RequiemSettings.frx":08E6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame2"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "Teamplay and bots"
      TabPicture(2)   =   "RequiemSettings.frx":0902
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame5"
      Tab(2).Control(1)=   "Frame3"
      Tab(2).ControlCount=   2
      TabCaption(3)   =   "Samelevel"
      TabPicture(3)   =   "RequiemSettings.frx":091E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame4"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "Other settings..."
      TabPicture(4)   =   "RequiemSettings.frx":093A
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "UpDown2"
      Tab(4).Control(1)=   "Text2"
      Tab(4).Control(2)=   "Text1"
      Tab(4).Control(3)=   "Frame7"
      Tab(4).Control(4)=   "Frame6"
      Tab(4).Control(5)=   "UpDown1"
      Tab(4).Control(6)=   "Label4(0)"
      Tab(4).Control(7)=   "Label3(0)"
      Tab(4).ControlCount=   8
      Begin ComCtl2.UpDown UpDown2 
         Height          =   285
         Left            =   -71024
         TabIndex        =   83
         Top             =   2400
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "Text2"
         BuddyDispid     =   196612
         OrigLeft        =   4200
         OrigTop         =   2400
         OrigRight       =   4440
         OrigBottom      =   2655
         Max             =   200
         SyncBuddy       =   -1  'True
         BuddyProperty   =   65547
         Enabled         =   -1  'True
      End
      Begin VB.TextBox Text2 
         Height          =   285
         Left            =   -71520
         TabIndex        =   75
         Text            =   "0"
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Left            =   -71520
         TabIndex        =   73
         Text            =   "0"
         Top             =   2040
         Width           =   495
      End
      Begin VB.Frame Frame7 
         Caption         =   "Message of the day (MOTD)"
         Height          =   1575
         Left            =   -74880
         TabIndex        =   71
         Top             =   360
         Width           =   4575
         Begin VB.TextBox motd 
            Height          =   285
            Index           =   2
            Left            =   480
            TabIndex        =   79
            Top             =   1080
            Width           =   3975
         End
         Begin VB.TextBox motd 
            Height          =   285
            Index           =   1
            Left            =   480
            TabIndex        =   78
            Top             =   720
            Width           =   3975
         End
         Begin VB.TextBox motd 
            Height          =   285
            Index           =   0
            Left            =   480
            TabIndex        =   77
            Top             =   360
            Width           =   3975
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            Caption         =   "(3)"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   82
            Top             =   1080
            Width           =   375
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            Caption         =   "(2)"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   81
            Top             =   720
            Width           =   375
         End
         Begin VB.Label Label6 
            Alignment       =   2  'Center
            Caption         =   "(1)"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   80
            Top             =   360
            Width           =   375
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "No skill variable"
         Height          =   2535
         Left            =   -70200
         TabIndex        =   68
         Top             =   360
         Width           =   1935
         Begin ComctlLib.Slider Slider1 
            Height          =   1815
            Left            =   720
            TabIndex        =   69
            Top             =   240
            Width           =   630
            _ExtentX        =   1111
            _ExtentY        =   3201
            _Version        =   327682
            Orientation     =   1
            LargeChange     =   1
            Max             =   5
            SelStart        =   5
            TickStyle       =   2
            Value           =   5
         End
         Begin VB.Label noskilldesc 
            Alignment       =   2  'Center
            BackColor       =   &H00000000&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Baby"
            ForeColor       =   &H0000FFFF&
            Height          =   255
            Left            =   120
            TabIndex        =   70
            Top             =   2160
            Width           =   1695
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Bots"
         Height          =   2415
         Left            =   -71160
         TabIndex        =   61
         Top             =   360
         Width           =   2895
         Begin ComctlLib.Slider nbots 
            Height          =   1455
            Left            =   1920
            TabIndex        =   62
            Top             =   480
            Width           =   630
            _ExtentX        =   1111
            _ExtentY        =   2566
            _Version        =   327682
            Orientation     =   1
            LargeChange     =   1
            Max             =   3
            SelStart        =   3
            TickStyle       =   2
            Value           =   3
         End
         Begin ComctlLib.Slider skill 
            Height          =   1455
            Left            =   360
            TabIndex        =   63
            Top             =   480
            Width           =   630
            _ExtentX        =   1111
            _ExtentY        =   2566
            _Version        =   327682
            Orientation     =   1
            LargeChange     =   1
            Max             =   5
            SelStart        =   5
            TickStyle       =   2
            Value           =   5
         End
         Begin VB.Label botdesc 
            Alignment       =   2  'Center
            BackColor       =   &H00000000&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "1 bot"
            ForeColor       =   &H0080FF80&
            Height          =   255
            Left            =   1560
            TabIndex        =   67
            Top             =   2040
            Width           =   1215
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00FFFFFF&
            X1              =   1455
            X2              =   1455
            Y1              =   240
            Y2              =   2280
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00808080&
            X1              =   1440
            X2              =   1440
            Y1              =   2280
            Y2              =   240
         End
         Begin VB.Label Label2 
            Alignment       =   2  'Center
            Caption         =   "Number of bots:"
            Height          =   255
            Left            =   1440
            TabIndex        =   66
            Top             =   240
            Width           =   1335
         End
         Begin VB.Label skilldesc 
            Alignment       =   2  'Center
            BackColor       =   &H00000000&
            BorderStyle     =   1  'Fixed Single
            Caption         =   "Easy"
            ForeColor       =   &H00FFFFFF&
            Height          =   255
            Left            =   120
            TabIndex        =   65
            Top             =   2040
            Width           =   1215
         End
         Begin VB.Label Label1 
            Alignment       =   2  'Center
            Caption         =   "Skill:"
            Height          =   255
            Left            =   240
            TabIndex        =   64
            Top             =   240
            Width           =   855
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Deathmatch options"
         Height          =   2295
         Left            =   -74880
         TabIndex        =   44
         Top             =   480
         Width           =   6495
         Begin VB.CheckBox deathmatch 
            Caption         =   "Normal Deathmatch (Select this only)"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   60
            Top             =   240
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Items Disappear Permanently"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   59
            Top             =   480
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Weapons Stay (pick up once only)"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   58
            Top             =   720
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Random Items/Weapons Respawning"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   57
            Top             =   960
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Charging Items"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   56
            Top             =   1200
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Sudden Death!! (Quad Mania)"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   55
            Top             =   1440
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Mortal Countdown"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   54
            Top             =   1680
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Enable Monsters in DeathMatch!"
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   53
            Top             =   1920
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Maximum Energy"
            Height          =   255
            Index           =   8
            Left            =   3240
            TabIndex        =   52
            Top             =   240
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Axe-Warefare"
            Height          =   255
            Index           =   9
            Left            =   3240
            TabIndex        =   51
            Top             =   480
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Ammo Regeneration"
            Height          =   255
            Index           =   10
            Left            =   3240
            TabIndex        =   50
            Top             =   720
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Extra Random Start Weapon"
            Height          =   255
            Index           =   11
            Left            =   3240
            TabIndex        =   49
            Top             =   960
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Remove Weapons From Maps"
            Height          =   255
            Index           =   12
            Left            =   3240
            TabIndex        =   48
            Top             =   1200
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Destroyable Ammo/Backpacks"
            Height          =   255
            Index           =   13
            Left            =   3240
            TabIndex        =   47
            Top             =   1440
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "Full ammo/weapons"
            Height          =   255
            Index           =   14
            Left            =   3240
            TabIndex        =   46
            Top             =   1680
            Width           =   3015
         End
         Begin VB.CheckBox deathmatch 
            Caption         =   "The Works..."
            Height          =   255
            Index           =   15
            Left            =   3240
            TabIndex        =   45
            Top             =   1920
            Width           =   3015
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "Samelevel options"
         Height          =   2415
         Left            =   -74880
         TabIndex        =   28
         Top             =   480
         Width           =   6615
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Respawning Exploding Boxes"
            Height          =   255
            Index           =   14
            Left            =   3240
            TabIndex        =   43
            Top             =   1800
            Width           =   3135
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Enable Item Movement (with airgun)"
            Height          =   255
            Index           =   13
            Left            =   3240
            TabIndex        =   42
            Top             =   1560
            Width           =   3135
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Lava and Slime burn"
            Height          =   255
            Index           =   12
            Left            =   3240
            TabIndex        =   41
            Top             =   1320
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Reload SERVER.CFG every map"
            Height          =   255
            Index           =   11
            Left            =   3240
            TabIndex        =   40
            Top             =   1080
            Width           =   3255
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable MegaHealth and all Armor"
            Height          =   255
            Index           =   10
            Left            =   3240
            TabIndex        =   39
            Top             =   840
            Width           =   3015
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Quad, Invisble, 666, Suit"
            Height          =   255
            Index           =   9
            Left            =   3240
            TabIndex        =   38
            Top             =   600
            Width           =   3015
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable DM Episode"
            Height          =   255
            Index           =   8
            Left            =   3240
            TabIndex        =   37
            Top             =   360
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Episode4"
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   36
            Top             =   2040
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Episode3"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   35
            Top             =   1800
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Episode2"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   34
            Top             =   1560
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable Episode1"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   33
            Top             =   1320
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Disable custom map cycling"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   32
            Top             =   1080
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Players explode if try to exit"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   31
            Top             =   840
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Players cant exit levels"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   30
            Top             =   600
            Width           =   2535
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Restart on same map"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   29
            Top             =   360
            Width           =   2535
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "Teamplay and options"
         Height          =   2055
         Left            =   -74880
         TabIndex        =   20
         Top             =   360
         Width           =   3615
         Begin VB.CheckBox Check1 
            Caption         =   "Add 2 extra teams"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   27
            Top             =   1680
            Width           =   2535
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Add 1 extra team"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   26
            Top             =   1440
            Width           =   2535
         End
         Begin VB.CheckBox Check1 
            Caption         =   "CTF2 (locked team CTF2 = 2147)"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   25
            Top             =   1200
            Width           =   2895
         End
         Begin VB.CheckBox Check1 
            Caption         =   "CTF-MP"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   24
            Top             =   960
            Width           =   2535
         End
         Begin VB.CheckBox Check1 
            Caption         =   "TAG"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   23
            Top             =   720
            Width           =   2535
         End
         Begin VB.CheckBox Check1 
            Caption         =   "CTF (locked team CTF = 355)"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   22
            Top             =   480
            Width           =   2535
         End
         Begin VB.CheckBox Check1 
            Caption         =   "BLANK"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   21
            Top             =   240
            Width           =   2535
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Server options"
         Height          =   2295
         Left            =   120
         TabIndex        =   1
         Top             =   480
         Width           =   6495
         Begin VB.CheckBox options 
            Caption         =   "Disable Bots"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   16
            Top             =   240
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Runes"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   15
            Top             =   480
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable SuperWeapons 9,0"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   14
            Top             =   720
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Extra Weapons"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   13
            Top             =   960
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Voting"
            Height          =   255
            Index           =   8
            Left            =   3240
            TabIndex        =   12
            Top             =   240
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Lights OUT modes"
            Height          =   255
            Index           =   9
            Left            =   3240
            TabIndex        =   11
            Top             =   480
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Bot Level Migration"
            Height          =   255
            Index           =   10
            Left            =   3240
            TabIndex        =   10
            Top             =   720
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Grappling Hook"
            Height          =   255
            Index           =   11
            Left            =   3240
            TabIndex        =   9
            Top             =   960
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable RUNE dropping"
            Height          =   255
            Index           =   12
            Left            =   3240
            TabIndex        =   8
            Top             =   1200
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "DUEL mode (must type ready)"
            Height          =   255
            Index           =   13
            Left            =   3240
            TabIndex        =   7
            Top             =   1440
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable fair start(invicible for 5)"
            Height          =   255
            Index           =   14
            Left            =   3240
            TabIndex        =   6
            Top             =   1680
            Width           =   3135
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Radar"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   5
            Top             =   1200
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Disable Skins"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   4
            Top             =   1440
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Timed Server Switching"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   3
            Top             =   1680
            Width           =   2415
         End
         Begin VB.CheckBox options 
            Caption         =   "Experience mode (not Frags)"
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   2
            Top             =   1920
            Width           =   2415
         End
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Left            =   -71025
         TabIndex        =   74
         Top             =   2040
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "Text1"
         BuddyDispid     =   196613
         OrigLeft        =   2760
         OrigTop         =   2520
         OrigRight       =   3000
         OrigBottom      =   2775
         Max             =   100
         SyncBuddy       =   -1  'True
         BuddyProperty   =   65547
         Enabled         =   -1  'True
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Anti-camp variable:"
         Height          =   255
         Index           =   0
         Left            =   -73920
         TabIndex        =   76
         Top             =   2400
         Width           =   2175
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Caption         =   "Damage multiplier in percentage:"
         Height          =   255
         Index           =   0
         Left            =   -74400
         TabIndex        =   72
         Top             =   2040
         Width           =   2775
      End
   End
End
Attribute VB_Name = "RequiemSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub Command1_Click()
Dim t As Long
Dim k As New progress
k.Label.Caption = "Configuring server..."
k.Visible = True
k.refresh

t = 0
For o = 0 To 14
t = t + (2 ^ o) * options(o).Value
k.perc = o
DoEvents
Next
Main.servRconAns "serverinfo options " & t
t = 0

For o = 0 To 15
t = t + (2 ^ o) * deathmatch(o).Value
k.perc = o + 15
DoEvents
Next
Main.servRconAns "deathmatch " & t
t = 0

t = 99
For o = 0 To 6
t = t + (2 ^ (o + 7)) * Check1(o).Value
k.perc = 31 + o
DoEvents
Next
Main.servRconAns "teamplay " & t

t = 0
For o = 0 To 14
t = t + (2 ^ o) * Check2(o).Value
k.perc = o + 40
DoEvents
Next
Main.servRconAns "samelevel " & t

nb = (3 - nbots.Value)
sk = (5 - skill.Value)

t = (2 ^ nb) * (2 ^ (sk * 4))
Main.servRconAns "serverinfo others " & t
k.perc = 55

For o = 0 To 2
Main.subst$ motd(o), " ", "_"
Main.servRconAns "serverinfo motd" & (o + 1) & " " & motd(o)
k.perc = 60 + o * 4
Next

k.perc = 70
Main.servRconAns "serverinfo noskill " & (5 - Slider1.Value)
k.perc = 80
Main.servRconAns "serverinfo damage " & Text1.text
k.perc = 90
Main.servRconAns "serverinfo anticamp " & Text2.text


Unload k

End Sub

Private Sub Command2_Click()
Command1_Click
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me
End Sub

Private Sub deathmatch_Click(Index As Integer)
If deathmatch(0).Value = 1 Then
    For o = 1 To 15
    deathmatch(o).Value = 0
    Next
    Else
    deathmatch(0).Value = 0
    End If
End Sub

Private Sub nbots_Change()
n = (3 - nbots.Value)
Select Case n
    Case 0
        botdesc.Caption = "1 Bot"
    Case 1
        botdesc.Caption = "2 Bots"
    Case 2
        botdesc.Caption = "4 Bots"
    Case 3
        botdesc.Caption = "8 Bots"
    End Select
End Sub

Private Sub skill_Change()
Select Case (5 - skill.Value)
    Case 0
        skilldesc.Caption = "Too easy"
    Case 1
        skilldesc.Caption = "Easy"
    Case 2
        skilldesc.Caption = "Medium"
    Case 3
        skilldesc.Caption = "Hard"
    Case 4
        skilldesc.Caption = "Very Hard"
    Case 5
        skilldesc.Caption = "NIGHTMARE!"
    End Select
End Sub

Private Sub Slider1_Change()
'serverinfo noskill 3 //0=baby,1=normal,2=hard,3=nightmare
'                //4=Requiem'sNightmare,5=Requiem'sImpossible
Select Case (5 - Slider1.Value)
    Case 0
        noskilldesc.Caption = "Baby"
    Case 1
        noskilldesc.Caption = "Normal"
    Case 2
        noskilldesc.Caption = "Hard"
    Case 3
        noskilldesc.Caption = "Nightmare"
    Case 4
        noskilldesc.Caption = "Requiem's Nightmare"
    Case 5
        noskilldesc.Caption = "Requiem's Impossible"
    End Select
End Sub

