VERSION 5.00
Begin VB.Form MegaTFSettings 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "MegaTF Configuration"
   ClientHeight    =   2625
   ClientLeft      =   2790
   ClientTop       =   2865
   ClientWidth     =   3165
   Icon            =   "MegaTFSettings.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   2625
   ScaleWidth      =   3165
   Begin VB.CommandButton Command3 
      Caption         =   "Close"
      Height          =   375
      Left            =   1800
      TabIndex        =   7
      Top             =   2160
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   360
      TabIndex        =   6
      Top             =   2160
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Mega TF specific settings"
      Height          =   2055
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3135
      Begin VB.CommandButton Command1 
         Caption         =   "Other TF configurations"
         Height          =   375
         Left            =   1080
         TabIndex        =   8
         Top             =   1560
         Width           =   1935
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Players hear footsteps"
         Height          =   255
         Index           =   4
         Left            =   120
         TabIndex        =   5
         Tag             =   "footsteps"
         Top             =   1200
         Width           =   2775
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Spy grapple enabled"
         Height          =   255
         Index           =   3
         Left            =   120
         TabIndex        =   4
         Tag             =   "sg"
         Top             =   960
         Width           =   2775
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Air scout enabled"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   3
         Tag             =   "airscout"
         Top             =   720
         Width           =   2775
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Heads are kickable"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   2
         Tag             =   "HEADKICK"
         Top             =   480
         Width           =   2775
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Drop3 weapons enabled"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   1
         Tag             =   "drop3"
         Top             =   240
         Width           =   2295
      End
   End
End
Attribute VB_Name = "MegaTFSettings"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
Main.ShowTFSettings
End Sub

Private Sub Command2_Click()
Dim k As New progress
k.Label = "Updating settings on server..."
k.perc.Value = 0
k.Visible = True
k.refresh

Main.RefreshLocal
k.perc.Value = 15
Main.UpdateInfo
k.perc.Value = 30


For o = 0 To 4
k.refresh
k.perc.Value = 50 + (o / 4) * 50

If Check1(o).DataChanged Then
    Main.setinserver Check1(o).Tag, "", Check1(o).Value, True
    Check1(o).DataChanged = False
    End If
Next
k.Visible = False
Unload k
Unload Me
End Sub

Private Sub Command3_Click()
Unload Me

End Sub
