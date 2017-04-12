VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form TFSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Teamfortress options"
   ClientHeight    =   5640
   ClientLeft      =   1875
   ClientTop       =   1590
   ClientWidth     =   7020
   Icon            =   "TFSettings2.frx":0000
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   ScaleHeight     =   5640
   ScaleWidth      =   7020
   Begin VB.CommandButton OK 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2520
      TabIndex        =   75
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Close"
      Height          =   375
      Left            =   5400
      TabIndex        =   74
      Top             =   5160
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Apply"
      Height          =   375
      Left            =   3960
      TabIndex        =   73
      Top             =   5160
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   5055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6975
      _ExtentX        =   12303
      _ExtentY        =   8916
      _Version        =   393216
      Style           =   1
      Tabs            =   5
      TabsPerRow      =   5
      TabHeight       =   520
      TabCaption(0)   =   "TF Options"
      TabPicture(0)   =   "TFSettings2.frx":08CA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Frame2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).ControlCount=   1
      TabCaption(1)   =   "TeamPlay"
      TabPicture(1)   =   "TFSettings2.frx":08E6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame4"
      Tab(1).ControlCount=   1
      TabCaption(2)   =   "TF Limitations"
      TabPicture(2)   =   "TFSettings2.frx":0902
      Tab(2).ControlEnabled=   0   'False
      Tab(2).Control(0)=   "Frame1"
      Tab(2).Control(1)=   "Frame5"
      Tab(2).ControlCount=   2
      TabCaption(3)   =   "TF Administration"
      TabPicture(3)   =   "TFSettings2.frx":091E
      Tab(3).ControlEnabled=   0   'False
      Tab(3).Control(0)=   "Frame3"
      Tab(3).ControlCount=   1
      TabCaption(4)   =   "TF Custom skins"
      TabPicture(4)   =   "TFSettings2.frx":093A
      Tab(4).ControlEnabled=   0   'False
      Tab(4).Control(0)=   "Frame6"
      Tab(4).Control(1)=   "Frame7"
      Tab(4).Control(2)=   "Frame8"
      Tab(4).Control(3)=   "Frame9"
      Tab(4).ControlCount=   4
      Begin VB.Frame Frame9 
         Caption         =   "Team 4"
         Height          =   2295
         Left            =   -71520
         TabIndex        =   122
         Top             =   2640
         Width           =   3375
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   35
            Left            =   720
            TabIndex        =   193
            Top             =   1800
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   34
            Left            =   2280
            TabIndex        =   192
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   33
            Left            =   720
            TabIndex        =   189
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   32
            Left            =   2280
            TabIndex        =   188
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   31
            Left            =   720
            TabIndex        =   185
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   30
            Left            =   2280
            TabIndex        =   184
            Top             =   720
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   29
            Left            =   720
            TabIndex        =   181
            Top             =   720
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   28
            Left            =   2280
            TabIndex        =   180
            Top             =   360
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   27
            Left            =   720
            TabIndex        =   177
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label15 
            Caption         =   "Engin."
            Height          =   255
            Index           =   19
            Left            =   120
            TabIndex        =   194
            Top             =   1800
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Spy"
            Height          =   255
            Index           =   15
            Left            =   1800
            TabIndex        =   191
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Pyro"
            Height          =   255
            Index           =   18
            Left            =   120
            TabIndex        =   190
            Top             =   1440
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "hwguy"
            Height          =   255
            Index           =   14
            Left            =   1800
            TabIndex        =   187
            Top             =   1080
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Medic"
            Height          =   255
            Index           =   17
            Left            =   120
            TabIndex        =   186
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Demo"
            Height          =   255
            Index           =   13
            Left            =   1800
            TabIndex        =   183
            Top             =   720
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Soldier"
            Height          =   255
            Index           =   16
            Left            =   120
            TabIndex        =   182
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Sniper"
            Height          =   255
            Index           =   12
            Left            =   1800
            TabIndex        =   179
            Top             =   360
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Scout"
            Height          =   255
            Index           =   15
            Left            =   120
            TabIndex        =   178
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.Frame Frame8 
         Caption         =   "Team 3"
         Height          =   2295
         Left            =   -74880
         TabIndex        =   121
         Top             =   2640
         Width           =   3375
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   26
            Left            =   720
            TabIndex        =   175
            Top             =   1800
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   25
            Left            =   2280
            TabIndex        =   174
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   24
            Left            =   720
            TabIndex        =   171
            Top             =   1440
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   23
            Left            =   2280
            TabIndex        =   170
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   22
            Left            =   720
            TabIndex        =   167
            Top             =   1080
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   21
            Left            =   2280
            TabIndex        =   166
            Top             =   720
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   20
            Left            =   720
            TabIndex        =   163
            Top             =   720
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   19
            Left            =   2280
            TabIndex        =   162
            Top             =   360
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   18
            Left            =   720
            TabIndex        =   159
            Top             =   360
            Width           =   975
         End
         Begin VB.Label Label15 
            Caption         =   "Engin."
            Height          =   255
            Index           =   14
            Left            =   120
            TabIndex        =   176
            Top             =   1800
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Spy"
            Height          =   255
            Index           =   11
            Left            =   1800
            TabIndex        =   173
            Top             =   1440
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Pyro"
            Height          =   255
            Index           =   13
            Left            =   120
            TabIndex        =   172
            Top             =   1440
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "hwguy"
            Height          =   255
            Index           =   10
            Left            =   1800
            TabIndex        =   169
            Top             =   1080
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Medic"
            Height          =   255
            Index           =   12
            Left            =   120
            TabIndex        =   168
            Top             =   1080
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Demo"
            Height          =   255
            Index           =   9
            Left            =   1800
            TabIndex        =   165
            Top             =   720
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Soldier"
            Height          =   255
            Index           =   11
            Left            =   120
            TabIndex        =   164
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Sniper"
            Height          =   255
            Index           =   8
            Left            =   1800
            TabIndex        =   161
            Top             =   360
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Scout"
            Height          =   255
            Index           =   10
            Left            =   120
            TabIndex        =   160
            Top             =   360
            Width           =   735
         End
      End
      Begin VB.Frame Frame7 
         Caption         =   "Team 2"
         Height          =   2175
         Left            =   -71520
         TabIndex        =   120
         Top             =   360
         Width           =   3375
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   17
            Left            =   720
            TabIndex        =   157
            Top             =   1680
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   16
            Left            =   2280
            TabIndex        =   156
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   15
            Left            =   720
            TabIndex        =   153
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   14
            Left            =   2280
            TabIndex        =   152
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   13
            Left            =   720
            TabIndex        =   149
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   12
            Left            =   2280
            TabIndex        =   148
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   11
            Left            =   720
            TabIndex        =   145
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   10
            Left            =   2280
            TabIndex        =   144
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   9
            Left            =   720
            TabIndex        =   141
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label15 
            Caption         =   "Engin."
            Height          =   255
            Index           =   9
            Left            =   120
            TabIndex        =   158
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Spy"
            Height          =   255
            Index           =   7
            Left            =   1800
            TabIndex        =   155
            Top             =   1320
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Pyro"
            Height          =   255
            Index           =   8
            Left            =   120
            TabIndex        =   154
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "hwguy"
            Height          =   255
            Index           =   6
            Left            =   1800
            TabIndex        =   151
            Top             =   960
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Medic"
            Height          =   255
            Index           =   7
            Left            =   120
            TabIndex        =   150
            Top             =   960
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Demo"
            Height          =   255
            Index           =   5
            Left            =   1800
            TabIndex        =   147
            Top             =   600
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Soldier"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   146
            Top             =   600
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Sniper"
            Height          =   255
            Index           =   4
            Left            =   1800
            TabIndex        =   143
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Scout"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   142
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.Frame Frame6 
         Caption         =   "Team 1"
         Height          =   2175
         Left            =   -74880
         TabIndex        =   119
         Top             =   360
         Width           =   3375
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   8
            Left            =   720
            TabIndex        =   139
            Top             =   1680
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   7
            Left            =   2280
            TabIndex        =   138
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   6
            Left            =   720
            TabIndex        =   135
            Top             =   1320
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   5
            Left            =   2280
            TabIndex        =   134
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   4
            Left            =   720
            TabIndex        =   131
            Top             =   960
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   3
            Left            =   2280
            TabIndex        =   130
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   2
            Left            =   720
            TabIndex        =   127
            Top             =   600
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   1
            Left            =   2280
            TabIndex        =   126
            Top             =   240
            Width           =   975
         End
         Begin VB.TextBox skins 
            Height          =   285
            Index           =   0
            Left            =   720
            TabIndex        =   123
            Top             =   240
            Width           =   975
         End
         Begin VB.Label Label15 
            Caption         =   "Engin."
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   140
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Spy"
            Height          =   255
            Index           =   3
            Left            =   1800
            TabIndex        =   137
            Top             =   1320
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Pyro"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   136
            Top             =   1320
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "hwguy"
            Height          =   255
            Index           =   2
            Left            =   1800
            TabIndex        =   133
            Top             =   960
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Medic"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   132
            Top             =   960
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Demo"
            Height          =   255
            Index           =   1
            Left            =   1800
            TabIndex        =   129
            Top             =   600
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Soldier"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   128
            Top             =   600
            Width           =   735
         End
         Begin VB.Label Label16 
            Caption         =   "Sniper"
            Height          =   255
            Index           =   0
            Left            =   1800
            TabIndex        =   125
            Top             =   240
            Width           =   615
         End
         Begin VB.Label Label15 
            Caption         =   "Scout"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   124
            Top             =   240
            Width           =   735
         End
      End
      Begin VB.Frame Frame5 
         Caption         =   "Grenade limitation"
         Height          =   4455
         Left            =   -71640
         TabIndex        =   91
         Top             =   480
         Width           =   3495
         Begin VB.CheckBox Check11 
            Caption         =   "Normal grenade"
            Enabled         =   0   'False
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   118
            Top             =   2880
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   6
            Left            =   1800
            TabIndex        =   117
            Top             =   2880
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Napalm grenades"
            Enabled         =   0   'False
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   115
            Top             =   2520
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   5
            Left            =   1800
            TabIndex        =   114
            Top             =   2520
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Nail grenades"
            Enabled         =   0   'False
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   112
            Top             =   2160
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   4
            Left            =   1800
            TabIndex        =   111
            Top             =   2160
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Mirv grenades"
            Enabled         =   0   'False
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   109
            Top             =   1800
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   3
            Left            =   1800
            TabIndex        =   108
            Top             =   1800
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Gas grenades"
            Enabled         =   0   'False
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   106
            Top             =   1440
            Value           =   1  'Checked
            Width           =   1455
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   2
            Left            =   1800
            TabIndex        =   105
            Top             =   1440
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Flash / Caltrops"
            Enabled         =   0   'False
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   103
            Top             =   1080
            Value           =   1  'Checked
            Width           =   1575
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   1
            Left            =   1800
            TabIndex        =   102
            Top             =   1080
            Width           =   735
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   0
            Left            =   2520
            TabIndex        =   100
            Top             =   720
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin VB.TextBox ngrens11 
            Alignment       =   1  'Right Justify
            Height          =   285
            Index           =   0
            Left            =   1800
            TabIndex        =   99
            Top             =   720
            Width           =   735
         End
         Begin VB.CheckBox Check11 
            Caption         =   "Flares"
            Enabled         =   0   'False
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   98
            Top             =   720
            Value           =   1  'Checked
            Width           =   1215
         End
         Begin VB.CheckBox grenlimit 
            Caption         =   "Enable grenade limitation (per team)"
            Height          =   255
            Left            =   120
            TabIndex        =   92
            Top             =   240
            Value           =   1  'Checked
            Width           =   2895
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   1
            Left            =   2520
            TabIndex        =   101
            Top             =   1080
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   2
            Left            =   2520
            TabIndex        =   104
            Top             =   1440
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   3
            Left            =   2520
            TabIndex        =   107
            Top             =   1800
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   4
            Left            =   2520
            TabIndex        =   110
            Top             =   2160
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   5
            Left            =   2520
            TabIndex        =   113
            Top             =   2520
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDownGren 
            Height          =   285
            Index           =   6
            Left            =   2520
            TabIndex        =   116
            Top             =   2880
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            OrigLeft        =   2296
            OrigTop         =   720
            OrigRight       =   2536
            OrigBottom      =   1005
            Enabled         =   -1  'True
         End
         Begin VB.Line Line1 
            X1              =   120
            X2              =   2880
            Y1              =   600
            Y2              =   600
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "TF 2.9 Administrator password"
         Height          =   3495
         Left            =   -74520
         TabIndex        =   71
         Top             =   660
         Width           =   5775
         Begin VB.TextBox adminpwd 
            Height          =   285
            Left            =   1920
            TabIndex        =   72
            Top             =   360
            Width           =   1935
         End
         Begin VB.Label Label21 
            Caption         =   "listip - list current banned ip's"
            Height          =   255
            Left            =   240
            TabIndex        =   201
            Top             =   3120
            Width           =   5295
         End
         Begin VB.Label Label20 
            Caption         =   "ban - bans selected player"
            Height          =   255
            Left            =   360
            TabIndex        =   200
            Top             =   2640
            Width           =   4575
         End
         Begin VB.Label Label19 
            Caption         =   "kick - kicks selected player"
            Height          =   255
            Left            =   360
            TabIndex        =   199
            Top             =   2400
            Width           =   3615
         End
         Begin VB.Label Label14 
            Caption         =   "ceasefire - (un)pauses current game and nobody will be able to move or fire"
            Height          =   255
            Left            =   240
            TabIndex        =   97
            Top             =   2880
            Width           =   5415
         End
         Begin VB.Label Label9 
            Caption         =   "deal - selects a player from the game and then"
            Height          =   255
            Left            =   240
            TabIndex        =   96
            Top             =   2160
            Width           =   5175
         End
         Begin VB.Label Label2 
            Caption         =   $"TFSettings2.frx":0956
            Height          =   1455
            Left            =   120
            TabIndex        =   95
            Top             =   720
            Width           =   5535
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "TeamFortress Teamplay"
         Height          =   4575
         Left            =   -74880
         TabIndex        =   51
         Top             =   360
         Width           =   6735
         Begin VB.CheckBox tp16384 
            Caption         =   "Team-members take full mirror damage in AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   67
            Top             =   3840
            Width           =   3735
         End
         Begin VB.CheckBox tp8192 
            Caption         =   "Team-members take 1/2 mirror damage in AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   66
            Top             =   3600
            Width           =   3735
         End
         Begin VB.CheckBox tp4096 
            Caption         =   "Team-members take full mirror damage in DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   65
            Top             =   3360
            Width           =   3615
         End
         Begin VB.CheckBox tp16 
            Caption         =   "Team-members take no damage from AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   64
            Top             =   1440
            Width           =   3615
         End
         Begin VB.CheckBox tp8 
            Caption         =   "Team-members take 1/2 damage from AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   63
            Top             =   1200
            Width           =   3615
         End
         Begin VB.CheckBox tp4 
            Caption         =   "Team-members take no damage from DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   62
            Top             =   960
            Width           =   3495
         End
         Begin VB.CheckBox tp2 
            Caption         =   "Team-members take 1/2 damage from DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   61
            Top             =   720
            Width           =   3615
         End
         Begin VB.CheckBox tp2048 
            Caption         =   "Team-members take 1/2 mirror damage in DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   60
            Top             =   3120
            Width           =   3615
         End
         Begin VB.CheckBox tp1024 
            Caption         =   "Team-members lose no armor in AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   59
            Top             =   2880
            Width           =   3495
         End
         Begin VB.CheckBox tp512 
            Caption         =   "Team-members lose 1/2 armor in AAW*"
            Height          =   255
            Left            =   120
            TabIndex        =   58
            Top             =   2640
            Width           =   3495
         End
         Begin VB.CheckBox tp256 
            Caption         =   "Team players lose no armor in DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   57
            Top             =   2400
            Width           =   3495
         End
         Begin VB.CheckBox tp64 
            Caption         =   "Give advantage to team with lower score"
            Height          =   255
            Left            =   120
            TabIndex        =   56
            Top             =   1920
            Width           =   3375
         End
         Begin VB.CheckBox tp128 
            Caption         =   "Team players lose 1/2 armor in DF*"
            Height          =   255
            Left            =   120
            TabIndex        =   55
            Top             =   2160
            Width           =   3615
         End
         Begin VB.CheckBox tp32 
            Caption         =   "Give advantage to team with less players"
            Height          =   255
            Left            =   120
            TabIndex        =   54
            Top             =   1680
            Width           =   3375
         End
         Begin VB.CheckBox tp1 
            Caption         =   "Enable teamplay"
            Height          =   255
            Left            =   120
            TabIndex        =   53
            Top             =   240
            Value           =   1  'Checked
            Width           =   1695
         End
         Begin VB.TextBox teamplay 
            Height          =   285
            Left            =   4440
            TabIndex        =   52
            Top             =   240
            Width           =   1215
         End
         Begin VB.Label Label17 
            Alignment       =   2  'Center
            BackStyle       =   0  'Transparent
            Caption         =   "*AAW = Area Affect Weaponry  /  DF = Direct Fire"
            Height          =   255
            Left            =   120
            TabIndex        =   70
            Top             =   4200
            Width           =   6495
         End
         Begin VB.Line Line6 
            X1              =   120
            X2              =   6720
            Y1              =   600
            Y2              =   600
         End
         Begin VB.Line Line5 
            X1              =   3960
            X2              =   3960
            Y1              =   600
            Y2              =   4080
         End
         Begin VB.Label tpdesc 
            BackStyle       =   0  'Transparent
            Caption         =   "Description"
            BeginProperty Font 
               Name            =   "Small Fonts"
               Size            =   6.75
               Charset         =   0
               Weight          =   400
               Underline       =   0   'False
               Italic          =   0   'False
               Strikethrough   =   0   'False
            EndProperty
            Height          =   3375
            Left            =   4080
            TabIndex        =   69
            Top             =   720
            Width           =   2535
         End
         Begin VB.Label Label12 
            Caption         =   "Teamplay:"
            Height          =   255
            Left            =   3600
            TabIndex        =   68
            Top             =   240
            Width           =   855
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Options"
         Height          =   4215
         Left            =   120
         TabIndex        =   18
         Top             =   360
         Width           =   6735
         Begin ComCtl2.UpDown UpDown12 
            Height          =   285
            Left            =   2175
            TabIndex        =   197
            Top             =   3600
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "rj"
            BuddyDispid     =   196655
            OrigLeft        =   2040
            OrigTop         =   3600
            OrigRight       =   2280
            OrigBottom      =   3855
            Max             =   5
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin VB.TextBox rj 
            Height          =   285
            Left            =   1800
            TabIndex        =   196
            Top             =   3600
            Width           =   375
         End
         Begin VB.CheckBox cmessages 
            Caption         =   "Clan messages"
            Height          =   255
            Left            =   360
            TabIndex        =   195
            Top             =   2640
            Width           =   2055
         End
         Begin VB.CheckBox teamfrag 
            Caption         =   "Frags don't count"
            Height          =   255
            Left            =   120
            TabIndex        =   93
            Top             =   1920
            Width           =   1575
         End
         Begin VB.TextBox pmtime 
            Height          =   285
            Left            =   1440
            TabIndex        =   37
            Top             =   3120
            Width           =   495
         End
         Begin VB.TextBox team4 
            Height          =   285
            Left            =   5280
            MaxLength       =   4
            TabIndex        =   36
            Top             =   3360
            Width           =   975
         End
         Begin VB.TextBox team3 
            Height          =   285
            Left            =   5280
            MaxLength       =   4
            TabIndex        =   35
            Top             =   3000
            Width           =   975
         End
         Begin VB.TextBox team2 
            Height          =   285
            Left            =   5280
            MaxLength       =   4
            TabIndex        =   34
            Top             =   2640
            Width           =   975
         End
         Begin VB.TextBox team1 
            Height          =   285
            Left            =   5280
            MaxLength       =   4
            TabIndex        =   33
            Top             =   2280
            Width           =   975
         End
         Begin VB.CheckBox oldgrens 
            Caption         =   "TF 2.7 Grens"
            Height          =   255
            Left            =   120
            TabIndex        =   32
            Top             =   240
            Width           =   1335
         End
         Begin VB.CheckBox warstandard 
            Caption         =   "New WarStandard"
            Height          =   255
            Left            =   120
            TabIndex        =   31
            Top             =   480
            Width           =   1815
         End
         Begin VB.CheckBox spyinvis 
            Caption         =   "Spy is invisible"
            Height          =   255
            Left            =   120
            TabIndex        =   30
            Top             =   1680
            Width           =   1575
         End
         Begin VB.CheckBox joiningame 
            Caption         =   "Game is closed after prematch"
            Height          =   255
            Left            =   360
            TabIndex        =   29
            Top             =   2880
            Width           =   2895
         End
         Begin VB.CheckBox birthday 
            Caption         =   "Birthday mode"
            Height          =   255
            Left            =   120
            TabIndex        =   28
            Top             =   1200
            Width           =   1935
         End
         Begin VB.CheckBox grapple 
            Caption         =   "Enable grapple hook"
            Height          =   255
            Left            =   120
            TabIndex        =   27
            Top             =   1440
            Width           =   2055
         End
         Begin VB.CheckBox clan 
            Caption         =   "Clan mode"
            Height          =   255
            Left            =   120
            TabIndex        =   26
            Top             =   2400
            Width           =   1095
         End
         Begin VB.CheckBox keysforflags 
            Caption         =   "Use flags instead of keys"
            Height          =   255
            Left            =   120
            TabIndex        =   25
            Top             =   720
            Value           =   1  'Checked
            Width           =   2295
         End
         Begin VB.CheckBox fullteamscore 
            Caption         =   "Caps only"
            Height          =   255
            Left            =   120
            TabIndex        =   24
            Top             =   960
            Width           =   1695
         End
         Begin VB.CheckBox autoteamcheck 
            Caption         =   "Auto server select team after"
            Height          =   255
            Left            =   2880
            TabIndex        =   23
            Top             =   360
            Width           =   2415
         End
         Begin VB.TextBox autoteam 
            Height          =   285
            Left            =   5280
            TabIndex        =   22
            Top             =   360
            Width           =   495
         End
         Begin VB.TextBox RespawnDelay 
            Height          =   285
            Left            =   5280
            TabIndex        =   21
            Top             =   720
            Width           =   495
         End
         Begin VB.TextBox kicktime 
            Height          =   285
            Left            =   5280
            TabIndex        =   20
            Top             =   1680
            Width           =   495
         End
         Begin VB.TextBox fragsallowed 
            Height          =   285
            Left            =   5280
            TabIndex        =   19
            Top             =   1320
            Width           =   495
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   0
            Left            =   1920
            TabIndex        =   38
            Top             =   3120
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "pmtime"
            BuddyDispid     =   196658
            OrigLeft        =   1920
            OrigTop         =   3120
            OrigRight       =   2160
            OrigBottom      =   3375
            Max             =   30
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin VB.Label Label18 
            Alignment       =   1  'Right Justify
            Caption         =   "Rocket jump variable:"
            Height          =   255
            Left            =   120
            TabIndex        =   198
            Top             =   3600
            Width           =   1575
         End
         Begin VB.Label Label1 
            Caption         =   "seconds"
            Height          =   255
            Left            =   5880
            TabIndex        =   94
            Top             =   720
            Width           =   735
         End
         Begin VB.Label Label4 
            Caption         =   "Prematch time:"
            Height          =   255
            Left            =   360
            TabIndex        =   50
            Top             =   3120
            Width           =   1095
         End
         Begin VB.Label Label13 
            Caption         =   "Team4 name:"
            Height          =   255
            Index           =   3
            Left            =   4200
            TabIndex        =   49
            Top             =   3360
            Width           =   975
         End
         Begin VB.Label Label13 
            Caption         =   "Team3 name:"
            Height          =   255
            Index           =   2
            Left            =   4200
            TabIndex        =   48
            Top             =   3000
            Width           =   975
         End
         Begin VB.Label Label3 
            Caption         =   "seconds"
            Height          =   255
            Left            =   5880
            TabIndex        =   47
            Top             =   360
            Width           =   615
         End
         Begin VB.Label Label5 
            Caption         =   "Respawn delay:"
            Height          =   255
            Left            =   4080
            TabIndex        =   46
            Top             =   720
            Width           =   1335
         End
         Begin VB.Label Label6 
            Caption         =   "players in "
            Height          =   255
            Left            =   4440
            TabIndex        =   45
            Top             =   1680
            Width           =   855
         End
         Begin VB.Label Label7 
            Caption         =   "kick you after fragging"
            Height          =   255
            Left            =   3480
            TabIndex        =   44
            Top             =   1320
            Width           =   1695
         End
         Begin VB.Label Label8 
            Caption         =   "seconds"
            Height          =   255
            Left            =   5880
            TabIndex        =   43
            Top             =   1680
            Width           =   735
         End
         Begin VB.Label Label10 
            Caption         =   "friendly"
            Height          =   255
            Left            =   5880
            TabIndex        =   42
            Top             =   1320
            Width           =   615
         End
         Begin VB.Label Label11 
            BackStyle       =   0  'Transparent
            Caption         =   "If you have teamfrags enabled the server will"
            Height          =   255
            Left            =   3360
            TabIndex        =   41
            Top             =   1080
            Width           =   3255
         End
         Begin VB.Label Label13 
            Caption         =   "Team1 name:"
            Height          =   255
            Index           =   0
            Left            =   4200
            TabIndex        =   40
            Top             =   2280
            Width           =   975
         End
         Begin VB.Label Label13 
            Caption         =   "Team2 name:"
            Height          =   255
            Index           =   1
            Left            =   4200
            TabIndex        =   39
            Top             =   2640
            Width           =   975
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Class Limitation"
         Height          =   4455
         Left            =   -74880
         TabIndex        =   1
         Top             =   480
         Width           =   3135
         Begin VB.TextBox nrandom 
            Height          =   285
            Left            =   1320
            TabIndex        =   85
            Top             =   3960
            Width           =   855
         End
         Begin VB.TextBox nengineers 
            Height          =   285
            Left            =   1320
            TabIndex        =   84
            Top             =   3600
            Width           =   855
         End
         Begin VB.TextBox nspys 
            Height          =   285
            Left            =   1320
            TabIndex        =   83
            Top             =   3240
            Width           =   855
         End
         Begin VB.TextBox npyros 
            Height          =   285
            Left            =   1320
            TabIndex        =   82
            Top             =   2880
            Width           =   855
         End
         Begin VB.TextBox nhwguys 
            Height          =   285
            Left            =   1320
            TabIndex        =   81
            Top             =   2520
            Width           =   855
         End
         Begin VB.CheckBox Check10 
            Caption         =   "Random"
            Height          =   255
            Left            =   120
            TabIndex        =   80
            Top             =   3960
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin VB.CheckBox Check9 
            Caption         =   "Engineers"
            Height          =   255
            Left            =   120
            TabIndex        =   79
            Top             =   3600
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin VB.CheckBox Check8 
            Caption         =   "Spys"
            Height          =   255
            Left            =   120
            TabIndex        =   78
            Top             =   3240
            Value           =   1  'Checked
            Width           =   975
         End
         Begin VB.CheckBox Check7 
            Caption         =   "Pyros"
            Height          =   255
            Left            =   120
            TabIndex        =   77
            Top             =   2880
            Value           =   1  'Checked
            Width           =   975
         End
         Begin VB.CheckBox Check6 
            Caption         =   "HwGuys"
            Height          =   255
            Left            =   120
            TabIndex        =   76
            Top             =   2520
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin VB.TextBox nmedics 
            Height          =   285
            Left            =   1320
            TabIndex        =   12
            Top             =   2160
            Width           =   855
         End
         Begin VB.TextBox ndemos 
            Height          =   285
            Left            =   1320
            TabIndex        =   11
            Top             =   1800
            Width           =   855
         End
         Begin VB.TextBox nsoldiers 
            Height          =   285
            Left            =   1320
            TabIndex        =   10
            Top             =   1440
            Width           =   855
         End
         Begin VB.CheckBox classlimit 
            Caption         =   "Enable Class limitation (per team)"
            Height          =   255
            Left            =   120
            TabIndex        =   9
            Top             =   240
            Value           =   1  'Checked
            Width           =   2655
         End
         Begin VB.TextBox nsnipers 
            Height          =   285
            Left            =   1320
            TabIndex        =   8
            Top             =   1080
            Width           =   855
         End
         Begin VB.TextBox nscouts 
            Height          =   285
            Left            =   1320
            TabIndex        =   7
            Top             =   720
            Width           =   855
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Medics"
            Height          =   255
            Left            =   120
            TabIndex        =   6
            Top             =   2160
            Value           =   1  'Checked
            Width           =   975
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Demos"
            Height          =   255
            Left            =   120
            TabIndex        =   5
            Top             =   1800
            Value           =   1  'Checked
            Width           =   1215
         End
         Begin VB.CheckBox Check3 
            Caption         =   "Soldiers"
            Height          =   255
            Left            =   120
            TabIndex        =   4
            Top             =   1440
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Snipers"
            Height          =   255
            Left            =   120
            TabIndex        =   3
            Top             =   1080
            Value           =   1  'Checked
            Width           =   975
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Scouts"
            Height          =   255
            Left            =   120
            TabIndex        =   2
            Top             =   720
            Value           =   1  'Checked
            Width           =   1095
         End
         Begin ComCtl2.UpDown UpDown6 
            Height          =   255
            Left            =   2160
            TabIndex        =   13
            Top             =   2160
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown5 
            Height          =   255
            Left            =   2160
            TabIndex        =   14
            Top             =   1800
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown4 
            Height          =   255
            Left            =   2160
            TabIndex        =   15
            Top             =   1440
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown3 
            Height          =   255
            Left            =   2160
            TabIndex        =   16
            Top             =   1080
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown2 
            Height          =   255
            Left            =   2160
            TabIndex        =   17
            Top             =   720
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown11 
            Height          =   255
            Left            =   2160
            TabIndex        =   86
            Top             =   3960
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown10 
            Height          =   255
            Left            =   2160
            TabIndex        =   87
            Top             =   3600
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown9 
            Height          =   255
            Left            =   2160
            TabIndex        =   88
            Top             =   3240
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown8 
            Height          =   255
            Left            =   2160
            TabIndex        =   89
            Top             =   2880
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown7 
            Height          =   255
            Left            =   2160
            TabIndex        =   90
            Top             =   2520
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   450
            _Version        =   327681
            Enabled         =   -1  'True
         End
         Begin VB.Line Line2 
            X1              =   120
            X2              =   2760
            Y1              =   600
            Y2              =   600
         End
      End
   End
End
Attribute VB_Name = "TFSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub classic_Click()
If classic.Value = True Then
    Label4.Enabled = True
    pmtime.Enabled = True
    'UpDown1.Enabled = True
    Else
    Label4.Enabled = False
    pmtime.Enabled = False
    'UpDown1.Enabled = False
    End If
    
End Sub

Private Sub autoteamcheck_Click()
If autoteamcheck.Value = 1 Then
    autoteam.Enabled = True
    Else
    autoteam.Enabled = False
    End If
End Sub

Private Sub Check1_Click()
If Check1.Value = 1 Then
    nscouts.Enabled = True
    UpDown2.Enabled = True
    nscouts.text = "-1"
    Else
    UpDown2.Enabled = False
    nscouts.text = "0"
    nscouts.Enabled = False
    
    End If
End Sub

Private Sub Check10_Click()
If Check10.Value = 1 Then
    nrandom.Enabled = True
    UpDown11.Enabled = True
    nrandom.text = "-1"
    Else
    UpDown11.Enabled = False
    nrandom.text = "0"
    nrandom.Enabled = False
    End If
End Sub


Private Sub Check11_Click(Index As Integer)
If Check11(Index).Value = 1 Then
    ngrens11(Index).Enabled = True
    UpDownGren(Index).Enabled = True
    ngrens11(Index).text = "-1"
    Else
    UpDownGren(Index).Enabled = False
    ngrens11(Index).text = "0"
    ngrens11(Index).Enabled = False
    End If
End Sub

Private Sub Check2_Click()
If Check2.Value = 1 Then
    nsnipers.Enabled = True
    UpDown3.Enabled = True
    nsnipers.text = "-1"
    Else
    UpDown3.Enabled = False

    nsnipers.text = "0"
    nsnipers.Enabled = False
    
    End If
End Sub

Private Sub Check3_Click()
If Check3.Value = 1 Then
    nsoldiers.Enabled = True
    UpDown4.Enabled = True
    nsoldiers.text = "-1"
    Else
    UpDown4.Enabled = False
    nsoldiers.text = "0"
    nsoldiers.Enabled = False
    End If
End Sub

Private Sub Check4_Click()
If Check4.Value = 1 Then
    ndemos.Enabled = True
    UpDown5.Enabled = True
    ndemos.text = "-1"
    
    Else
    UpDown5.Enabled = False

    ndemos.text = "0"
    ndemos.Enabled = False
    End If
End Sub

Private Sub Check5_Click()
If Check5.Value = 1 Then
    nmedics.Enabled = True
    UpDown6.Enabled = True
    nmedics.text = "-1"
    Else
    UpDown6.Enabled = False

    nmedics.text = "0"
    nmedics.Enabled = False
    End If
End Sub

Private Sub Check6_Click()
If Check6.Value = 1 Then
    nhwguys.Enabled = True
    UpDown7.Enabled = True
    nhwguys.text = "-1"
    Else
    UpDown7.Enabled = False

    nhwguys.text = "0"
    nhwguys.Enabled = False
    End If
End Sub

Private Sub Check7_Click()
If Check7.Value = 1 Then
    npyros.Enabled = True
    UpDown8.Enabled = True
    npyros.text = "-1"
    
    Else
    UpDown8.Enabled = False

    npyros.text = "0"
    npyros.Enabled = False
    End If
End Sub

Private Sub Check8_Click()
If Check8.Value = 1 Then
    nspys.Enabled = True
    UpDown9.Enabled = True
    nspys.text = "-1"
    
    Else
    UpDown9.Enabled = False

    nspys.text = "0"
    nspys.Enabled = False
    End If
End Sub

Private Sub Check9_Click()
If Check9.Value = 1 Then
    nengineers.Enabled = True
    UpDown10.Enabled = True
    nengineers.text = "-1"
    
    Else
    UpDown10.Enabled = False

    nengineers.text = "0"
    nengineers.Enabled = False
    End If
End Sub

Private Sub clan_Click()
If clan.Value = 1 Then
    joiningame.Enabled = True
    pmtime.Enabled = True
    cmessages.Enabled = True
'    UpDown1(10).Enabled = True
    
    Else
    pmtime.Enabled = False
    joiningame.Enabled = False
    cmessages.Enabled = False
    ' UpDown1(10).Enabled = False
    
    End If
End Sub

Private Sub classlimit_Click()
If classlimit.Value = 1 Then
    If Check1.Value Then nscouts.Enabled = True
    If Check2.Value Then nsnipers.Enabled = True
    If Check3.Value Then nsoldiers.Enabled = True
    If Check4.Value Then ndemos.Enabled = True
    If Check5.Value Then nmedics.Enabled = True
    If Check6.Value Then nhwguys.Enabled = True
    If Check7.Value Then npyros.Enabled = True
    If Check8.Value Then nspys.Enabled = True
    If Check9.Value Then nengineers.Enabled = True
    If Check10.Value Then nrandoms.Enabled = True
    Check1.Enabled = True
    Check2.Enabled = True
    Check3.Enabled = True
    Check4.Enabled = True
    Check5.Enabled = True
    Check6.Enabled = True
    Check7.Enabled = True
    Check8.Enabled = True
    Check9.Enabled = True
    Check10.Enabled = True
    Else
    Check1.Value = 0
    Check2.Value = 0
    Check3.Value = 0
    Check4.Value = 0
    Check5.Value = 0
    Check6.Value = 0
    Check7.Value = 0
    Check8.Value = 0
    Check9.Value = 0
    Check10.Value = 0
    Check1.Enabled = False
    Check2.Enabled = False
    Check3.Enabled = False
    Check4.Enabled = False
    Check5.Enabled = False
    Check6.Enabled = False
    Check7.Enabled = False
    Check8.Enabled = False
    Check9.Enabled = False
    Check10.Enabled = False
    nscouts.Enabled = False
    nsnipers.Enabled = False
    nsoldiers.Enabled = False
    ndemos.Enabled = False
    nmedics.Enabled = False
    nhwguys.Enabled = False
    npyros.Enabled = False
    nspys.Enabled = False
    nengineers.Enabled = False
    nrandom.Enabled = False
    End If
End Sub


Private Sub Command1_Click()
Main.RefreshLocal
Main.UpdateInfo

map$ = Main.removespaces$(Main.findinserver$("map"))
RestartMap = MsgBox("Restart map " + map$ + " ?", vbYesNo, "Restart map...")
Main.ServerMessage ("Configuring server...")
progress.perc.Value = 0
progress.Label.Caption = "Updating TF settings on server..."
progress.Label.refresh
progress.Visible = True
progress.refresh

Dim lcc$(10)
lcc$(1) = "cr_scout"
lcc$(2) = "cr_sniper"
lcc$(3) = "cr_soldier"
lcc$(4) = "cr_demoman"
lcc$(5) = "cr_medic"
lcc$(6) = "cr_hwguy"
lcc$(7) = "cr_pyro"
lcc$(8) = "cr_spy"
lcc$(9) = "cr_engineer"
lcc$(10) = "cr_random"

For o = 1 To 10
progress.perc.Value = o
k = Val(Main.localvalue$(lcc$(o), ""))
If k <> ClassLim(o) Then dummy$ = Main.servRconAns$("localinfo " + lcc$(o) + " " + Str$(ClassLim(o)))
Next

'TF SETTINGS
Main.setinserver "og", "oldgrens", oldgrens.Value, True
progress.perc.Value = 15
Main.setinserver "ws", "use_standard", warstandard.Value, True
progress.perc.Value = 20
Main.setinserver "pm", "prematch", Val(pmtime.text), False
progress.perc.Value = 25
Main.setinserver "t", "teamfrags", teamfrag.Value, True
progress.perc.Value = 30
Main.setinserver "c", "clan", clan.Value, True
progress.perc.Value = 35
Main.setinserver "s", "spyinvis", spyinvis.Value, True
progress.perc.Value = 40
Main.setinserver "lg", "", joiningame.Value, True
progress.perc.Value = 45
Main.setinserver "bd", "birthday", birthday.Value, True
progress.perc.Value = 50
Main.setinserver "fe", "flag_emu", keysforflags.Value, True
progress.perc.Value = 55
Main.setinserver "g", "grapple", grapple.Value, True
progress.perc.Value = 57
Main.setinserver "clanmsgs", "", cmessages.Value, True
progress.perc.Value = 57
Main.servRconAns ("serverinfo rj " & rj.text)
progress.perc.Value = 60
Main.setinserver "fts", "fullteamscore", fullteamscore.Value, True

If TFSettings.autoteamcheck.Value = 1 Then
    k = Val(autoteam.text)
    If k <= 0 Then
        autoteam.text = "auto"
        Main.setinserver "a", "autoteam", 1, True
        Else
        Main.setinserver "a", "autoteam", autoteam.text, False
        End If
    Else
    Main.setinserver "a", "autoteam", 0, True
    End If
progress.perc.Value = 65

Main.setinserver "akk", "autokick_kills", Val(fragsallowed.text), False
progress.perc.Value = 70
Main.setinserver "akt", "autokick_time", Val(kicktime.text), False
If Main.removespaces$(Main.findinserver$("teamplay")) <> teamplay.text Then dummy$ = Main.servRconAns$("teamplay " + teamplay.text): Main.UpdateStatus

lcc$(1) = "flairgren"
lcc$(2) = "flashgren"
lcc$(3) = "gasgren"
lcc$(4) = "mirvgren"
lcc$(5) = "nailgren"
lcc$(6) = "napalmgren"
lcc$(7) = "reggren"

For o = 1 To 7
k = Val(Main.localvalue$(lcc$(o), ""))
t = Val(ngrens11(o - 1).Tag)
If k <> t Then dummy$ = Main.servRconAns$("localinfo " + lcc$(o) + " " + Str$(t))
Next

If adminpwd.text <> Main.localvalue$("adminpwd", "apw") Then dummy$ = Main.servRconAns$("localinfo adminpwd " + adminpwd.text)
t1$ = Main.localvalue$("t1", "team1")
t2$ = Main.localvalue$("t2", "team2")
t3$ = Main.localvalue$("t3", "team3")
t4$ = Main.localvalue$("t4", "team4")
If t1$ = "" Then t1$ = "blue"
If t2$ = "" Then t2$ = "red"
If t3$ = "" Then t3$ = "gren"
If t4$ = "" Then t4$ = "yell"
Main.setinserver2 "t1", "team1", team1.text, t1$
progress.perc.Value = 75
Main.setinserver2 "t2", "team2", team2.text, t2$
progress.perc.Value = 80
Main.setinserver2 "t3", "team3", team3.text, t3$
progress.perc.Value = 85
Main.setinserver2 "t4", "team4", team4.text, t4$
progress.perc.Value = 90

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
sk2$ = TFSettings.skins(ppp).text
ppp = ppp + 1
If PRO Then
    If sk1$ <> sk2$ Then Main.setinserver2 a$, "", sk1$, sk2$
    End If
Next
Next


progress.perc.Value = 95
progress.Label.Caption = "Refreshing values from server..."
progress.Label.refresh
Main.RefreshLocal
map$ = Main.removespaces$(Main.findinserver$("map"))
If RestartMap = vbYes Then
    progress.Label.Caption = "Refreshing values from server..."
    progress.Label.refresh
    dummy$ = Main.servRconAns$("map " + map$)
    progress.perc.Value = 100
    End If
progress.Visible = False
    


'Main.tfset_Click

End Sub

Public Sub grenlimit_Click()
If PRO Then
    If grenlimit.Value = 1 Then
        For o = 0 To 6
        Check11(o).Enabled = True
        If Check11(o).Value = 1 Then
            ngrens11(o).Enabled = True
            UpDownGren(o).Enabled = True
            Else
            ngrens11(o).Enabled = False
            UpDownGren(o).Enabled = False
            End If
        Next
        Else
        For o = 0 To 6
        Check11(o).Enabled = False
        ngrens11(o).Enabled = False
        UpDownGren(o).Enabled = False
        ngrens11(o).Tag = "0"
        ngrens11(o).text = "0"
        Next
        End If
    Else
    If grenlimit.Value = 1 Then
        For o = 0 To 6
        Check11(o).Enabled = False
        Next
        Main.RegisterWindow
        grenlimit.Value = 0
        End If
    End If
End Sub

Private Sub ndemos_Change()
ThisClass = 4
v = Val(ndemos.text)
If ndemos.text = "none" Then v = -1
If ndemos.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then ndemos.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then ndemos.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then ndemos.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nengineers_Change()
ThisClass = 9
v = Val(nengineers.text)
If nengineers.text = "none" Then v = -1
If nengineers.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nengineers.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nengineers.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nengineers.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v

End Sub


Private Sub ngrens11_Change(Index As Integer)
With ngrens11(Index)
    v = Val(.text)
    If .text = "None" Then v = -1
    If .text = "No Limit" Then v = 0
    If v > 32 Then v = 32
    If v < -1 Then v = -1
    v = Int(v)
    If v = -1 Then
        .text = "None"
        .Tag = -1
        End If
        
    If v = 0 Then
        .text = "No limit"
        .Tag = 0
        End If
    
    If v > 0 Then
        .text = Main.removespaces$(Str$(v))
        .Tag = v
        End If
End With
End Sub
Private Sub nhwguys_Change()
ThisClass = 6
v = Val(nhwguys.text)
If nhwguys.text = "none" Then v = -1
If nhwguys.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nhwguys.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nhwguys.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nhwguys.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nmedics_Change()
ThisClass = 5
v = Val(nmedics.text)
If nmedics.text = "none" Then v = -1
If nmedics.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nmedics.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nmedics.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nmedics.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v

End Sub

Private Sub npyros_Change()
ThisClass = 7
v = Val(npyros.text)
If npyros.text = "none" Then v = -1
If npyros.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then npyros.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then npyros.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then npyros.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v

End Sub

Private Sub nrandom_Change()
ThisClass = 10
v = Val(nrandom.text)
If nrandom.text = "none" Then v = -1
If nrandom.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nrandom.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nrandom.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nrandom.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nscouts_Change()
ThisClass = 1
v = Val(nscouts.text)
If nscouts.text = "none" Then v = -1
If nscouts.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nscouts.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nscouts.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nscouts.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nsnipers_Change()
ThisClass = 2
v = Val(nsnipers.text)
If nsnipers.text = "none" Then v = -1
If nsnipers.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nsnipers.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nsnipers.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nsnipers.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nsoldiers_Change()
ThisClass = 3
v = Val(nsoldiers.text)
If nsoldiers.text = "none" Then v = -1
If nsoldiers.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nsoldiers.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nsoldiers.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nsoldiers.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v
End Sub

Private Sub nspys_Change()
ThisClass = 8
v = Val(nspys.text)
If nspys.text = "none" Then v = -1
If nspys.text = "No Limit" Then v = 0
If v > 32 Then v = 32
If v < -1 Then v = -1
v = Int(v)
If v = -1 Then nspys.text = "none": ClassLim(ThisClass) = -1
If v = 0 Then nspys.text = "No limit": ClassLim(ThisClass) = 0
If v > 0 Then nspys.text = Main.removespaces$(Str$(v)): ClassLim(ThisClass) = v

End Sub

Public Sub OK_Click()
Command1_Click
Command2_Click
End Sub

Private Sub pmtime_Change()
clan.Value = 1
End Sub

Public Sub skins_click(Index As Integer)
If PRO = False Then
    Main.RegisterWindow
    skins(Index).text = ""
    End If
End Sub

Private Sub team1_Change()
team1 = LCase$(team1)

End Sub

Private Sub team2_Change()
team2 = LCase$(team2)

End Sub

Private Sub team3_Change()
team3 = LCase$(team3)

End Sub

Private Sub team4_Change()
team4 = LCase$(team4)

End Sub

Private Sub teamplay_Change()
k$ = Main.removespaces$(teamplay.text)
If k$ <> teamplay.text Then teamplay.text = k$
End Sub

Private Sub teamplay_LostFocus()
k$ = teamplay.text
If InStr(k$, "?") Then k$ = Left$(k$, InStr(k$, "?") - 1)
a = Val(k$)
If (a And 1) Then tp1.Value = 1 Else tp1.Value = 0
If (a And 2) Then tp2.Value = 1 Else tp2.Value = 0
If (a And 4) Then tp4.Value = 1 Else tp4.Value = 0
If (a And 8) Then tp8.Value = 1 Else tp8.Value = 0
If (a And 16) Then tp16.Value = 1 Else tp16.Value = 0
If (a And 32) Then tp32.Value = 1 Else tp32.Value = 0
If (a And 64) Then tp64.Value = 1 Else tp64.Value = 0
If (a And 128) Then tp128.Value = 1 Else tp128.Value = 0
If (a And 256) Then tp256.Value = 1 Else tp256.Value = 0
If (a And 512) Then tp512.Value = 1 Else tp512.Value = 0
If (a And 1024) Then tp1024.Value = 1 Else tp1024.Value = 0
If (a And 2048) Then tp2048.Value = 1 Else tp2048.Value = 0
If (a And 4096) Then tp4096.Value = 1 Else tp4096.Value = 0
If (a And 8192) Then tp8192.Value = 1 Else tp8192.Value = 0
If (a And 16384) Then tp16384.Value = 1 Else tp16384.Value = 0
End Sub

Private Sub tp1_Click()
If tp1.Value = 1 Then
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
    tp8192.Enabled = True
    tp16384.Enabled = True
    Else
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
    tp8192.Enabled = False
    tp16384.Enabled = False
    End If
RecalcTeamplay
End Sub

Private Sub tp1_GotFocus()
tpdesc.Caption = "Only useful if you turn it on with no other teamplay bits set. If you do that, then it turns on Teams, so players can pick and work in teams, but without giving any immunity to damage, or equalisation. -- Robin Walker. If teamfrags is on, team-members take full damage from direct and/or area-affect weaponry."

End Sub

Private Sub tp1024_Click()
RecalcTeamplay

End Sub

Private Sub tp128_Click()
RecalcTeamplay

End Sub

Private Sub tp16_Click()
RecalcTeamplay

End Sub

Private Sub tp16384_Click()
RecalcTeamplay
End Sub

Private Sub tp2_Click()
RecalcTeamplay
End Sub

Private Sub tp2_GotFocus()
tpdesc.Caption = "If teamfrags is on, team-members take 1/2 damage from direct fire."
End Sub

Private Sub tp2_LostFocus()
tpdesc.Caption = ""
End Sub

Private Sub Command2_Click()
TFSettings.Visible = False
Unload Me
End Sub

Private Sub tp1_LostFocus()
tpdesc.Caption = ""
End Sub

Public Sub RecalcTeamplay()
tp = 0
tp = tp + tp1.Value
If tp Then
    tp = tp + tp2.Value * 2
    tp = tp + tp4.Value * 4
    tp = tp + tp8.Value * 8
    tp = tp + tp16.Value * 16
    tp = tp + tp32.Value * 32
    tp = tp + tp64.Value * 64
    tp = tp + tp128.Value * 128
    tp = tp + tp256.Value * 256
    tp = tp + tp512.Value * 512
    tp = tp + tp1024.Value * 1024
    tp = tp + tp2048.Value * 2048
    tp = tp + tp4096.Value * 4096
    tp = tp + tp8192.Value * 8192
    tp = tp + tp16384.Value * 16384
    End If

teamplay.text = Str$(tp) + "?tf29"

End Sub

Private Sub tp2048_Click()

RecalcTeamplay

End Sub

Private Sub tp256_Click()
RecalcTeamplay

End Sub

Private Sub tp32_Click()
RecalcTeamplay

End Sub

Private Sub tp4_Click()
RecalcTeamplay
End Sub

Private Sub tp4_GotFocus()
tpdesc.Caption = "Team-members take No damage from direct fire."
End Sub
Private Sub tp4_LostFocus()
tpdesc.Caption = ""
End Sub

Private Sub tp8_GotFocus()
tpdesc.Caption = "Team-members take 1/2 damage from area-affect weaponry."
End Sub
Private Sub tp8_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp16_GotFocus()
tpdesc.Caption = "Team-members take No damage from area-affect weaponry."
End Sub
Private Sub tp16_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp32_GotFocus()
tpdesc.Caption = "Team Equalisation : give advantage to team with less members."
End Sub
Private Sub tp32_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp64_GotFocus()
tpdesc.Caption = "Team Equalisation : give advantage to team with lower score."
End Sub
Private Sub tp64_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp128_GotFocus()
tpdesc.Caption = "Team-members only lose 1/2 armor from direct fire."
End Sub
Private Sub tp128_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp256_GotFocus()
tpdesc.Caption = "Team-members lose no armor from direct fire."
End Sub
Private Sub tp256_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp512_GotFocus()
tpdesc.Caption = "Team-members only lose 1/2 armor from area-affect weaponry."
End Sub
Private Sub tp512_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp1024_GotFocus()
tpdesc.Caption = "Team-members lose no armor from area-affect weaponry."
End Sub
Private Sub tp1024_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp2048_GotFocus()
tpdesc.Caption = "Team-members take 1/2 mirror damage from direct fire."
End Sub
Private Sub tp2048_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp4096_GotFocus()
tpdesc.Caption = "Team-members take full mirror damage from direct fire."
End Sub
Private Sub tp4096_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp8192_GotFocus()
tpdesc.Caption = "Team-members take 1/2 mirror damage from area-affect weaponry."
End Sub
Private Sub tp8192_LostFocus()
tpdesc.Caption = ""
End Sub
Private Sub tp16384_GotFocus()
tpdesc.Caption = "Team-members take full mirror damage from area-affect weaponry."
End Sub
Private Sub tp16384_LostFocus()
tpdesc.Caption = ""
End Sub

Private Sub tp4096_Click()
RecalcTeamplay

End Sub

Private Sub tp512_Click()
RecalcTeamplay

End Sub

Private Sub tp64_Click()
RecalcTeamplay

End Sub

Private Sub tp8_Click()
RecalcTeamplay

End Sub

Private Sub tp8192_Click()

RecalcTeamplay

End Sub



Private Sub UpDownGren_DownClick(Index As Integer)
With ngrens11(Index)
c = Val(.Tag)
If c > -1 Then .text = Str$(c - 1)
End With
End Sub

Private Sub UpDownGren_UpClick(Index As Integer)
With ngrens11(Index)
c = Val(.Tag)
.text = Str$(c + 1)
End With
End Sub

Private Sub warstandard_Click()
If warstandard.Value = 1 Then
    keysforflags.Value = 1
    End If
End Sub
Private Sub UpDown2_DownClick()
c = ClassLim(1)
If c > -1 Then nscouts.text = Str$(c - 1)
End Sub

Private Sub UpDown2_UpClick()
c = ClassLim(1)
nscouts.text = Str$(c + 1)

End Sub
Private Sub UpDown3_DownClick()
c = ClassLim(2)
If c > -1 Then nsnipers.text = Str$(c - 1)
End Sub

Private Sub UpDown3_UpClick()
c = ClassLim(2)
nsnipers.text = Str$(c + 1)

End Sub

Private Sub UpDown4_DownClick()
c = ClassLim(3)
If c > -1 Then nsoldiers.text = Str$(c - 1)
End Sub

Private Sub UpDown4_UpClick()
c = ClassLim(3)
nsoldiers.text = Str$(c + 1)
End Sub
Private Sub UpDown5_DownClick()
c = ClassLim(4)
If c > -1 Then ndemos.text = Str$(c - 1)
End Sub

Private Sub UpDown5_UpClick()
c = ClassLim(4)
ndemos.text = Str$(c + 1)

End Sub

Private Sub UpDown6_DownClick()
c = ClassLim(5)
If c > -1 Then nmedics.text = Str$(c - 1)
End Sub

Private Sub UpDown6_UpClick()
c = ClassLim(5)
nmedics.text = Str$(c + 1)

End Sub


Private Sub UpDown7_DownClick()
c = ClassLim(6)
If c > -1 Then nhwguys.text = Str$(c - 1)
End Sub

Private Sub UpDown7_UpClick()
c = ClassLim(6)
nhwguys.text = Str$(c + 1)

End Sub

Private Sub UpDown8_DownClick()
c = ClassLim(7)
If c > -1 Then npyros.text = Str$(c - 1)
End Sub

Private Sub UpDown8_UpClick()
c = ClassLim(7)
npyros.text = Str$(c + 1)

End Sub

Private Sub UpDown9_DownClick()
c = ClassLim(8)
If c > -1 Then nspys.text = Str$(c - 1)
End Sub

Private Sub UpDown9_UpClick()
c = ClassLim(8)
nspys.text = Str$(c + 1)

End Sub


Private Sub UpDown10_DownClick()
c = ClassLim(9)
If c > -1 Then nengineers.text = Str$(c - 1)
End Sub

Private Sub UpDown10_UpClick()
c = ClassLim(9)
nengineers.text = Str$(c + 1)

End Sub


Private Sub UpDown11_DownClick()
c = ClassLim(10)
If c > -1 Then nrandom.text = Str$(c - 1)
End Sub

Private Sub UpDown11_UpClick()
c = ClassLim(10)
nrandom.text = Str$(c + 1)

End Sub




