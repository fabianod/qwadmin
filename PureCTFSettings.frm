VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Object = "{BDC217C8-ED16-11CD-956C-0000C04E4C0A}#1.1#0"; "TABCTL32.OCX"
Begin VB.Form PureCTFSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Pure CTF settings"
   ClientHeight    =   5520
   ClientLeft      =   1620
   ClientTop       =   1560
   ClientWidth     =   6525
   Icon            =   "PureCTFSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5520
   ScaleWidth      =   6525
   Begin VB.CommandButton Apply 
      Caption         =   "Apply"
      Height          =   375
      Left            =   3480
      TabIndex        =   83
      Top             =   5040
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   4920
      TabIndex        =   13
      Top             =   5040
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2040
      TabIndex        =   12
      Top             =   5040
      Width           =   1335
   End
   Begin TabDlg.SSTab SSTab1 
      Height          =   4935
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6495
      _ExtentX        =   11456
      _ExtentY        =   8705
      _Version        =   327681
      Style           =   1
      Tabs            =   2
      TabsPerRow      =   2
      TabHeight       =   520
      TabCaption(0)   =   "Game options"
      TabPicture(0)   =   "PureCTFSettings.frx":08CA
      Tab(0).ControlEnabled=   -1  'True
      Tab(0).Control(0)=   "Label2"
      Tab(0).Control(0).Enabled=   0   'False
      Tab(0).Control(1)=   "Frame2"
      Tab(0).Control(1).Enabled=   0   'False
      Tab(0).Control(2)=   "Frame3"
      Tab(0).Control(2).Enabled=   0   'False
      Tab(0).Control(3)=   "Frame1"
      Tab(0).Control(3).Enabled=   0   'False
      Tab(0).Control(4)=   "teamplay"
      Tab(0).Control(4).Enabled=   0   'False
      Tab(0).Control(5)=   "Command3"
      Tab(0).Control(5).Enabled=   0   'False
      Tab(0).ControlCount=   6
      TabCaption(1)   =   "Other settings"
      TabPicture(1)   =   "PureCTFSettings.frx":08E6
      Tab(1).ControlEnabled=   0   'False
      Tab(1).Control(0)=   "Frame5"
      Tab(1).Control(1)=   "Frame4"
      Tab(1).ControlCount=   2
      Begin VB.CommandButton Command3 
         Caption         =   "CTF Teamplay settings"
         Height          =   375
         Left            =   3480
         TabIndex        =   82
         Top             =   2520
         Width           =   1815
      End
      Begin VB.TextBox teamplay 
         Height          =   285
         Left            =   4320
         TabIndex        =   80
         Top             =   2160
         Width           =   975
      End
      Begin VB.Frame Frame5 
         Caption         =   "Special features"
         Height          =   1575
         Left            =   -74880
         TabIndex        =   70
         Top             =   3240
         Width           =   6255
         Begin VB.CheckBox Check6 
            Caption         =   "Modelkick"
            Height          =   255
            Index           =   4
            Left            =   3360
            TabIndex        =   79
            Top             =   1200
            Width           =   2775
         End
         Begin VB.CheckBox Check6 
            Caption         =   "Not used yed"
            Height          =   255
            Index           =   3
            Left            =   3360
            TabIndex        =   78
            Top             =   960
            Width           =   2775
         End
         Begin VB.CheckBox Check6 
            Caption         =   "Alternate botdetect routine"
            Height          =   255
            Index           =   2
            Left            =   3360
            TabIndex        =   77
            Top             =   720
            Width           =   2775
         End
         Begin VB.CheckBox Check6 
            Caption         =   "Auto-Kick bots if botcheck is on"
            Height          =   255
            Index           =   1
            Left            =   3360
            TabIndex        =   76
            Top             =   480
            Width           =   2775
         End
         Begin VB.CheckBox Check6 
            Caption         =   "BotCheck (Warning messages.)"
            Height          =   255
            Index           =   0
            Left            =   3360
            TabIndex        =   75
            Top             =   240
            Width           =   2775
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Runes (Always on in CTF)"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   74
            Top             =   1080
            Width           =   2895
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Hook (Always on in ctf)"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   73
            Top             =   840
            Width           =   2895
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Visible weapons"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   72
            Top             =   600
            Width           =   2895
         End
         Begin VB.CheckBox Check5 
            Caption         =   "Rocket arena sounds"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   71
            Top             =   360
            Width           =   2895
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00E0E0E0&
            Index           =   1
            X1              =   3130
            X2              =   3130
            Y1              =   1440
            Y2              =   240
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00404040&
            Index           =   1
            X1              =   3120
            X2              =   3120
            Y1              =   240
            Y2              =   1440
         End
      End
      Begin VB.Frame Frame4 
         Caption         =   "In-game variables"
         Height          =   2775
         Left            =   -74880
         TabIndex        =   30
         Top             =   360
         Width           =   6255
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   12
            Left            =   5280
            TabIndex        =   68
            Tag             =   "ringrespawn"
            Top             =   2040
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   11
            Left            =   5280
            TabIndex        =   65
            Tag             =   "pentarespawn"
            Top             =   1680
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   10
            Left            =   5280
            TabIndex        =   62
            Tag             =   "quadrespawn"
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   9
            Left            =   5280
            TabIndex        =   59
            Tag             =   "regmax"
            Top             =   960
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   8
            Left            =   5280
            TabIndex        =   56
            Tag             =   "regrate"
            Top             =   600
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   7
            Left            =   5280
            TabIndex        =   53
            Tag             =   "resistance"
            Top             =   240
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   6
            Left            =   2160
            TabIndex        =   50
            Tag             =   "strength"
            Top             =   2400
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   5
            Left            =   2160
            TabIndex        =   47
            Tag             =   "hasterate"
            Top             =   2040
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   4
            Left            =   2160
            TabIndex        =   44
            Tag             =   "hastespeed"
            Top             =   1680
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   3
            Left            =   2160
            TabIndex        =   41
            Tag             =   "hookpull"
            Top             =   1320
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   2
            Left            =   2160
            TabIndex        =   38
            Tag             =   "hookspeed"
            Top             =   960
            Width           =   495
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   1
            Left            =   2160
            TabIndex        =   35
            Tag             =   "playermaxrate"
            Top             =   600
            Width           =   495
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   0
            Left            =   2656
            TabIndex        =   33
            Top             =   240
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(0)"
            BuddyDispid     =   196620
            BuddyIndex      =   0
            OrigLeft        =   2880
            OrigTop         =   240
            OrigRight       =   3120
            OrigBottom      =   495
            Max             =   10000
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin VB.TextBox Text1 
            Height          =   285
            Index           =   0
            Left            =   2160
            TabIndex        =   32
            Tag             =   "specmaxrate"
            Top             =   240
            Width           =   495
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   1
            Left            =   2656
            TabIndex        =   36
            Top             =   600
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(1)"
            BuddyDispid     =   196620
            BuddyIndex      =   1
            OrigLeft        =   2880
            OrigTop         =   600
            OrigRight       =   3120
            OrigBottom      =   855
            Max             =   10000
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   2
            Left            =   2656
            TabIndex        =   39
            Top             =   960
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(2)"
            BuddyDispid     =   196620
            BuddyIndex      =   2
            OrigLeft        =   2880
            OrigTop         =   960
            OrigRight       =   3120
            OrigBottom      =   1215
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   3
            Left            =   2656
            TabIndex        =   42
            Top             =   1320
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(3)"
            BuddyDispid     =   196620
            BuddyIndex      =   3
            OrigLeft        =   2880
            OrigTop         =   1320
            OrigRight       =   3120
            OrigBottom      =   1575
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   4
            Left            =   2656
            TabIndex        =   45
            Top             =   1680
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(4)"
            BuddyDispid     =   196620
            BuddyIndex      =   4
            OrigLeft        =   2880
            OrigTop         =   1680
            OrigRight       =   3120
            OrigBottom      =   1935
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   5
            Left            =   2656
            TabIndex        =   48
            Top             =   2040
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(5)"
            BuddyDispid     =   196620
            BuddyIndex      =   5
            OrigLeft        =   2880
            OrigTop         =   2040
            OrigRight       =   3120
            OrigBottom      =   2295
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   6
            Left            =   2656
            TabIndex        =   51
            Top             =   2400
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(6)"
            BuddyDispid     =   196620
            BuddyIndex      =   6
            OrigLeft        =   2880
            OrigTop         =   2400
            OrigRight       =   3120
            OrigBottom      =   2655
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   7
            Left            =   5775
            TabIndex        =   54
            Top             =   240
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(7)"
            BuddyDispid     =   196620
            BuddyIndex      =   7
            OrigLeft        =   2880
            OrigTop         =   2760
            OrigRight       =   3120
            OrigBottom      =   3015
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   8
            Left            =   5775
            TabIndex        =   57
            Top             =   600
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(8)"
            BuddyDispid     =   196620
            BuddyIndex      =   8
            OrigLeft        =   2880
            OrigTop         =   3120
            OrigRight       =   3120
            OrigBottom      =   3375
            Max             =   60
            SyncBuddy       =   -1  'True
            BuddyProperty   =   65547
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   9
            Left            =   5775
            TabIndex        =   60
            Top             =   960
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(9)"
            BuddyDispid     =   196620
            BuddyIndex      =   9
            OrigLeft        =   2880
            OrigTop         =   3480
            OrigRight       =   3120
            OrigBottom      =   3735
            Max             =   999
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   10
            Left            =   5775
            TabIndex        =   63
            Top             =   1320
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(10)"
            BuddyDispid     =   196620
            BuddyIndex      =   10
            OrigLeft        =   2880
            OrigTop         =   3840
            OrigRight       =   3120
            OrigBottom      =   4095
            Max             =   1200
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   11
            Left            =   5775
            TabIndex        =   66
            Top             =   1680
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(11)"
            BuddyDispid     =   196620
            BuddyIndex      =   11
            OrigLeft        =   6000
            OrigTop         =   240
            OrigRight       =   6240
            OrigBottom      =   495
            Max             =   1200
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin ComCtl2.UpDown UpDown1 
            Height          =   285
            Index           =   12
            Left            =   5775
            TabIndex        =   69
            Top             =   2040
            Width           =   240
            _ExtentX        =   423
            _ExtentY        =   503
            _Version        =   327681
            AutoBuddy       =   -1  'True
            BuddyControl    =   "Text1(12)"
            BuddyDispid     =   196620
            BuddyIndex      =   12
            OrigLeft        =   6000
            OrigTop         =   600
            OrigRight       =   6240
            OrigBottom      =   855
            Max             =   1200
            SyncBuddy       =   -1  'True
            BuddyProperty   =   0
            Enabled         =   -1  'True
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Ring respawns every (sec)"
            Height          =   255
            Index           =   12
            Left            =   3240
            TabIndex        =   67
            Top             =   2040
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "666 respawns every (sec)"
            Height          =   255
            Index           =   11
            Left            =   3240
            TabIndex        =   64
            Top             =   1680
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Quad respawns every (sec)"
            Height          =   255
            Index           =   10
            Left            =   3240
            TabIndex        =   61
            Top             =   1320
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Regeneration maxhealing:"
            Height          =   255
            Index           =   9
            Left            =   3240
            TabIndex        =   58
            Top             =   960
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Rate of regeneration (secs)"
            Height          =   255
            Index           =   8
            Left            =   3240
            TabIndex        =   55
            Top             =   600
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Resistance (multiplier):"
            Height          =   255
            Index           =   7
            Left            =   3240
            TabIndex        =   52
            Top             =   240
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Strength (multiplier):"
            Height          =   255
            Index           =   6
            Left            =   120
            TabIndex        =   49
            Top             =   2400
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Haste fire rate (multiplier):"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   46
            Top             =   2040
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Haste speed (multiplier):"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   43
            Top             =   1680
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Hook pull speed (multiplier):"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   40
            Tag             =   "hookpull"
            Top             =   1320
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Hook speed (multiplier):"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   37
            Top             =   960
            Width           =   1935
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Players maximum rate:"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   34
            Top             =   600
            Width           =   1935
         End
         Begin VB.Line Line2 
            BorderColor     =   &H00E0E0E0&
            Index           =   0
            X1              =   3135
            X2              =   3135
            Y1              =   2640
            Y2              =   240
         End
         Begin VB.Line Line1 
            BorderColor     =   &H00404040&
            Index           =   0
            X1              =   3120
            X2              =   3120
            Y1              =   240
            Y2              =   2640
         End
         Begin VB.Label Label4 
            Alignment       =   1  'Right Justify
            Caption         =   "Spectator maximum rate:"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   31
            Top             =   240
            Width           =   1935
         End
      End
      Begin VB.Frame Frame1 
         Caption         =   "Administration"
         Height          =   1695
         Left            =   2880
         TabIndex        =   24
         Top             =   360
         Width           =   3495
         Begin VB.TextBox adminpwd 
            Height          =   285
            Left            =   1920
            TabIndex        =   28
            Top             =   360
            Width           =   975
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Allow admins to change standard modes"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   27
            Tag             =   "modechange"
            Top             =   960
            Width           =   3255
         End
         Begin VB.CheckBox Check1 
            Caption         =   "Allow admins to change voted modes"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   26
            Tag             =   "modechange"
            Top             =   1200
            Width           =   3015
         End
         Begin VB.CheckBox Check2 
            Caption         =   "Players can vote for an administrator"
            Height          =   255
            Left            =   120
            TabIndex        =   25
            Tag             =   "adminvote"
            Top             =   720
            Width           =   3135
         End
         Begin VB.Label Label1 
            Alignment       =   1  'Right Justify
            Caption         =   "Administrator password:"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   29
            Top             =   360
            Width           =   1695
         End
      End
      Begin VB.Frame Frame3 
         Caption         =   "In game options"
         Height          =   1815
         Left            =   120
         TabIndex        =   10
         Top             =   3000
         Width           =   6255
         Begin VB.CheckBox Check4 
            Caption         =   "No shooting in standby."
            Height          =   255
            Index           =   10
            Left            =   3480
            TabIndex        =   23
            Tag             =   "quietstandby"
            Top             =   1200
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Enable Voteexit"
            Height          =   255
            Index           =   9
            Left            =   3480
            TabIndex        =   22
            Tag             =   "voteexit"
            Top             =   960
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Dynamic Anka Maps"
            Height          =   255
            Index           =   8
            Left            =   3480
            TabIndex        =   21
            Tag             =   "ankamaps"
            Top             =   720
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Disable hook"
            Height          =   255
            Index           =   7
            Left            =   3480
            TabIndex        =   20
            Tag             =   "hook"
            Top             =   480
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Disable runes"
            Height          =   255
            Index           =   6
            Left            =   3480
            TabIndex        =   19
            Tag             =   "runes"
            Top             =   240
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Discharges off"
            Height          =   255
            Index           =   5
            Left            =   120
            TabIndex        =   18
            Tag             =   "discharge"
            Top             =   1440
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Ping ban (requires ext prog)"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   17
            Tag             =   "pingban"
            Top             =   1200
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Players can drop runes"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   16
            Tag             =   "dr"
            Top             =   960
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Players can drop flag"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   15
            Tag             =   "df"
            Top             =   720
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Quad is dropable"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   14
            Tag             =   "dq"
            Top             =   480
            Width           =   2415
         End
         Begin VB.CheckBox Check4 
            Caption         =   "Ring of shadows is dropable"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   11
            Tag             =   "dr"
            Top             =   240
            Width           =   2415
         End
      End
      Begin VB.Frame Frame2 
         Caption         =   "Game mode"
         Height          =   2535
         Left            =   120
         TabIndex        =   1
         Top             =   360
         Width           =   2655
         Begin VB.TextBox revert 
            Enabled         =   0   'False
            Height          =   285
            Left            =   960
            TabIndex        =   8
            Tag             =   "revert"
            Top             =   1800
            Width           =   495
         End
         Begin VB.CheckBox Check3 
            Caption         =   "Revert to standard after"
            Height          =   255
            Left            =   120
            TabIndex        =   7
            Top             =   1560
            Width           =   2415
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Showdown"
            Height          =   255
            Index           =   4
            Left            =   120
            TabIndex        =   6
            Top             =   1200
            Width           =   2175
         End
         Begin VB.OptionButton Option1 
            Caption         =   "RL Jump"
            Height          =   255
            Index           =   3
            Left            =   120
            TabIndex        =   5
            Top             =   960
            Width           =   2175
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Practice"
            Height          =   255
            Index           =   2
            Left            =   120
            TabIndex        =   4
            Top             =   720
            Width           =   2175
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Competitive"
            Height          =   255
            Index           =   1
            Left            =   120
            TabIndex        =   3
            Top             =   480
            Width           =   2175
         End
         Begin VB.OptionButton Option1 
            Caption         =   "Standard"
            Height          =   255
            Index           =   0
            Left            =   120
            TabIndex        =   2
            Top             =   240
            Width           =   2175
         End
         Begin VB.Label Label3 
            Caption         =   "mins"
            Height          =   255
            Left            =   1560
            TabIndex        =   9
            Top             =   1800
            Width           =   615
         End
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Teamplay:"
         Height          =   255
         Left            =   3000
         TabIndex        =   81
         Top             =   2160
         Width           =   1095
      End
   End
End
Attribute VB_Name = "PureCTFSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Apply_Click()

    Main.setinserver2 "adminpass", "", adminpwd, ""
    k = Val(Check1(0) + Check1(1) * 2)
    Main.setinserver "modechange", "", k, False
    Main.setinserver "adminvote", "", Check2, False
    k = 0
    For o = 0 To 4
    If Option1(o).Value Then k = o: Exit For
    Next
    
    Main.setinserver "mode", "", k, False
    Main.setinserver "revert", "", Val(revert), False
    
    For o = 0 To 10
    Main.setinserver Check4(o).Tag, "", Check4(o), False
    Next
    
    k = 0
    For o = 0 To 3
    k = k + Check5(o) * (2 ^ o)
    Next
    Main.setinserver "extras", "", k, False
    
    k = 0
    For o = 0 To 4
    k = k + Check6(o) * (2 ^ o)
    Next
    Main.setinserver "anticheats", "", k, False
    
    For o = 0 To 12
    k = Val(Text1(o))
    Main.setinserver Text1(o).Tag, "", k, False
    Next
    
    Main.servRconAns "teamplay " & teamplay.text
        
    If MsgBox("Do you wish to restart map ?", vbYesNo) = vbYes Then Main.RestartMap
        
End Sub

Private Sub Check3_Click()
Select Case Check3.Value
    Case 1
        revert.Enabled = True
        revert.text = Val(revert.text)
    Case 0
        revert.Enabled = False
        revert.text = ""
    End Select
End Sub

Private Sub Command1_Click()
Apply_Click
Unload Me

End Sub

Private Sub Command2_Click()
Unload Me

End Sub

Private Sub Command3_Click()
Main.ShowCTFSettings
TCTFSettings.Label1.Caption = "CTF Teamplay"
TCTFSettings.Label2.Visible = False
TCTFSettings.Label3.Visible = False
TCTFSettings.UpDown1.Visible = False
TCTFSettings.temp1.Visible = False
TCTFSettings.SetFocus
End Sub
