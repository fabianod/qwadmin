VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form TCTFSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "CTF Settings"
   ClientHeight    =   4260
   ClientLeft      =   3165
   ClientTop       =   1410
   ClientWidth     =   4290
   Icon            =   "TCTFSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4260
   ScaleWidth      =   4290
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2880
      TabIndex        =   16
      Top             =   3840
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   1440
      TabIndex        =   15
      Top             =   3840
      Width           =   1335
   End
   Begin VB.CheckBox tp 
      Caption         =   "Custom Capture the Flag"
      Height          =   195
      Index           =   9
      Left            =   240
      TabIndex        =   14
      ToolTipText     =   $"TCTFSettings.frx":08CA
      Top             =   3000
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Capture the Flag"
      Height          =   195
      Index           =   8
      Left            =   240
      TabIndex        =   13
      ToolTipText     =   "This enables Capture the Flag support."
      Top             =   2760
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Drop Items"
      Height          =   195
      Index           =   7
      Left            =   240
      TabIndex        =   12
      ToolTipText     =   $"TCTFSettings.frx":0986
      Top             =   2520
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Static Teams"
      Height          =   195
      Index           =   6
      Left            =   240
      TabIndex        =   11
      ToolTipText     =   "Players will not be allowed to change teams"
      Top             =   2280
      Width           =   6015
   End
   Begin VB.CheckBox tp 
      Caption         =   "Team Color Lock"
      Height          =   195
      Index           =   5
      Left            =   240
      TabIndex        =   10
      ToolTipText     =   $"TCTFSettings.frx":0A33
      Top             =   2040
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Death Penalty"
      Height          =   195
      Index           =   4
      Left            =   240
      TabIndex        =   9
      ToolTipText     =   "Any player who kills his teammate will burst apart in a bloody mess."
      Top             =   1800
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Frag Penalty"
      Height          =   195
      Index           =   3
      Left            =   240
      TabIndex        =   8
      ToolTipText     =   $"TCTFSettings.frx":0B7B
      Top             =   1560
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Damage to Attacker"
      Height          =   195
      Index           =   2
      Left            =   240
      TabIndex        =   7
      ToolTipText     =   "A player who attacks his teammate will receive the same damage the teammate would have received, had he not been protected."
      Top             =   1320
      Width           =   5655
   End
   Begin VB.CheckBox tp 
      Caption         =   "Armor Protect"
      Height          =   195
      Index           =   1
      Left            =   240
      TabIndex        =   6
      ToolTipText     =   "Players receive no armor damage from teammates' attacks."
      Top             =   1080
      Width           =   5655
   End
   Begin ComCtl2.UpDown UpDown1 
      Height          =   285
      Left            =   1920
      TabIndex        =   4
      Top             =   3360
      Width           =   240
      _ExtentX        =   423
      _ExtentY        =   503
      _Version        =   327681
      BuddyControl    =   "temp1"
      BuddyDispid     =   196612
      OrigLeft        =   2160
      OrigTop         =   4800
      OrigRight       =   2400
      OrigBottom      =   5055
      Max             =   100
      SyncBuddy       =   -1  'True
      BuddyProperty   =   0
      Enabled         =   -1  'True
   End
   Begin VB.TextBox temp1 
      Height          =   285
      Left            =   1440
      TabIndex        =   2
      Text            =   "100"
      Top             =   3360
      Width           =   495
   End
   Begin VB.CheckBox tp 
      Caption         =   "Health Protect"
      Height          =   195
      Index           =   0
      Left            =   240
      TabIndex        =   1
      ToolTipText     =   "Players receive no health damage from teammates' attacks."
      Top             =   840
      Width           =   6015
   End
   Begin VB.Label Label3 
      Caption         =   "% of the CTF map entities."
      Height          =   255
      Left            =   2280
      TabIndex        =   5
      Top             =   3360
      Width           =   1935
   End
   Begin VB.Label Label2 
      Caption         =   "Level will contain "
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   3360
      Width           =   1335
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      Caption         =   "Threewave CTF"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   24
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   615
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4215
   End
End
Attribute VB_Name = "TCTFSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
t = 0
For o = 0 To 9
If tp(o).DataChanged Then DC = True
tp(o).DataChanged = False
t = t + tp(o).Value * (2 ^ o)
Next

If DC Then dummy2 = Main.servRconAns$("teamplay " + Str$(t))
If temp1.DataChanged Then
    dummy2 = Main.servRconAns$("serverinfo temp1 " + temp1.text)
    temp1.DataChanged = False
    End If

dummy = MsgBox("Restart map " + Main.map.text + " ?", vbYesNo)
Me.Visible = False
If dummy = vbYes Then
    dummy2 = Main.servRconAns$("map " + Main.map.text)
    End If
Unload Me

End Sub

Private Sub Command2_Click()
Me.Visible = False
Unload Me

End Sub
