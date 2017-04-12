VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form RASettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Rocket Arena configuration"
   ClientHeight    =   4980
   ClientLeft      =   1620
   ClientTop       =   1560
   ClientWidth     =   6585
   Icon            =   "RASettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4980
   ScaleWidth      =   6585
   Begin VB.CommandButton Command3 
      Cancel          =   -1  'True
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   40
      Top             =   4560
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Apply"
      Height          =   375
      Left            =   3720
      TabIndex        =   39
      Top             =   4560
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   2280
      TabIndex        =   38
      Top             =   4560
      Width           =   1335
   End
   Begin VB.Frame Frame3 
      Caption         =   "Settings"
      Height          =   2295
      Left            =   4200
      TabIndex        =   37
      Top             =   2160
      Width           =   2295
      Begin VB.CheckBox Check1 
         Caption         =   "Mode"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   48
         Tag             =   "a_mode"
         Top             =   1920
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Terse"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   47
         Tag             =   "a_terse"
         Top             =   1680
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Countdown"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   46
         Tag             =   "a_countdown"
         Top             =   1440
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Model off"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   45
         Tag             =   "a_modeloff"
         Top             =   1200
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Penalty"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   44
         Tag             =   "a_penalty"
         Top             =   960
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Draw"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   43
         Tag             =   "a_draw"
         Top             =   720
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Force"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   42
         Tag             =   "a_force"
         Top             =   480
         Width           =   2055
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Run emode"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   41
         Tag             =   "a_runemode"
         Top             =   240
         Width           =   2055
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Message of the Day"
      Height          =   2295
      Left            =   0
      TabIndex        =   29
      Top             =   2160
      Width           =   4095
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   3
         Left            =   120
         TabIndex        =   36
         Tag             =   "a_motd_d"
         Top             =   1440
         Width           =   3855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   2
         Left            =   120
         TabIndex        =   35
         Tag             =   "a_motd_c"
         Top             =   1080
         Width           =   3855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   1
         Left            =   120
         TabIndex        =   34
         Tag             =   "a_motd_b"
         Top             =   720
         Width           =   3855
      End
      Begin VB.TextBox Text1 
         Height          =   285
         Index           =   0
         Left            =   120
         TabIndex        =   33
         Tag             =   "a_motd_a"
         Top             =   360
         Width           =   3855
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   7
         Left            =   3240
         TabIndex        =   31
         Tag             =   "a_motd_time"
         Text            =   "30"
         Top             =   1800
         Width           =   495
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   7
         Left            =   3735
         TabIndex        =   32
         Top             =   1800
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(7)"
         BuddyDispid     =   196616
         BuddyIndex      =   7
         OrigLeft        =   5880
         OrigTop         =   1320
         OrigRight       =   6120
         OrigBottom      =   1575
         Max             =   60
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Message of the day time:"
         Height          =   255
         Index           =   7
         Left            =   1200
         TabIndex        =   30
         Top             =   1800
         Width           =   1935
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Players begin with"
      Height          =   2055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   6495
      Begin VB.CommandButton Command4 
         Caption         =   "Map rotation"
         Height          =   375
         Left            =   4920
         TabIndex        =   51
         Top             =   1440
         Width           =   1335
      End
      Begin VB.TextBox adminpwd 
         Height          =   285
         Left            =   3600
         MaxLength       =   4
         TabIndex        =   49
         Top             =   1680
         Width           =   975
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   6
         Left            =   5280
         TabIndex        =   27
         Tag             =   "a_countval"
         Text            =   "3"
         Top             =   960
         Width           =   495
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   5
         Left            =   5280
         TabIndex        =   24
         Tag             =   "a_cells"
         Text            =   "999"
         Top             =   600
         Width           =   495
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   4
         Left            =   5280
         TabIndex        =   21
         Tag             =   "a_rockets"
         Text            =   "999"
         Top             =   240
         Width           =   495
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   3
         Left            =   3120
         TabIndex        =   18
         Tag             =   "a_nails"
         Text            =   "999"
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   2
         Left            =   3120
         TabIndex        =   15
         Tag             =   "a_shells"
         Text            =   "999"
         Top             =   960
         Width           =   495
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   1
         Left            =   3120
         TabIndex        =   12
         Tag             =   "a_health"
         Text            =   "200"
         Top             =   600
         Width           =   495
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   0
         Left            =   3615
         TabIndex        =   10
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(0)"
         BuddyDispid     =   196616
         BuddyIndex      =   0
         OrigLeft        =   3840
         OrigTop         =   240
         OrigRight       =   4080
         OrigBottom      =   495
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin VB.TextBox variable 
         Height          =   285
         Index           =   0
         Left            =   3120
         TabIndex        =   9
         Tag             =   "a_armor"
         Text            =   "200"
         Top             =   240
         Width           =   495
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Lightning gun"
         Height          =   255
         Index           =   6
         Left            =   240
         TabIndex        =   7
         Top             =   1680
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Rocket launcher"
         Height          =   255
         Index           =   5
         Left            =   240
         TabIndex        =   6
         Top             =   1440
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Grenade launcher"
         Height          =   255
         Index           =   4
         Left            =   240
         TabIndex        =   5
         Top             =   1200
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Double nailgun"
         Height          =   255
         Index           =   3
         Left            =   240
         TabIndex        =   4
         Top             =   960
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Nailgun"
         Height          =   255
         Index           =   2
         Left            =   240
         TabIndex        =   3
         Top             =   720
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Double shotgun"
         Height          =   255
         Index           =   1
         Left            =   240
         TabIndex        =   2
         Top             =   480
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin VB.CheckBox weapons 
         Caption         =   "Shotgun"
         Height          =   255
         Index           =   0
         Left            =   240
         TabIndex        =   1
         Top             =   240
         Value           =   1  'Checked
         Width           =   1575
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   1
         Left            =   3615
         TabIndex        =   13
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(1)"
         BuddyDispid     =   196616
         BuddyIndex      =   1
         OrigLeft        =   3840
         OrigTop         =   600
         OrigRight       =   4080
         OrigBottom      =   855
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   2
         Left            =   3615
         TabIndex        =   16
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(2)"
         BuddyDispid     =   196616
         BuddyIndex      =   2
         OrigLeft        =   3840
         OrigTop         =   960
         OrigRight       =   4080
         OrigBottom      =   1215
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   3
         Left            =   3615
         TabIndex        =   19
         Top             =   1320
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(3)"
         BuddyDispid     =   196616
         BuddyIndex      =   3
         OrigLeft        =   3840
         OrigTop         =   1320
         OrigRight       =   4080
         OrigBottom      =   1575
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   4
         Left            =   5776
         TabIndex        =   22
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(4)"
         BuddyDispid     =   196616
         BuddyIndex      =   4
         OrigLeft        =   5880
         OrigTop         =   240
         OrigRight       =   6120
         OrigBottom      =   495
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   5
         Left            =   5776
         TabIndex        =   25
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(5)"
         BuddyDispid     =   196616
         BuddyIndex      =   5
         OrigLeft        =   5880
         OrigTop         =   600
         OrigRight       =   6120
         OrigBottom      =   855
         Max             =   999
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Index           =   6
         Left            =   5776
         TabIndex        =   28
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         AutoBuddy       =   -1  'True
         BuddyControl    =   "variable(6)"
         BuddyDispid     =   196616
         BuddyIndex      =   6
         OrigLeft        =   5880
         OrigTop         =   960
         OrigRight       =   6120
         OrigBottom      =   1215
         Max             =   60
         SyncBuddy       =   -1  'True
         BuddyProperty   =   0
         Enabled         =   -1  'True
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Admin password:"
         Height          =   255
         Left            =   2280
         TabIndex        =   50
         Top             =   1680
         Width           =   1215
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Count"
         Height          =   255
         Index           =   6
         Left            =   4440
         TabIndex        =   26
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Cell"
         Height          =   255
         Index           =   5
         Left            =   4440
         TabIndex        =   23
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Rockets"
         Height          =   255
         Index           =   4
         Left            =   4440
         TabIndex        =   20
         Top             =   240
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Nails"
         Height          =   255
         Index           =   3
         Left            =   2280
         TabIndex        =   17
         Top             =   1320
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Shells"
         Height          =   255
         Index           =   2
         Left            =   2280
         TabIndex        =   14
         Top             =   960
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Health"
         Height          =   255
         Index           =   1
         Left            =   2280
         TabIndex        =   11
         Top             =   600
         Width           =   735
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Armor"
         Height          =   255
         Index           =   0
         Left            =   2280
         TabIndex        =   8
         Top             =   240
         Width           =   735
      End
      Begin VB.Line Line2 
         BorderColor     =   &H00FFFFFF&
         X1              =   2170
         X2              =   2170
         Y1              =   240
         Y2              =   1920
      End
      Begin VB.Line Line1 
         BorderColor     =   &H00404040&
         X1              =   2160
         X2              =   2160
         Y1              =   240
         Y2              =   1920
      End
   End
End
Attribute VB_Name = "RASettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

Private Sub Command1_Click()
Command2_Click
Unload Me

End Sub

Public Sub Command2_Click()
Command1.Enabled = False
Command2.Enabled = False
Command3.Enabled = False

Dim k As New progress
k.Label = "Updating server settings..."
k.perc = 0
k.Visible = True

t = 0
For o = weapons.LBound To weapons.UBound
t = t + (2 ^ o) * weapons(o).Value
Next
Main.setinserver "a_weapons", "", t, False
k.perc = 10

For o = variable.LBound To variable.UBound
Main.setinserver variable(o).Tag, "", Val(variable(o).text), False
k.perc = 10 + o * 5
Next

For o = Text1.LBound To Text1.UBound
Main.subst$ Text1(o), " ", "_"
Main.setinserver2 Text1(o).Tag, "", Text1(o).text, ""
k.perc = 50 + o * 5
Next

For o = Check1.LBound To Check1.UBound
Main.setinserver Check1(o).Tag, "", Check1(o), False
k.perc = 75 + o * 3
Next

k.perc = 95
Main.setinserver "a_admin", "", Val(adminpwd.text), False

If MsgBox("Restart map " & Main.findinserver$("map") & " ?", vbYesNo) = vbYes Then
    Main.RestartMap
    End If
    
Unload k
Command1.Enabled = True
Command2.Enabled = True
Command3.Enabled = True
End Sub

Private Sub Command3_Click()
Unload Me

End Sub

Private Sub Command4_Click()
Main.mnuMapRotation_Click

End Sub
