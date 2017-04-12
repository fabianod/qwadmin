VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form QRingSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "QRing settings"
   ClientHeight    =   4275
   ClientLeft      =   2310
   ClientTop       =   2250
   ClientWidth     =   6585
   Icon            =   "QRing settings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4275
   ScaleWidth      =   6585
   Begin VB.CommandButton Command3 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5160
      TabIndex        =   44
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3720
      TabIndex        =   43
      Top             =   3840
      Width           =   1335
   End
   Begin VB.Frame Frame3 
      Caption         =   "Variables"
      Height          =   3135
      Left            =   0
      TabIndex        =   18
      Top             =   0
      Width           =   2895
      Begin VB.TextBox values 
         Height          =   285
         Index           =   7
         Left            =   2040
         TabIndex        =   41
         Tag             =   "auto"
         Top             =   2760
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   6
         Left            =   2040
         TabIndex        =   38
         Tag             =   "exitmin"
         Top             =   2400
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   5
         Left            =   2040
         TabIndex        =   35
         Tag             =   "lt"
         Top             =   2040
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   4
         Left            =   2040
         TabIndex        =   32
         Tag             =   "ln"
         Top             =   1680
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   3
         Left            =   2040
         TabIndex        =   29
         Tag             =   "tmclan"
         Top             =   1320
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   2
         Left            =   2040
         TabIndex        =   26
         Tag             =   "tmffa"
         Top             =   960
         Width           =   495
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   1
         Left            =   2040
         TabIndex        =   23
         Tag             =   "dmfa"
         Top             =   600
         Width           =   495
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   0
         Left            =   2520
         TabIndex        =   21
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin VB.TextBox values 
         Height          =   285
         Index           =   0
         Left            =   2040
         TabIndex        =   20
         Tag             =   "votemin"
         Top             =   240
         Width           =   495
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   1
         Left            =   2520
         TabIndex        =   24
         Top             =   600
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   2
         Left            =   2520
         TabIndex        =   27
         Top             =   960
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   3
         Left            =   2520
         TabIndex        =   30
         Top             =   1320
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   4
         Left            =   2520
         TabIndex        =   33
         Top             =   1680
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   5
         Left            =   2520
         TabIndex        =   36
         Top             =   2040
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   6
         Left            =   2520
         TabIndex        =   39
         Top             =   2400
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin ComCtl2.UpDown UpDown 
         Height          =   255
         Index           =   7
         Left            =   2520
         TabIndex        =   42
         Top             =   2760
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   450
         _Version        =   327681
         Enabled         =   -1  'True
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Autorespawn after x secs"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   40
         Top             =   2760
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Minimum time before exit"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   37
         Top             =   2400
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Lock team:"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   34
         Top             =   2040
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Lock max:"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   31
         Top             =   1680
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Def. clan mode teamplay:"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   28
         Top             =   1320
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Def. FFA mode teamplay:"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   25
         Top             =   960
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Def. deathmatch mode:"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   22
         Top             =   600
         Width           =   1815
      End
      Begin VB.Label valdesc 
         Alignment       =   1  'Right Justify
         Caption         =   "Players required to start:"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   19
         Top             =   240
         Width           =   1815
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Settings"
      Height          =   3135
      Left            =   3000
      TabIndex        =   6
      Top             =   0
      Width           =   3495
      Begin VB.CheckBox Powerups 
         Caption         =   "No ring of invisibility"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   17
         Top             =   2640
         Width           =   3255
      End
      Begin VB.CheckBox Powerups 
         Caption         =   "No quad"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   16
         Top             =   2400
         Width           =   3255
      End
      Begin VB.CheckBox Powerups 
         Caption         =   "No pentagrams (invulnerability)"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   15
         Top             =   2160
         Width           =   3255
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Fresh spawn"
         Height          =   255
         Index           =   7
         Left            =   120
         TabIndex        =   14
         Top             =   1920
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "No color gl effects"
         Height          =   255
         Index           =   6
         Left            =   120
         TabIndex        =   13
         Tag             =   "noeffects"
         Top             =   1680
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Dedicated mode"
         Height          =   255
         Index           =   5
         Left            =   120
         TabIndex        =   12
         Tag             =   "de"
         Top             =   1440
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "No warp"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   11
         Tag             =   "nw"
         Top             =   1200
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "No elections"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   10
         Tag             =   "ne"
         Top             =   960
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Level lock"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   9
         Tag             =   "ll"
         Top             =   720
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Lockout"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   8
         Tag             =   "lo"
         Top             =   480
         Width           =   3135
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Fresh spawn"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   7
         Tag             =   "fs"
         Top             =   240
         Width           =   3135
      End
   End
   Begin VB.Frame Frame1 
      Height          =   1095
      Left            =   0
      TabIndex        =   0
      Top             =   3120
      Width           =   3495
      Begin VB.TextBox defaultmap 
         Height          =   285
         Left            =   1200
         TabIndex        =   4
         Top             =   600
         Width           =   855
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Map rotation"
         Height          =   495
         Left            =   2280
         TabIndex        =   3
         Top             =   240
         Width           =   1095
      End
      Begin VB.TextBox AdminCode 
         Height          =   285
         Left            =   1200
         MaxLength       =   6
         TabIndex        =   2
         Top             =   240
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Default map:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Admin code:"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   975
      End
   End
End
Attribute VB_Name = "QRingSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Main.mnuMapRotation_Click

End Sub

Private Sub Command2_Click()
Command2.Enabled = False
Command1.Enabled = False
Command3.Enabled = False
Dim k As New progress
k.Label.Caption = "Updating server settings..."
k.perc = 0
k.Visible = True

For o = 0 To 7
k.perc = p * 7
Main.setinserver Check1(o).Tag, "", Check1(o).Value, False
DoEvents
Next
t = 0
For o = 0 To 2
k.perc = 50 + p * 4
t = t + Powerups(o).Value * (2 ^ o)
Next
Main.setinserver "po", "", t, False
For o = 0 To 7
k.perc = 60 + p * 6
Main.setinserver values(o).Tag, "", Val(values(o).text), False
DoEvents
Next
k.perc = 100
Main.setinserver2 "ad", "", AdminCode.text, ""
DoEvents
Main.setinserver2 "default", "", defaultmap.text, ""
Unload k
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me

End Sub

Private Sub UpDown_DownClick(Index As Integer)
k = Val(values(Index).text)
If k > UpDown(Index).Min Then
    k = k - 1
    values(Index).text = k
    End If
End Sub

Private Sub UpDown_UpClick(Index As Integer)
k = Val(values(Index).text)
If k < UpDown(Index).max Then
    k = k + 1
    values(Index).text = k
    End If
End Sub
