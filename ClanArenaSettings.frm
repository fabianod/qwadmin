VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form ClanArenaSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Clan Rocket Arena Settings"
   ClientHeight    =   4110
   ClientLeft      =   1620
   ClientTop       =   1560
   ClientWidth     =   6495
   Icon            =   "ClanArenaSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4110
   ScaleWidth      =   6495
   Begin VB.Frame Frame3 
      Caption         =   "Team settings"
      Height          =   1335
      Left            =   0
      TabIndex        =   25
      Top             =   0
      Width           =   6495
      Begin VB.TextBox values 
         Height          =   285
         Index           =   10
         Left            =   5520
         TabIndex        =   41
         Tag             =   "votepct"
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   9
         Left            =   5520
         TabIndex        =   36
         Tag             =   "votepct"
         Top             =   240
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   8
         Left            =   2280
         TabIndex        =   33
         Tag             =   "players"
         Top             =   960
         Width           =   375
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   7
         Left            =   2280
         TabIndex        =   30
         Tag             =   "players"
         Top             =   600
         Width           =   375
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   6
         Left            =   2280
         TabIndex        =   27
         Tag             =   "players"
         Top             =   240
         Width           =   375
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   6
         Left            =   2640
         TabIndex        =   26
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(6)"
         BuddyDispid     =   196615
         BuddyIndex      =   6
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   400
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   7
         Left            =   2640
         TabIndex        =   29
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         Value           =   1
         BuddyControl    =   "values(7)"
         BuddyDispid     =   196615
         BuddyIndex      =   7
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   2
         Min             =   1
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   8
         Left            =   2640
         TabIndex        =   32
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         Value           =   1
         BuddyControl    =   "values(8)"
         BuddyDispid     =   196615
         BuddyIndex      =   8
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   20
         Min             =   1
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   9
         Left            =   6000
         TabIndex        =   35
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(9)"
         BuddyDispid     =   196615
         BuddyIndex      =   9
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   100
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   10
         Left            =   6000
         TabIndex        =   40
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         Value           =   5
         BuddyControl    =   "values(10)"
         BuddyDispid     =   196615
         BuddyIndex      =   10
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   120
         Min             =   5
         Enabled         =   -1  'True
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Voting time in seconds:"
         Height          =   255
         Index           =   10
         Left            =   3360
         TabIndex        =   42
         Top             =   600
         Width           =   2055
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Minimum voting percentage"
         Height          =   255
         Index           =   9
         Left            =   3360
         TabIndex        =   37
         Top             =   240
         Width           =   2055
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Number of rounds:"
         Height          =   255
         Index           =   8
         Left            =   360
         TabIndex        =   34
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Number of teams:"
         Height          =   255
         Index           =   7
         Left            =   360
         TabIndex        =   31
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Players per team:"
         Height          =   255
         Index           =   6
         Left            =   360
         TabIndex        =   28
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.CommandButton Command2 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   7
      Top             =   3720
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3600
      TabIndex        =   6
      Top             =   3720
      Width           =   1335
   End
   Begin VB.Frame Frame2 
      Caption         =   "Player start with"
      Height          =   2655
      Left            =   0
      TabIndex        =   5
      Top             =   1440
      Width           =   3375
      Begin VB.TextBox values 
         Height          =   285
         Index           =   5
         Left            =   2280
         TabIndex        =   23
         Tag             =   "shells"
         Top             =   2160
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   4
         Left            =   2280
         TabIndex        =   21
         Tag             =   "nails"
         Top             =   1800
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   3
         Left            =   2280
         TabIndex        =   18
         Tag             =   "rockets"
         Top             =   1440
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   2
         Left            =   2280
         TabIndex        =   15
         Tag             =   "weapons"
         Top             =   1080
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   1
         Left            =   2280
         TabIndex        =   12
         Tag             =   "armor"
         Top             =   720
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   0
         Left            =   2280
         TabIndex        =   9
         Tag             =   "armor"
         Top             =   360
         Width           =   495
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   0
         Left            =   2760
         TabIndex        =   8
         Top             =   360
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "values(0)"
         BuddyDispid     =   196615
         BuddyIndex      =   0
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   400
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   1
         Left            =   2760
         TabIndex        =   11
         Top             =   2160
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(5)"
         BuddyDispid     =   196615
         BuddyIndex      =   5
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   2000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   2
         Left            =   2760
         TabIndex        =   14
         Top             =   1080
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(2)"
         BuddyDispid     =   196615
         BuddyIndex      =   2
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   127
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   3
         Left            =   2760
         TabIndex        =   17
         Top             =   1440
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(3)"
         BuddyDispid     =   196615
         BuddyIndex      =   3
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   2000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   4
         Left            =   2760
         TabIndex        =   20
         Top             =   1800
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(4)"
         BuddyDispid     =   196615
         BuddyIndex      =   4
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   2000
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   285
         Index           =   5
         Left            =   2760
         TabIndex        =   39
         Top             =   720
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         BuddyControl    =   "values(1)"
         BuddyDispid     =   196615
         BuddyIndex      =   1
         OrigLeft        =   2640
         OrigTop         =   360
         OrigRight       =   2880
         OrigBottom      =   615
         Max             =   400
         Enabled         =   -1  'True
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Number of shells:"
         Height          =   255
         Index           =   5
         Left            =   360
         TabIndex        =   24
         Top             =   2160
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Number of nails:"
         Height          =   255
         Index           =   4
         Left            =   360
         TabIndex        =   22
         Top             =   1800
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Number of rockets:"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   19
         Top             =   1440
         Width           =   2055
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Weapons:"
         Height          =   255
         Index           =   2
         Left            =   360
         TabIndex        =   16
         Top             =   1080
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Cells ammount:"
         Height          =   255
         Index           =   1
         Left            =   360
         TabIndex        =   13
         Tag             =   "cells"
         Top             =   720
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Red armour ammount:"
         Height          =   255
         Index           =   0
         Left            =   360
         TabIndex        =   10
         Top             =   360
         Width           =   1815
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Global settings"
      Height          =   2175
      Left            =   3480
      TabIndex        =   0
      Top             =   1440
      Width           =   3015
      Begin VB.CommandButton Command3 
         Caption         =   "Map rotation"
         Height          =   375
         Left            =   1440
         TabIndex        =   43
         Top             =   1680
         Width           =   1455
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Use Mortal Kombat sounds"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   38
         Tag             =   "sounds"
         Top             =   1200
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "No full teams"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   4
         Tag             =   "fullteams"
         Top             =   960
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Don't autolock"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   3
         Tag             =   "autolock"
         Top             =   720
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Enable menus"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   2
         Tag             =   "menus"
         Top             =   480
         Width           =   1815
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Dedicated competition mode"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Tag             =   "pickup"
         Top             =   240
         Width           =   2415
      End
   End
End
Attribute VB_Name = "ClanArenaSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Dim k As New progress
k.Label = "Updating settings on server..."

For o = 0 To 4
Main.setinserver Check1(o).Tag, "", Check1(o).Value, False
k.perc = o * 10
Next

For o = 0 To 10
Main.setinserver values(o).Tag, "", values(o).text, False
k.perc = 50 + o * 5
Next
dummy = MsgBox("Restart map " & mapnam & " ?", vbYesNo)
If dummy = vbYes Then
    Main.servRconAns$ "map " + Main.findinserver$("map")
    End If

Unload k
Unload Me

End Sub

Private Sub Command2_Click()
Unload Me

End Sub

Private Sub Command3_Click()
If PRO Then
    Main.mnuMapRotation_Click
    End If
    
End Sub

