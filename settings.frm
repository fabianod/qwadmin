VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form SettingForm 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   4845
   ClientLeft      =   1710
   ClientTop       =   2100
   ClientWidth     =   6615
   Icon            =   "settings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4845
   ScaleWidth      =   6615
   Begin TabDlg.SSTab SSTab1 
      Height          =   4335
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6615
      _ExtentX        =   11668
      _ExtentY        =   7646
      _Version        =   393216
      Style           =   1
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "Global settings"
      TabPicture(0)   =   "settings.frx":08CA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label4"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Label3"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Label2"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Label1"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "Label6"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Label5"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).Control(6)=   "Label20"
      Tab(0).Control(6).Enabled=   0   'False
      Tab(0).Control(7)=   "Label12"
      Tab(0).Control(7).Enabled=   0   'False
      Tab(0).Control(8)=   "pausable"
      Tab(0).Control(8).Enabled=   0   'False
      Tab(0).Control(9)=   "mapcheck"
      Tab(0).Control(9).Enabled=   0   'False
      Tab(0).Control(10)=   "Spawn"
      Tab(0).Control(10).Enabled=   0   'False
      Tab(0).Control(11)=   "spectatormessages"
      Tab(0).Control(11).Enabled=   0   'False
      Tab(0).Control(12)=   "colornicks"
      Tab(0).Control(12).Enabled=   0   'False
      Tab(0).Control(13)=   "Watervis"
      Tab(0).Control(13).Enabled=   0   'False
      Tab(0).Control(14)=   "timelimit"
      Tab(0).Control(14).Enabled=   0   'False
      Tab(0).Control(15)=   "Timelimitcheck"
      Tab(0).Control(15).Enabled=   0   'False
      Tab(0).Control(16)=   "fraglimitcheck"
      Tab(0).Control(16).Enabled=   0   'False
      Tab(0).Control(17)=   "fraglimit"
      Tab(0).Control(17).Enabled=   0   'False
      Tab(0).Control(18)=   "spectpassenabled"
      Tab(0).Control(18).Enabled=   0   'False
      Tab(0).Control(19)=   "spectpassword"
      Tab(0).Control(19).Enabled=   0   'False
      Tab(0).Control(20)=   "password"
      Tab(0).Control(20).Enabled=   0   'False
      Tab(0).Control(21)=   "passwordenabled"
      Tab(0).Control(21).Enabled=   0   'False
      Tab(0).Control(22)=   "maxspectators"
      Tab(0).Control(22).Enabled=   0   'False
      Tab(0).Control(23)=   "maxclients"
      Tab(0).Control(23).Enabled=   0   'False
      Tab(0).Control(24)=   "gamedir"
      Tab(0).Control(24).Enabled=   0   'False
      Tab(0).Control(25)=   "svgamedir"
      Tab(0).Control(25).Enabled=   0   'False
      Tab(0).Control(26)=   "map"
      Tab(0).Control(26).Enabled=   0   'False
      Tab(0).Control(27)=   "dm(0)"
      Tab(0).Control(27).Enabled=   0   'False
      Tab(0).Control(28)=   "dm(1)"
      Tab(0).Control(28).Enabled=   0   'False
      Tab(0).Control(29)=   "dm(2)"
      Tab(0).Control(29).Enabled=   0   'False
      Tab(0).Control(30)=   "teamplay"
      Tab(0).Control(30).Enabled=   0   'False
      Tab(0).ControlCount=   31
      TabCaption(1)   =   "Server information"
      TabPicture(1)   =   "settings.frx":08E6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame1"
      Tab(1).Control(1)=   "hostname"
      Tab(1).Control(2)=   "Label8"
      Tab(1).ControlCount=   3
      TabCaption(2)   =   "Masters"
      TabPicture(2)   =   "settings.frx":0902
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "mserver(9)"
      Tab(2).Control(1)=   "mserver(8)"
      Tab(2).Control(2)=   "mserver(7)"
      Tab(2).Control(3)=   "mserver(6)"
      Tab(2).Control(4)=   "mserver(5)"
      Tab(2).Control(5)=   "mserver(4)"
      Tab(2).Control(6)=   "mserver(3)"
      Tab(2).Control(7)=   "mserver(2)"
      Tab(2).Control(8)=   "mserver(1)"
      Tab(2).Control(9)=   "mserver(0)"
      Tab(2).Control(10)=   "Label13"
      Tab(2).ControlCount=   11
      TabCaption(3)   =   "Other options"
      TabPicture(3)   =   "settings.frx":091E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "qizmo512"
      Tab(3).Control(1)=   "qizmo256"
      Tab(3).Control(2)=   "qizmo128"
      Tab(3).Control(3)=   "dlbsp"
      Tab(3).Control(4)=   "dlwav"
      Tab(3).Control(5)=   "dlmdl"
      Tab(3).Control(6)=   "dlskins"
      Tab(3).Control(7)=   "allowdownload"
      Tab(3).Control(8)=   "qizmo64"
      Tab(3).Control(9)=   "qizmo32"
      Tab(3).Control(10)=   "qizmo16"
      Tab(3).Control(11)=   "Qizmo8"
      Tab(3).Control(12)=   "Qizmo4"
      Tab(3).Control(13)=   "enableproxy"
      Tab(3).Control(14)=   "Qizmo2"
      Tab(3).Control(15)=   "Qizmo1"
      Tab(3).Control(16)=   "nummsgs"
      Tab(3).Control(17)=   "msgtime"
      Tab(3).Control(18)=   "shuttime"
      Tab(3).Control(19)=   "floodmsg"
      Tab(3).Control(20)=   "UpDown3"
      Tab(3).Control(21)=   "UpDown2"
      Tab(3).Control(22)=   "UpDown1"
      Tab(3).Control(23)=   "Label7"
      Tab(3).Control(24)=   "Label9"
      Tab(3).Control(25)=   "Label10"
      Tab(3).Control(26)=   "Label11"
      Tab(3).ControlCount=   27
      TabCaption(4)   =   "Server variables"
      TabPicture(4)   =   "settings.frx":093A
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Label17(0)"
      Tab(4).Control(1)=   "Label17(1)"
      Tab(4).Control(2)=   "Label17(2)"
      Tab(4).Control(3)=   "Label17(3)"
      Tab(4).Control(4)=   "Label17(4)"
      Tab(4).Control(5)=   "Label17(5)"
      Tab(4).Control(6)=   "Label17(6)"
      Tab(4).Control(7)=   "Label17(7)"
      Tab(4).Control(8)=   "Label17(8)"
      Tab(4).Control(9)=   "Label17(9)"
      Tab(4).Control(10)=   "Label14"
      Tab(4).Control(11)=   "Label17(10)"
      Tab(4).Control(12)=   "Label17(11)"
      Tab(4).Control(13)=   "Label17(12)"
      Tab(4).Control(14)=   "UpDown4(7)"
      Tab(4).Control(15)=   "UpDown4(1)"
      Tab(4).Control(16)=   "UpDown4(9)"
      Tab(4).Control(17)=   "UpDown4(8)"
      Tab(4).Control(18)=   "UpDown4(12)"
      Tab(4).Control(19)=   "UpDown4(11)"
      Tab(4).Control(20)=   "UpDown4(10)"
      Tab(4).Control(21)=   "UpDown4(6)"
      Tab(4).Control(22)=   "UpDown4(5)"
      Tab(4).Control(23)=   "UpDown4(4)"
      Tab(4).Control(24)=   "UpDown4(3)"
      Tab(4).Control(25)=   "UpDown4(2)"
      Tab(4).Control(26)=   "UpDown4(0)"
      Tab(4).Control(27)=   "sv(0)"
      Tab(4).Control(28)=   "sv(1)"
      Tab(4).Control(29)=   "sv(2)"
      Tab(4).Control(30)=   "sv(3)"
      Tab(4).Control(31)=   "sv(4)"
      Tab(4).Control(32)=   "sv(5)"
      Tab(4).Control(33)=   "sv(6)"
      Tab(4).Control(34)=   "sv(7)"
      Tab(4).Control(35)=   "sv(8)"
      Tab(4).Control(36)=   "sv(9)"
      Tab(4).Control(37)=   "sv(10)"
      Tab(4).Control(38)=   "sv(11)"
      Tab(4).Control(39)=   "sv(12)"
      Tab(4).Control(40)=   "phs"
      Tab(4).ControlCount=   41
      Begin VB.CheckBox qizmo512 
         Caption         =   "Color forcing (.color)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   133
         Top             =   3000
         Width           =   3015
      End
      Begin VB.CheckBox qizmo256 
         Caption         =   "Skin forcing (.skin)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   132
         Top             =   2760
         Width           =   2895
      End
      Begin VB.CheckBox qizmo128 
         Caption         =   "Hide pointing (%t %x %y %j %k %m)"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   131
         Top             =   2520
         Width           =   2895
      End
      Begin VB.Frame Frame1 
         Caption         =   "Advanced information"
         Height          =   3135
         Left            =   -74880
         TabIndex        =   110
         Top             =   960
         Width           =   6375
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   7
            Left            =   840
            TabIndex        =   126
            Tag             =   "motd2"
            Top             =   2640
            Width           =   5415
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   6
            Left            =   840
            TabIndex        =   124
            Tag             =   "motd1"
            Top             =   2280
            Width           =   5415
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   5
            Left            =   2160
            TabIndex        =   122
            Tag             =   "Other"
            Top             =   1800
            Width           =   4095
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   4
            Left            =   2160
            TabIndex        =   120
            Tag             =   "INFO"
            Top             =   1440
            Width           =   4095
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   3
            Left            =   2160
            TabIndex        =   118
            Tag             =   "LOCATION"
            Top             =   1080
            Width           =   4095
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   2
            Left            =   2160
            TabIndex        =   116
            Tag             =   "WWW"
            Top             =   720
            Width           =   4095
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   1
            Left            =   4920
            TabIndex        =   114
            Tag             =   "ICQ"
            Top             =   360
            Width           =   1335
         End
         Begin VB.TextBox sinfo 
            Height          =   285
            Index           =   0
            Left            =   2160
            TabIndex        =   112
            Tag             =   "EMAIL"
            Top             =   360
            Width           =   1935
         End
         Begin VB.Label Label15 
            Caption         =   "MOTD2"
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   125
            Top             =   2640
            Width           =   735
         End
         Begin VB.Label Label15 
            Caption         =   "MOTD1"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   123
            Top             =   2280
            Width           =   735
         End
         Begin VB.Label Label15 
            Caption         =   "Other information:"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   121
            Top             =   1800
            Width           =   2055
         End
         Begin VB.Label Label15 
            Caption         =   "Cpu, memory and bandwidth"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   119
            Top             =   1440
            Width           =   2055
         End
         Begin VB.Label Label15 
            Caption         =   "Location (Country/City)"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   117
            Top             =   1080
            Width           =   1815
         End
         Begin VB.Label Label15 
            Caption         =   "Server's homepage:"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   115
            Top             =   720
            Width           =   1575
         End
         Begin VB.Label Label15 
            Caption         =   "ICQ uin:"
            Height          =   255
            Index           =   1
            Left            =   4320
            TabIndex        =   113
            Top             =   360
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Administrator's email:"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   111
            Top             =   360
            Width           =   1575
         End
      End
      Begin VB.CheckBox dlbsp 
         Caption         =   "Allow to download maps (*.BSP)"
         Height          =   195
         Left            =   -74640
         TabIndex        =   109
         Top             =   3600
         Width           =   2775
      End
      Begin VB.CheckBox dlwav 
         Caption         =   "Allow to download sounds (*.WAV)"
         Height          =   255
         Left            =   -74640
         TabIndex        =   108
         Top             =   3360
         Width           =   2895
      End
      Begin VB.CheckBox dlmdl 
         Caption         =   "Allow to download models (*.MDL)"
         Height          =   255
         Left            =   -74640
         TabIndex        =   107
         Top             =   3120
         Width           =   2775
      End
      Begin VB.CheckBox dlskins 
         Caption         =   "Allow to download skins (*.PCX)"
         Height          =   255
         Left            =   -74640
         TabIndex        =   106
         Top             =   2880
         Width           =   2775
      End
      Begin VB.CheckBox allowdownload 
         Caption         =   "Allow client to download files"
         Height          =   255
         Left            =   -74760
         TabIndex        =   105
         Top             =   2640
         Width           =   2655
      End
      Begin VB.CheckBox phs 
         Caption         =   "Build PHS table"
         Height          =   255
         Left            =   -70920
         TabIndex        =   104
         Tag             =   "sv_phs"
         Top             =   3120
         Width           =   1935
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   12
         Left            =   -69360
         TabIndex        =   99
         Top             =   2760
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   11
         Left            =   -69360
         TabIndex        =   97
         Top             =   2400
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   10
         Left            =   -69360
         TabIndex        =   95
         Top             =   2040
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   9
         Left            =   -69360
         TabIndex        =   84
         Top             =   1680
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   8
         Left            =   -69360
         TabIndex        =   83
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   7
         Left            =   -69360
         TabIndex        =   82
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   6
         Left            =   -72480
         TabIndex        =   80
         Top             =   3120
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   5
         Left            =   -72480
         TabIndex        =   78
         Top             =   2760
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   4
         Left            =   -72480
         TabIndex        =   76
         Top             =   2400
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   3
         Left            =   -72480
         TabIndex        =   74
         Top             =   2040
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   2
         Left            =   -72480
         TabIndex        =   72
         Top             =   1680
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   1
         Left            =   -72480
         TabIndex        =   71
         Top             =   1320
         Width           =   615
      End
      Begin VB.TextBox sv 
         Height          =   285
         Index           =   0
         Left            =   -72480
         TabIndex        =   69
         Top             =   960
         Width           =   615
      End
      Begin VB.TextBox teamplay 
         Height          =   285
         Left            =   4800
         TabIndex        =   66
         Top             =   3600
         Width           =   1455
      End
      Begin VB.OptionButton dm 
         Caption         =   "Deathmatch 3"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   65
         ToolTipText     =   $"settings.frx":0956
         Top             =   1800
         Width           =   1335
      End
      Begin VB.OptionButton dm 
         Caption         =   "Deathmatch 2"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   64
         ToolTipText     =   "Deathmatch 2 leaves weapons on the map. You can only pick up a weapon once. Ammunition, artifacts and armor do not respawn."
         Top             =   1560
         Width           =   1335
      End
      Begin VB.OptionButton dm 
         Caption         =   "Deathmatch 1"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   63
         ToolTipText     =   "Deathmatch 1 is normal deathmatch; all items, weapons, and powerups can be picked up and respawn. Ammo respawns after 30 seconds. "
         Top             =   1320
         Width           =   1335
      End
      Begin VB.TextBox map 
         Height          =   285
         Left            =   4800
         TabIndex        =   62
         Top             =   3240
         Width           =   1455
      End
      Begin VB.ComboBox svgamedir 
         Height          =   315
         ItemData        =   "settings.frx":09FA
         Left            =   4800
         List            =   "settings.frx":0A0A
         TabIndex        =   61
         Text            =   "svgamedir"
         Top             =   2880
         Width           =   1455
      End
      Begin VB.ComboBox gamedir 
         Height          =   315
         ItemData        =   "settings.frx":0A29
         Left            =   4800
         List            =   "settings.frx":0A4E
         TabIndex        =   59
         Text            =   "gamedir"
         Top             =   2520
         Width           =   1455
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   9
         Left            =   -74760
         TabIndex        =   58
         Top             =   3240
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   8
         Left            =   -74760
         TabIndex        =   57
         Top             =   3000
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   7
         Left            =   -74760
         TabIndex        =   56
         Top             =   2760
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   6
         Left            =   -74760
         TabIndex        =   55
         Top             =   2520
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   5
         Left            =   -74760
         TabIndex        =   54
         Top             =   2280
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   4
         Left            =   -74760
         TabIndex        =   53
         Top             =   2040
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   3
         Left            =   -74760
         TabIndex        =   52
         Top             =   1800
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   2
         Left            =   -74760
         TabIndex        =   51
         Top             =   1560
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   1
         Left            =   -74760
         TabIndex        =   50
         Top             =   1320
         Width           =   5655
      End
      Begin VB.CheckBox mserver 
         Caption         =   "id Master (Main general puropose master for any type of server)"
         Enabled         =   0   'False
         Height          =   255
         Index           =   0
         Left            =   -74760
         TabIndex        =   48
         Top             =   1080
         Width           =   5655
      End
      Begin VB.CheckBox qizmo64 
         Caption         =   "Disable player<->spectator msgs"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   47
         Top             =   2280
         Width           =   2775
      End
      Begin VB.CheckBox qizmo32 
         Caption         =   "Disable %e enemy vicinity reporting "
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   46
         Top             =   2040
         Width           =   2775
      End
      Begin VB.CheckBox qizmo16 
         Caption         =   "Reports any changes in lag settings"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   45
         Top             =   1800
         Width           =   2895
      End
      Begin VB.CheckBox Qizmo8 
         Caption         =   "Disable use of lag features"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   44
         Top             =   1560
         Width           =   2655
      End
      Begin VB.CheckBox Qizmo4 
         Caption         =   "Disable use of soundtrigger"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   43
         Top             =   1320
         Width           =   2775
      End
      Begin VB.CheckBox enableproxy 
         Caption         =   "Limit qizmo / cheapo proxy functions"
         Height          =   255
         Left            =   -71640
         TabIndex        =   42
         Top             =   600
         Width           =   3135
      End
      Begin VB.CheckBox Qizmo2 
         Caption         =   "Disable use of powerup timer"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   41
         Top             =   1080
         Width           =   2775
      End
      Begin VB.CheckBox Qizmo1 
         Caption         =   "Disable %-macro messages"
         Enabled         =   0   'False
         Height          =   255
         Left            =   -71400
         TabIndex        =   40
         Top             =   840
         Width           =   2655
      End
      Begin VB.TextBox nummsgs 
         Height          =   285
         Left            =   -72720
         TabIndex        =   35
         Top             =   480
         Width           =   375
      End
      Begin VB.TextBox msgtime 
         Height          =   285
         Left            =   -72720
         TabIndex        =   34
         Top             =   840
         Width           =   375
      End
      Begin VB.TextBox shuttime 
         Height          =   285
         Left            =   -72720
         TabIndex        =   33
         Top             =   1200
         Width           =   375
      End
      Begin VB.TextBox floodmsg 
         Height          =   285
         Left            =   -74880
         TabIndex        =   32
         Top             =   2040
         Width           =   3135
      End
      Begin VB.TextBox maxclients 
         Height          =   285
         Left            =   1440
         TabIndex        =   18
         Top             =   480
         Width           =   495
      End
      Begin VB.TextBox maxspectators 
         Height          =   285
         Left            =   1440
         TabIndex        =   17
         Top             =   840
         Width           =   495
      End
      Begin VB.CheckBox passwordenabled 
         Alignment       =   1  'Right Justify
         Caption         =   "Check1"
         Height          =   255
         Left            =   3720
         TabIndex        =   16
         Top             =   480
         Width           =   255
      End
      Begin VB.TextBox password 
         Height          =   285
         Left            =   4080
         TabIndex        =   15
         Top             =   480
         Width           =   1695
      End
      Begin VB.TextBox spectpassword 
         Height          =   285
         Left            =   4080
         TabIndex        =   14
         Top             =   840
         Width           =   1695
      End
      Begin VB.CheckBox spectpassenabled 
         Alignment       =   1  'Right Justify
         Caption         =   "Check1"
         Height          =   255
         Left            =   3720
         TabIndex        =   13
         Top             =   840
         Width           =   255
      End
      Begin VB.TextBox fraglimit 
         Height          =   285
         Left            =   4080
         TabIndex        =   12
         Top             =   1200
         Width           =   495
      End
      Begin VB.CheckBox fraglimitcheck 
         Alignment       =   1  'Right Justify
         Caption         =   "Fraglimit"
         Height          =   255
         Left            =   3000
         TabIndex        =   11
         Top             =   1200
         Width           =   975
      End
      Begin VB.CheckBox Timelimitcheck 
         Alignment       =   1  'Right Justify
         Caption         =   "Timelimit"
         Height          =   255
         Left            =   3000
         TabIndex        =   10
         Top             =   1560
         Width           =   975
      End
      Begin VB.TextBox timelimit 
         Height          =   285
         Left            =   4080
         TabIndex        =   9
         Top             =   1560
         Width           =   495
      End
      Begin VB.TextBox hostname 
         Height          =   285
         Left            =   -73800
         TabIndex        =   7
         ToolTipText     =   "This allows GameSpy and PingTool to describe your server."
         Top             =   600
         Width           =   5175
      End
      Begin VB.CheckBox Watervis 
         Caption         =   "Watervis enabled"
         Height          =   255
         Left            =   240
         TabIndex        =   6
         Top             =   3360
         Width           =   2655
      End
      Begin VB.CheckBox colornicks 
         Caption         =   "Allow colorised name players"
         Height          =   255
         Left            =   240
         TabIndex        =   5
         Top             =   3120
         Width           =   2895
      End
      Begin VB.CheckBox spectatormessages 
         Caption         =   "Players will see spectators messages"
         Height          =   255
         Left            =   240
         TabIndex        =   4
         Top             =   2880
         Width           =   3135
      End
      Begin VB.CheckBox Spawn 
         Caption         =   "Spawn"
         Height          =   255
         Left            =   240
         TabIndex        =   3
         Top             =   2640
         Width           =   2175
      End
      Begin VB.CheckBox mapcheck 
         Caption         =   "SV_MAPCHECK (checks client maps)"
         Height          =   255
         Left            =   240
         TabIndex        =   2
         Top             =   2160
         Width           =   3015
      End
      Begin VB.CheckBox pausable 
         Caption         =   "Server is pausable"
         Height          =   255
         Left            =   240
         TabIndex        =   1
         Top             =   2400
         Width           =   2055
      End
      Begin ComCtl2.UpDown UpDown3 
         Height          =   255
         Left            =   -72360
         TabIndex        =   29
         Top             =   1200
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown2 
         Height          =   255
         Left            =   -72360
         TabIndex        =   30
         Top             =   840
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   255
         Left            =   -72360
         TabIndex        =   31
         Top             =   480
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   0
         Left            =   -71880
         TabIndex        =   70
         Tag             =   "0.1"
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   960
         OrigRight       =   3240
         OrigBottom      =   1245
         Max             =   5
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   2
         Left            =   -71880
         TabIndex        =   73
         Tag             =   "1"
         Top             =   1680
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   1680
         OrigRight       =   3240
         OrigBottom      =   1965
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   3
         Left            =   -71880
         TabIndex        =   75
         Tag             =   "1"
         Top             =   2040
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   2040
         OrigRight       =   3240
         OrigBottom      =   2325
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   4
         Left            =   -71880
         TabIndex        =   77
         Tag             =   "10"
         Top             =   2400
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   2400
         OrigRight       =   3240
         OrigBottom      =   2685
         Max             =   1000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   5
         Left            =   -71880
         TabIndex        =   79
         Tag             =   "100"
         Top             =   2760
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   2760
         OrigRight       =   3240
         OrigBottom      =   3045
         Max             =   10000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   6
         Left            =   -71880
         TabIndex        =   81
         Tag             =   "10"
         Top             =   3120
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   3120
         OrigRight       =   3240
         OrigBottom      =   3405
         Max             =   1000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   10
         Left            =   -68760
         TabIndex        =   96
         Tag             =   "1"
         Top             =   2040
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   6120
         OrigTop         =   2040
         OrigRight       =   6360
         OrigBottom      =   2325
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   11
         Left            =   -68760
         TabIndex        =   98
         Tag             =   "0.05"
         Top             =   2400
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   6120
         OrigTop         =   2400
         OrigRight       =   6360
         OrigBottom      =   2685
         Max             =   2
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   12
         Left            =   -68760
         TabIndex        =   100
         Tag             =   "0.05"
         Top             =   2760
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   6120
         OrigTop         =   2760
         OrigRight       =   6360
         OrigBottom      =   3045
         Max             =   2
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   8
         Left            =   -68760
         TabIndex        =   127
         Tag             =   "0.01"
         Top             =   1320
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   1320
         OrigRight       =   3240
         OrigBottom      =   1605
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   9
         Left            =   -68760
         TabIndex        =   128
         Tag             =   "0.01"
         Top             =   1680
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   1680
         OrigRight       =   3240
         OrigBottom      =   1965
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   1
         Left            =   -71880
         TabIndex        =   129
         Tag             =   "1"
         Top             =   1320
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   1320
         OrigRight       =   3240
         OrigBottom      =   1605
         Max             =   20
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown4 
         Height          =   285
         Index           =   7
         Left            =   -68760
         TabIndex        =   130
         Tag             =   "0.01"
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         OrigLeft        =   3000
         OrigTop         =   1320
         OrigRight       =   3240
         OrigBottom      =   1605
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Maximum tick time:"
         Height          =   255
         Index           =   12
         Left            =   -71520
         TabIndex        =   103
         Tag             =   "sv_maxtic"
         Top             =   2760
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Minimum tick time:"
         Height          =   255
         Index           =   11
         Left            =   -71520
         TabIndex        =   102
         Tag             =   "sv_mintic"
         Top             =   2400
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Stop speed:"
         Height          =   255
         Index           =   10
         Left            =   -71520
         TabIndex        =   101
         Tag             =   "sv_stopspeed"
         Top             =   2040
         Width           =   2055
      End
      Begin VB.Label Label14 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "(*) Some mods like TF won't allow to change their gravity setting"
         Height          =   255
         Left            =   -74880
         TabIndex        =   94
         Top             =   3720
         Width           =   6375
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Acceleration in water:"
         Height          =   255
         Index           =   9
         Left            =   -71520
         TabIndex        =   93
         Tag             =   "sv_wateraccelerate"
         Top             =   1680
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Acceleration in air:"
         Height          =   255
         Index           =   8
         Left            =   -71520
         TabIndex        =   92
         Tag             =   "sv_airaccelerate"
         Top             =   1320
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Acceleration in ground:"
         Height          =   255
         Index           =   7
         Left            =   -71520
         TabIndex        =   91
         Tag             =   "sv_accelerate"
         Top             =   960
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Maximum spectator speed:"
         Height          =   255
         Index           =   6
         Left            =   -74640
         TabIndex        =   90
         Tag             =   "sv_spectatormaxspeed"
         Top             =   3120
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Maximum object speed:"
         Height          =   255
         Index           =   5
         Left            =   -74640
         TabIndex        =   89
         Tag             =   "sv_maxvelocity"
         Top             =   2760
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Maximum player speed:"
         Height          =   255
         Index           =   4
         Left            =   -74640
         TabIndex        =   88
         Tag             =   "sv_maxspeed"
         Top             =   2400
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Water friction:"
         Height          =   255
         Index           =   3
         Left            =   -74640
         TabIndex        =   87
         Tag             =   "sv_waterfriction"
         Top             =   2040
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Friction:"
         Height          =   255
         Index           =   2
         Left            =   -74640
         TabIndex        =   86
         Tag             =   "sv_friction"
         Top             =   1680
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Server's gravity (*):"
         Height          =   255
         Index           =   1
         Left            =   -74640
         TabIndex        =   85
         Tag             =   "sv_gravity"
         Top             =   1320
         Width           =   2055
      End
      Begin VB.Label Label17 
         Alignment       =   1  'Right Justify
         Caption         =   "Server's aiming area"
         Height          =   255
         Index           =   0
         Left            =   -74640
         TabIndex        =   68
         Tag             =   "sv_aim"
         Top             =   960
         Width           =   2055
      End
      Begin VB.Label Label12 
         Alignment       =   1  'Right Justify
         Caption         =   "Teamplay:"
         Height          =   255
         Left            =   3720
         TabIndex        =   67
         Top             =   3600
         Width           =   975
      End
      Begin VB.Label Label20 
         Alignment       =   1  'Right Justify
         Caption         =   "Client gamedir:"
         Height          =   255
         Left            =   3600
         TabIndex        =   60
         Top             =   2880
         Width           =   1095
      End
      Begin VB.Label Label13 
         Caption         =   $"settings.frx":0AA5
         Height          =   615
         Left            =   -74880
         TabIndex        =   49
         Top             =   360
         Width           =   6255
      End
      Begin VB.Label Label7 
         Caption         =   "Number of messages allowed"
         Height          =   255
         Left            =   -74880
         TabIndex        =   39
         Top             =   480
         Width           =   2295
      End
      Begin VB.Label Label9 
         Caption         =   "In the ammount of time (secs)"
         Height          =   255
         Left            =   -74880
         TabIndex        =   38
         Top             =   840
         Width           =   2175
      End
      Begin VB.Label Label10 
         Caption         =   "If not, shut them up for (secs)"
         Height          =   255
         Left            =   -74880
         TabIndex        =   37
         Top             =   1200
         Width           =   2295
      End
      Begin VB.Label Label11 
         Caption         =   "And display this message:"
         Height          =   255
         Left            =   -74400
         TabIndex        =   36
         Top             =   1800
         Width           =   1935
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "Server gamedir:"
         Height          =   255
         Left            =   3360
         TabIndex        =   24
         Top             =   2520
         Width           =   1335
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         Caption         =   "Map:"
         Height          =   255
         Left            =   4200
         TabIndex        =   23
         Top             =   3240
         Width           =   495
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Maxclients"
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Maxspectators"
         Height          =   255
         Left            =   120
         TabIndex        =   21
         Top             =   840
         Width           =   1215
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Caption         =   "Player password"
         Height          =   255
         Left            =   2400
         TabIndex        =   20
         Top             =   480
         Width           =   1215
      End
      Begin VB.Label Label4 
         Alignment       =   1  'Right Justify
         Caption         =   "Spectator pass"
         Height          =   255
         Left            =   2280
         TabIndex        =   19
         Top             =   840
         Width           =   1335
      End
      Begin VB.Label Label8 
         Caption         =   "Hostname"
         Height          =   255
         Left            =   -74880
         TabIndex        =   8
         Top             =   600
         Width           =   975
      End
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   120
      TabIndex        =   28
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton OK 
      Caption         =   "Apply"
      Height          =   375
      Left            =   2640
      TabIndex        =   27
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton Cancel 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5280
      TabIndex        =   26
      Top             =   4440
      Width           =   1215
   End
   Begin VB.CommandButton refreshit 
      Caption         =   "Refresh"
      Height          =   375
      Left            =   3960
      TabIndex        =   25
      Top             =   4440
      Width           =   1215
   End
End
Attribute VB_Name = "SettingForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public NeedToRestart As Boolean


Private Sub aim_Change()
ChangedSetting(10) = True
NeedToRestart = True

End Sub

Private Sub allowdownload_Click()
ChangedSetting(15) = True

If allowdownload.Value = 1 Then
    dlskins.Enabled = True
    dlmdl.Enabled = True
    dlbsp.Enabled = True
    dlwav.Enabled = True
    Else
    dlskins.Enabled = False
    dlmdl.Enabled = False
    dlbsp.Enabled = False
    dlwav.Enabled = False
    End If
End Sub

Private Sub Cancel_Click()
SettingForm.Visible = False
End Sub

Public Sub Apply_Click()
Main.ServerMessage ("Restarting server with map: " + map.text)
dum$ = Main.servRconAns$("gamedir " + gamedir.text)
dum$ = Main.servRconAns$("map " + map.text)
End Sub

Private Sub fraglogenable_Click()
If fraglogenable.Value = 1 Then
    fraglog.Enabled = True
    Else
    fraglog.Enabled = False
    End If
End Sub

Private Sub Command1_Click()
OK_Click
Cancel_Click
End Sub

Private Sub dlbsp_Click()
ChangedSetting(15) = True

End Sub

Private Sub dlmdl_Click()
ChangedSetting(15) = True

End Sub

Private Sub dlskins_Click()
ChangedSetting(15) = True

End Sub

Private Sub dlwav_Click()
ChangedSetting(15) = True

End Sub

Private Sub dm_Click(Index As Integer)
ChangedSetting(7) = True

End Sub

Private Sub enableproxy_Click()
ChangedSetting(1) = True

If enableproxy.Value = 1 Then
    Qizmo1.Enabled = True
    Qizmo2.Enabled = True
    Qizmo4.Enabled = True
    Qizmo8.Enabled = True
    qizmo16.Enabled = True
    qizmo32.Enabled = True
    qizmo64.Enabled = True
    qizmo128.Enabled = True
    qizmo256.Enabled = True
    qizmo512.Enabled = True
    Else
    Qizmo1.Enabled = False
    Qizmo2.Enabled = False
    Qizmo4.Enabled = False
    Qizmo8.Enabled = False
    qizmo16.Enabled = False
    qizmo32.Enabled = False
    qizmo64.Enabled = False
    qizmo128.Enabled = False
    qizmo256.Enabled = False
    qizmo512.Enabled = False
    End If
End Sub

Private Sub floodmsg_Change()
ChangedSetting(9) = True
End Sub

Private Sub Form_Load()


mserver(0).Tag = "192.246.40.37:27000"
mserver(0).Caption = "id Master (Main general puropose master for any type of server)"
mserver(1).Tag = "192.246.40.37:27006"
mserver(1).Caption = "id Deathmatch (id Software run master for deathmatch servers)"
mserver(2).Tag = "192.246.40.37:27002"
mserver(2).Caption = "id CTF (id Software run master for CTF servers)"
mserver(3).Tag = "192.246.40.37:27003"
mserver(3).Caption = "id Team Fortress (id Software run master for Team Fortress servers)"
mserver(4).Tag = "192.246.40.37:27004"
mserver(4).Caption = "id Experimental (id Software run master for Experiemntal servers)"
mserver(5).Tag = "204.182.161.2:27000"
mserver(5).Caption = "PlanetQuake (PlanetQuake run master for general use)"
mserver(6).Tag = "194.217.251.40:27000"
mserver(6).Caption = "UK & European QW Master Server"
mserver(7).Tag = "194.88.93.12:27000"
mserver(7).Caption = "Australia (General use master server for Australian servers)"
mserver(8).Tag = "200.245.221.200:27000"
mserver(8).Caption = "Brazil (General use master server for South American servers)"
mserver(9).Tag = "194.87.251.3:27000"
mserver(9).Caption = "Russia (General use master server for Russian based servers)"
    
NeedToRestart = False
End Sub

Private Sub fraglimitcheck_Click()
If fraglimitcheck.Value = 1 Then
    fraglimit.Enabled = True
    Else
    fraglimit.text = "0"
    fraglimit.Enabled = False
    End If
End Sub

Private Sub frict_Change()
NeedToRestart = True
End Sub

Public Sub gamedir_click()
NeedToRestart = True
Select Case gamedir.text
    Case "megatf"
        svgamedir.text = "fortress"
    Case "carena"
        svgamedir.text = "arena"
    Case "kombat"
        svgamedir.text = "id1"
    Case Else
        svgamedir.text = gamedir.text
    End Select
End Sub

Private Sub gravity_Change()
ChangedSetting(10) = True
NeedToRestart = True
End Sub

Private Sub hostname_Change()
ChangedSetting(6) = True
    
End Sub

Public Sub map_Change()
NeedToRestart = True
End Sub

Private Sub mapcheck_Click()
ChangedSetting(10) = True
End Sub

Private Sub maxclients_Change()
ChangedSetting(2) = True
End Sub

Private Sub maxclients_LostFocus()

If Val(maxclients.text) > 32 Then
    maxclients.text = 32
    End If
If Val(maxclients.text) < 1 Then
    maxclients.text = 1
    End If
End Sub

Private Sub maxspectators_Change()
ChangedSetting(3) = True
End Sub

Private Sub maxspectators_LostFocus()
If Val(maxspectators.text) > 16 Then
    maxspectators.text = "16"
    End If
If Val(maxspectators.text) < 1 Then
    maxspectators.text = "1"
    End If

End Sub

Private Sub maxspeed_Change()
ChangedSetting(16) = True
NeedToRestart = True
End Sub

Private Sub msgtime_Change()
ChangedSetting(8) = True
b = Int(Val(msgtime.text))
If b < 1 Then b = 1
If b > 10 Then b = 10
msgtime.text = Main.removespaces$(Str$(b))

End Sub

Private Sub nummsgs_Change()
ChangedSetting(8) = True

b = Int(Val(nummsgs.text))
If b < 1 Then b = 1
If b > 10 Then b = 10
nummsgs.text = Main.removespaces$(Str$(b))
End Sub

Public Sub OK_Click()
progress.perc.Value = 0
progress.Label.Caption = "Sending commands to server... please wait."
progress.Visible = True
progress.refresh
progress.Enabled = True
progress.Label.refresh
Main.RefreshLocal

refreshit.Enabled = False
OK.Enabled = False
Cancel.Enabled = False
Command1.Enabled = False
If teamplay.DataChanged Then
    progress.perc.Value = 5
    progress.Label.Caption = "Setting teamplay values...": progress.Label.refresh
    dummy$ = Main.servRconAns$("teamplay " + teamplay.text)
    teamplay.DataChanged = False
    End If
NTR = False
If NeedToRestart = True Then
    a = MsgBox("For the settings you have selected to take effect, the map must be restarted. Restart map now ?", vbYesNo, "Restart map ?")
    If a = vbNo Then
        NTR = False
        Else
        NTR = True
        End If
    If PRO = False Then Main.ServerMessage ("Configuring server settings and restarting map...")
    End If


progress.perc.Value = 10
If ChangedSetting(2) = True Then
    progress.Label.Caption = "Setting maxclients...": progress.Label.refresh
    dummy$ = Main.servRconAns$("maxclients " + maxclients.text)
    ChangedSetting(2) = False
    
    End If

progress.perc.Value = 15
If ChangedSetting(3) = True Then
    progress.Label.Caption = "Setting maxspectators...": progress.Label.refresh
    dummy$ = Main.servRconAns$("maxspectators " + maxspectators.text)
    ChangedSetting(3) = False
    End If

progress.perc.Value = 20
ktk = False
If ChangedSetting(4) = True Then
    k = passwordenabled.Value
    If k Then
        progress.Label.Caption = "Setting game password..."
        dummy$ = Main.servRconAns$("password " + password.text)
        Else
        progress.Label.Caption = "Removing password..."
        dummy$ = Main.servRconAns$("password " + "none")
        End If
    ChangedSetting(4) = False
    ktk = True
    End If
progress.perc.Value = 25

If ChangedSetting(5) = True Then
    k = spectpassenabled.Value
    If k = 1 Then
        progress.Label.Caption = "Setting spectator password..."
        dummy$ = Main.servRconAns$("spectator_password " + spectpassword.text)
        Else
        progress.Label.Caption = "Removing spectator password..."
        dummy$ = Main.servRconAns$("spectator_password " + Chr$(34) + Chr$(34))
        End If
    ChangedSetting(5) = False
    ktk = True
    End If

If ktk Then
    b = spectpassenabled.Value * 2 + passwordenabled.Value
    dummy$ = Main.servRconAns$("serverinfo needpass" + Str$(b))
    ktk = False
    End If

progress.perc.Value = 27
If ChangedSetting(6) = True Then
    progress.Label.Caption = "Setting hostname...": progress.Label.refresh
    hostname.text = Main.subst$(hostname.text, " ", "_")
    dummy$ = Main.servRconAns$("hostname " + Chr$(34) + hostname.text + Chr$(34))
    ChangedSetting(6) = False
    End If
For o = 0 To 7
progress.perc.Value = 28 + o
If sinfo(o).DataChanged And sinfo(o).text > "" Then
    sinfo(o).text = Main.subst(sinfo(o).text, " ", "_")
    If o < 6 Then
        dummy$ = Main.servRconAns$("serverinfo " + sinfo(o).Tag + " " + sinfo(o).text)
        Else
        Main.setinserver2 sinfo(o).Tag, "", sinfo(o).text, ""
        End If
    sinfo(o).DataChanged = False
    End If
Next



progress.perc.Value = 38
If ChangedSetting(7) = True Then
    progress.Label.Caption = "Setting Deathmatch flag...": progress.Label.refresh
    k = Abs(dm.Item(0) * 1 + dm.Item(1) * 2 + dm.Item(2) * 3)
    dummy$ = Main.servRconAns$("deathmatch " + Str$(k))
    ChangedSetting(7) = False
    End If

progress.perc.Value = 40
If ChangedSetting(8) = True Then
    progress.Label.Caption = "Setting message Flood Protection ...": progress.Label.refresh
    dummy$ = Main.servRconAns$("floodprot " + nummsgs.text + " " + msgtime.text + " " + shuttime.text)
    ChangedSetting(8) = False
    End If

progress.perc.Value = 45
If ChangedSetting(9) = True Then
    progress.Label.Caption = "Setting message Flood Protection ...": progress.Label.refresh
    floodmsg.text = Main.subst$(floodmsg.text, " ", "_")
    dummy$ = Main.servRconAns$("floodprotmsg " + floodmsg.text)
    ChangedSetting(9) = False
    End If

progress.Label.Caption = "Setting server vars...": progress.Label.refresh
For o = 0 To 12
progress.perc.Value = 45 + o
If sv(o).DataChanged Then
    dummy$ = Main.servRconAns$(Label17(o).Tag + " " + sv(o).text)
    sv(o).DataChanged = False
    End If
Next
If phs.DataChanged Then dummy$ = Main.servRconAns$("sv_phs " + Str$(phs.Value)): phs.DataChanged = False



If ChangedSetting(10) = True Then
    progress.perc.Value = 60
    dummy$ = Main.servRconAns$("sv_mapcheck " + Main.removespaces$(Str$(mapcheck.Value)))
    End If

If ChangedSetting(1) = True Then
    progress.perc.Value = 61
    If enableproxy.Value = 1 Then
        qizmo = Qizmo1.Value + Qizmo2.Value * 2 + Qizmo4.Value * 4 + Qizmo8.Value * 8 + qizmo16.Value * 16 + qizmo32.Value * 32 + qizmo64.Value * 64 + qizmo128 * 128 + qizmo256 * 256 + qizmo512 * 512
        Else
        qizmo = 0
        End If
    dummy$ = Main.servRconAns$("serverinfo fpd " + Main.removespaces$(Str$(qizmo)))
    changedQizmo = False
    ChangedSetting(1) = False
    End If

' DOWNLOADABLE

If ChangedSetting(15) = True Then
    progress.perc.Value = 62
    progress.Label.Caption = "Setting downloadable components...": progress.Label.refresh
    dummy$ = Main.servRconAns$("allow_download " + Str$(Abs(allowdownload.Value)))
    progress.perc.Value = 63
    dummy$ = Main.servRconAns$("allow_download_skins " + Str$(Abs(dlskins.Value)))
    progress.perc.Value = 64
    dummy$ = Main.servRconAns$("allow_download_models " + Str$(Abs(dlmdl.Value)))
    progress.perc.Value = 65
    dummy$ = Main.servRconAns$("allow_download_sounds " + Str$(Abs(dlwav.Value)))
    progress.perc.Value = 66
    dummy$ = Main.servRconAns$("allow_download_maps " + Str$(Abs(dlbsp.Value)))
    ChangedSetting(15) = False
    End If

progress.perc.Value = 67
progress.Label.Caption = "Setting frag and timelimits...": progress.Label.refresh

If timelimit.DataChanged = True Then
    
If Timelimitcheck.Value Then
    dummy$ = Main.servRconAns$("timelimit " + Str$(Val(timelimit.text)))
    Else
    dummy$ = Main.servRconAns$("timelimit 0")
    End If
    timelimit.DataChanged = False
End If
    
progress.perc.Value = 68
If fraglimit.DataChanged = True Then
    If fraglimitcheck.Value Then
        dummy$ = Main.servRconAns$("fraglimit " + Str$(Val(fraglimit.text)))
        Else
        dummy$ = Main.servRconAns$("fraglimit 0")
        End If
    fraglimit.DataChanged = False
End If

If Watervis.DataChanged Then
    progress.perc.Value = 69
    progress.Label.Caption = "Setting watervis...": progress.Label.refresh
    dummy$ = Main.servRconAns$("watervis " + Str$(Abs(Watervis.Value)))
    Watervis.DataChanged = False
    End If

progress.perc.Value = 70
If ChangedSetting(11) = True Then
    progress.Label.Caption = "Setting pausable...": progress.Label.refresh
    dummy$ = Main.servRconAns$("pausable " + Str$(Abs(pausable.Value)))
    ChangedSetting(11) = False
    End If

progress.perc.Value = 75
If ChangedSetting(13) = True Then
    progress.Label.Caption = "Setting spectator talk...": progress.Label.refresh
    dummy$ = Main.servRconAns$("sv_spectalk " + Str$(Abs(spectatormessages.Value)))
    ChangedSetting(13) = False
    End If

progress.perc.Value = 80
If colornicks.DataChanged Then
    progress.Label.Caption = "Setting color nicks...": progress.Label.refresh
    dummy$ = Main.servRconAns$("sv_highchars " + Str$(Abs(colornicks.Value)))
    colornicks.DataChanged = False
    End If

progress.perc.Value = 85
If ChangedSetting(12) = True Then
    progress.Label.Caption = "Setting spawn...": progress.Label.refresh
    dummy$ = Main.servRconAns$("spawn " + Str$(Abs(Spawn.Value)))
    ChangedSetting(12) = False
    End If

progress.perc.Value = 87
doit = False
For o = 0 To 9
If mserver(o).DataChanged Then doit = True: Exit For
Next
If doit Then
    m$ = ""
    tt = 0
    For o = 0 To 9
    If mserver(o).Value = 1 Then
        m$ = m$ + mserver(o).Tag + " "
        tt = tt + 2 ^ o
        End If
    mserver(o).DataChanged = False
    Next
    dummy$ = Main.servRconAns$("setmaster " + m$)
    dummy$ = Main.servRconAns$("serverinfo QWA_MS " + Str$(tt))
    End If
progress.Label.Caption = "Restarting map... (this can take a couple of seconds)": progress.Label.refresh
If NTR = True Then
    progress.perc.Value = 90
    dummy$ = Main.servRconAns$("gamedir " + gamedir.text)
    dummy$ = Main.servRconAns$("sv_gamedir " + svgamedir.text)
    If NTR = True Then
        progress.perc.Value = 95
        dummy$ = Main.servRconAns$("map " + map.text)
        End If
    NeedToRestart = False
    End If

   
    refreshit.Enabled = True
    Cancel.Enabled = True
    OK.Enabled = True
    Command1.Enabled = True
    progress.Visible = False
'    Main.settings_Click
End Sub

Private Sub password_Change()
ChangedSetting(4) = True
End Sub

Private Sub passwordenabled_Click()
ChangedSetting(4) = True
If passwordenabled.Value = 1 Then
    password.Enabled = True
    Else
    password.Enabled = False
    End If
End Sub

Private Sub pausable_Click()
ChangedSetting(11) = True
End Sub

Private Sub Qizmo1_Click()
ChangedSetting(1) = True

End Sub

Private Sub qizmo16_Click()
ChangedSetting(1) = True

End Sub

Private Sub Qizmo2_Click()
ChangedSetting(1) = True

End Sub

Private Sub qizmo32_Click()
ChangedSetting(1) = True

End Sub

Private Sub Qizmo4_Click()
ChangedSetting(1) = True

End Sub

Private Sub qizmo64_Click()
ChangedSetting(1) = True

End Sub

Private Sub Qizmo8_Click()
ChangedSetting(1) = True

End Sub

Private Sub refreshit_Click()
OK.Enabled = False
Cancel.Enabled = False
refreshit.Enabled = False
Main.settings_Click
End Sub

Private Sub shuttime_Change()
ChangedSetting(8) = True
b = Int(Val(shuttime.text))
If b < 1 Then b = 1
If b > 180 Then b = 180
shuttime.text = Main.removespaces$(Str$(b))
End Sub

Private Sub Spawn_Click()
ChangedSetting(12) = True
End Sub

Private Sub spectatormessages_Click()
ChangedSetting(13) = True

End Sub

Private Sub spectpassenabled_Click()
ChangedSetting(5) = True
If spectpassenabled.Value = 1 Then
    spectpassword.Enabled = True
    Else
    spectpassword.Enabled = False
    End If

End Sub

Private Sub teamplayon_Click()
Select Case teamplayon.Value
    Case 0
        tp2.Enabled = False
        tp4.Enabled = False
        tp8.Enabled = False
        tp16.Enabled = False
        tp32.Enabled = False
        tp64.Enabled = False
        tp128.Enabled = False
        tp256.Enabled = False
        tp512.Enabled = False
        tp1024.Enabled = False
        tp2048.Enabled = False
        tp4096.Enabled = False
    Case 1
        tp2.Enabled = True
        tp4.Enabled = True
        tp8.Enabled = True
        tp16.Enabled = True
        tp32.Enabled = True
        tp64.Enabled = True
        tp128.Enabled = True
        tp256.Enabled = True
        tp512.Enabled = True
        tp1024.Enabled = True
        tp2048.Enabled = True
        tp4096.Enabled = True
    End Select
End Sub

Private Sub spectpassword_Change()
ChangedSetting(5) = True

End Sub

Private Sub TFO_Click()
Main.ShowTFSettings
End Sub

Public Sub svgamedir_Change()
NeedToRestart = True

End Sub

Private Sub Timelimitcheck_Click()
If Timelimitcheck.Value = 1 Then
    timelimit.Enabled = True
    Else
    timelimit.text = "0"
    timelimit.Enabled = False
    End If

End Sub

Private Sub UpDown1_DownClick()
a = Val(nummsgs.text)
nummsgs.text = Str$(a - 1)
End Sub

Private Sub UpDown1_UpClick()
a = Val(nummsgs.text)
nummsgs.text = Str$(a + 1)

End Sub

Private Sub UpDown2_DownClick()
a = Val(msgtime.text)
msgtime.text = Str$(a - 1)

End Sub

Private Sub UpDown2_UpClick()
a = Val(msgtime.text)
msgtime.text = Str$(a + 1)

End Sub

Private Sub UpDown3_DownClick()
a = Val(shuttime.text)
shuttime.text = Str$(a - 1)

End Sub

Private Sub UpDown3_UpClick()
a = Val(shuttime.text)
shuttime.text = Str$(a + 1)
End Sub

Private Sub waterfrict_Change()
ChangedSetting(10) = True
NeedToRestart = True

End Sub

Private Sub UpDown4_DownClick(Index As Integer)
i = Val(UpDown4(Index).Tag)
With sv(Index)
    c = Val(.text)
    If c - i > UpDown4(Index).Min Then
        .text = Main.removespaces$(Str$(c - i))
        End If
End With
End Sub

Private Sub UpDown4_UpClick(Index As Integer)
i = Val(UpDown4(Index).Tag)
With sv(Index)
    c = Val(.text)
    If c + i < UpDown4(Index).max Then
        .text = Main.removespaces$(Str$(c + i))
        End If
End With
End Sub
