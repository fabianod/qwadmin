VERSION 5.00
Begin VB.Form Wizard 
   BorderStyle     =   3  'Fixed Dialog
   Caption         =   "Clan Match Wizard..."
   ClientHeight    =   3915
   ClientLeft      =   1770
   ClientTop       =   2340
   ClientWidth     =   7530
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "Wizard.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3915
   ScaleWidth      =   7530
   ShowInTaskbar   =   0   'False
   Begin VB.Frame Frame4 
      Caption         =   "Other settings"
      Height          =   2295
      Left            =   4440
      TabIndex        =   26
      Top             =   1080
      Width           =   3015
      Begin VB.CheckBox watervis 
         Caption         =   "Enable watervis"
         Height          =   255
         Left            =   120
         TabIndex        =   32
         Top             =   1320
         Value           =   1  'Checked
         Width           =   2775
      End
      Begin VB.CheckBox mapcheck 
         Caption         =   "Check clients maps (mapcheck)"
         Height          =   255
         Left            =   120
         TabIndex        =   31
         Top             =   960
         Width           =   2775
      End
      Begin VB.TextBox password 
         Height          =   285
         Left            =   1680
         TabIndex        =   30
         Top             =   240
         Width           =   1215
      End
      Begin VB.TextBox spectpass 
         Height          =   285
         Left            =   1680
         TabIndex        =   29
         Top             =   600
         Width           =   1215
      End
      Begin VB.CheckBox Passwordactive 
         Caption         =   "Password :"
         Height          =   255
         Left            =   120
         TabIndex        =   28
         Top             =   240
         Value           =   1  'Checked
         Width           =   1095
      End
      Begin VB.CheckBox spectpassactive 
         Caption         =   "Spectator pass :"
         Height          =   255
         Left            =   120
         TabIndex        =   27
         Top             =   600
         Width           =   1455
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Limits"
      Height          =   975
      Left            =   2400
      TabIndex        =   15
      Top             =   0
      Width           =   5055
      Begin VB.TextBox clientsperteam 
         Height          =   285
         Left            =   1680
         TabIndex        =   18
         Text            =   "8"
         Top             =   240
         Width           =   375
      End
      Begin VB.TextBox prematch 
         Height          =   285
         Left            =   1680
         TabIndex        =   17
         Text            =   "5"
         Top             =   600
         Width           =   375
      End
      Begin VB.TextBox gametime 
         Height          =   285
         Left            =   3000
         TabIndex        =   16
         Text            =   "30"
         Top             =   600
         Width           =   375
      End
      Begin VB.Label Label3 
         Caption         =   "Players in each team:"
         Height          =   255
         Left            =   120
         TabIndex        =   23
         Top             =   240
         Width           =   1695
      End
      Begin VB.Label clientdesc 
         Alignment       =   2  'Center
         Caption         =   "(maxclients is 16)"
         Height          =   255
         Left            =   3480
         TabIndex        =   22
         Top             =   240
         Width           =   1455
      End
      Begin VB.Label Label5 
         Alignment       =   1  'Right Justify
         Caption         =   "Prematch time:"
         Height          =   255
         Left            =   480
         TabIndex        =   21
         Top             =   600
         Width           =   1095
      End
      Begin VB.Label Label6 
         Alignment       =   1  'Right Justify
         Caption         =   "Game time"
         Height          =   255
         Left            =   2040
         TabIndex        =   20
         Top             =   600
         Width           =   855
      End
      Begin VB.Label timelimit 
         Alignment       =   2  'Center
         Caption         =   "(timelimit is 35)"
         Height          =   255
         Left            =   3480
         TabIndex        =   19
         Top             =   600
         Width           =   1455
      End
   End
   Begin VB.Frame Frame2 
      Caption         =   "Game settings"
      Height          =   2295
      Left            =   0
      TabIndex        =   7
      Top             =   1080
      Width           =   4335
      Begin VB.TextBox teamplay 
         Height          =   285
         Left            =   1080
         TabIndex        =   24
         Text            =   "21?tf2.8"
         Top             =   1920
         Width           =   1095
      End
      Begin VB.CheckBox WS 
         Caption         =   "New War standard (new flags)"
         Height          =   255
         Left            =   120
         TabIndex        =   13
         Top             =   840
         Value           =   1  'Checked
         Width           =   3495
      End
      Begin VB.CheckBox capsonly 
         Caption         =   "Flag captures only match"
         Height          =   255
         Left            =   120
         TabIndex        =   12
         Top             =   1080
         Width           =   3615
      End
      Begin VB.CheckBox specs 
         Caption         =   "Allow spectators during game"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   1560
         Value           =   1  'Checked
         Width           =   2415
      End
      Begin VB.TextBox numspecs 
         Height          =   285
         Left            =   2520
         TabIndex        =   10
         Text            =   "2"
         Top             =   1560
         Width           =   615
      End
      Begin VB.ComboBox maps 
         Height          =   315
         Left            =   600
         Sorted          =   -1  'True
         Style           =   2  'Dropdown List
         TabIndex        =   9
         Top             =   360
         Width           =   1575
      End
      Begin VB.CheckBox teamfrags 
         Caption         =   "Teamfrags"
         Height          =   255
         Left            =   120
         TabIndex        =   8
         Top             =   1320
         Width           =   2295
      End
      Begin VB.Label Label7 
         Caption         =   "Teamplay:"
         Height          =   255
         Left            =   120
         TabIndex        =   25
         Top             =   1920
         Width           =   855
      End
      Begin VB.Label Label4 
         Caption         =   "Map:"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   360
         Width           =   495
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Clans"
      Height          =   975
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   2295
      Begin VB.TextBox clan1 
         Height          =   285
         Left            =   1200
         MaxLength       =   4
         TabIndex        =   4
         Text            =   "HOME"
         Top             =   240
         Width           =   975
      End
      Begin VB.TextBox clan2 
         Height          =   285
         Left            =   1200
         MaxLength       =   4
         TabIndex        =   3
         Text            =   "AWAY"
         Top             =   600
         Width           =   975
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         Caption         =   "Clan 1 name:"
         Height          =   255
         Left            =   120
         TabIndex        =   6
         Top             =   240
         Width           =   975
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Clan 2 name:"
         Height          =   255
         Left            =   120
         TabIndex        =   5
         Top             =   600
         Width           =   975
      End
   End
   Begin VB.CommandButton Cancel 
      Caption         =   "Close"
      Height          =   375
      Left            =   6000
      TabIndex        =   1
      Top             =   3480
      Width           =   1455
   End
   Begin VB.CommandButton Finish 
      Caption         =   "Set up server..."
      Default         =   -1  'True
      Height          =   375
      Left            =   4320
      TabIndex        =   0
      Top             =   3480
      Width           =   1455
   End
End
Attribute VB_Name = "Wizard"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public NoTimelimit As Boolean, TL
Private Sub Cancel_Click()
Unload Me
End Sub

Private Sub clientsperteam_Change()
If Val(clientsperteam) > 16 Then clientsperteam = "16"
If Val(clientsperteam) <= 0 Then clientsperteam = "1"
clientdesc.Caption = "(maxclients is " + Str$(2 * Val(clientsperteam)) + ")"
End Sub

Private Sub Finish_Click()
If Main.DeveloperMode = False Then On Error GoTo errhand

Dim pb As New progress
Load pb
Main.ServerMessage " --- QWADMIN CLAN MATCH WIZARD --- "
Main.ServerMessage " --- " + clan1.text + " vs " + clan2.text + " --- "
Main.ServerMessage "Configuring server..."
pb.Label.Caption = "Setting up clan match..."
pb.Label.refresh
pb.Visible = True
pb.refresh
pb.perc = 0

Main.setinserver "ws", "use_standard", WS.Value, True
pb.perc = 10
If specs.Value Then
    dummy$ = Main.servRconAns$("maxspectators " + numspecs.text)
    Else
    dummy$ = Main.servRconAns$("maxspectators 0")
    End If
pb.perc = 20

mc = Val(clientsperteam.text) * 2
dummy$ = Main.servRconAns$("maxclients " + Str$(mc))
pb.perc = 30

pm = Val(prematch.text)
If pm > 0 Then
    pmtime$ = Str$(pm) + " mins prematch"
    Else
    pmtime$ = "NO prematch"
    End If
gt = Val(gametime.text)
If gt = 0 Then
    TL = 0
    gametim$ = ". NO timelimit"
    Else
    TL = pm + gt
    gametim$ = "," + Str$(gt) + " mins gametime."
    End If
dummy$ = Main.servRconAns$("timelimit " + Str$(TL))
pb.perc = 40

If Passwordactive.Value Then
    dummy$ = Main.servRconAns$("password " + password.text)
    Else
    dummy$ = Main.servRconAns$("password none")
    End If
pb.perc = 50

If spectpassactive.Value Then
    dummy$ = Main.servRconAns$("spectator_password " + spectpass.text)
    Else
    dummy$ = Main.servRconAns$("spectator_password 1")
    End If
pb.perc = 60

dummy$ = "teamplay " + teamplay.text
pb.perc = 70

Main.setinserver "fts", "fullteamscore", capsonly.Value, True
pb.perc = 72

Main.setinserver "t", "teamfrags", capsonly.Value, True
pb.perc = 73

Main.setinserver "c", "clan", 1, True
pb.perc = 75

Main.ServerMessage "Map is " + maps.text + "... Restarting server..."
Main.servRconAns "sv_mapcheck " + Str$(mapcheck.Value)
Main.servRconAns "watervis " + Str$(Watervis.Value)
Main.servRconAns "gamedir fortress"
Main.servRconAns "sv_waterfriction 1"
Main.servRconAns "sv_friction 4"
Main.servRconAns "sv_aim 0.97"
Main.servRconAns "fraglimit 0"

Main.setinserver2 "t1", "team1", clan1.text, ""
pb.perc = 77

Main.setinserver2 "t2", "team2", clan2.text, ""
pb.perc = 80
pb.Label2.Caption = "Restarting map..."
pb.Label2.refresh
dummy$ = Main.servRconAns$("map " + maps.text)
t = Timer
Do
DoEvents
pb.perc = 85 + Int(Timer - t)
If Int(Timer - t) <> ltt Then
    pb.Label2.Caption = "Waiting for players... [" + Str$(Int(Timer - t)) + "]"
    pb.Label2.refresh
    ltt = Int(Timer - t)
    End If
Loop Until Timer - t >= 15
pb.Visible = False

Main.ServerMessage ("TEAM1:" + clan1.text + "  -  TEAM2:" + clan2.text)
Main.ServerMessage (pmtime$ + gametim$)
Main.ServerMessage ("Good luck for both clans!")

Unload pb
Unload Me
Exit Sub
errhand:
Select Case Main.ShowError
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
End Sub

Public Sub Form_Load()
If Main.DeveloperMode = True Then On Error GoTo errhand
If Dir$("tfmaps.ini") = "" Then
    a = FreeFile
    Open "tfmaps.ini" For Output As #a
    Print #a, "2fort5.bsp"
    Print #a, "well6.bsp"
    Print #a, "2tech4.bsp"
    Print #a, "2tech3.bsp"
    Print #a, "2fort4.bsp"
    Print #a, "chaos1.bsp"
    Close #a
    End If
a = FreeFile
Open "tfmaps.ini" For Input As #a
nmaps = 0
Do
Line Input #a, m$
k = InStr(m$, ".bsp")
If k = 0 Then k = Len(m$)
nmaps = nmaps + 1
maps.AddItem Left$(m$, k - 1)
Loop Until EOF(a)
maps.text = "2fort5"
Close #a
Exit Sub
errhand:
Select Case Main.ShowError
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
    
End Sub

Private Sub gametime_Change()
If Val(gametime.text) < 0 Then gametime.text = "0"
If Val(gametime.text) = 0 Then
    NoTimelimit = True
    TL = 0
    Else
    NoTimelimit = False
    End If
If Val(gametime.text) <> 0 And Val(gametime.text) < Val(prematch.text) Then
    gametime.text = Mid$(Str$(Val(prematch.text) + 1), 2)
    End If
If NoTimelimit Then
    timelimit.Caption = "(no timelimit)"
    TL = 0
    Else
    timelimit.Caption = "(timelimit is " + Str$(Val(gametime.text) + Val(prematch.text)) + ")"
    TL = Val(gametime.text) + Val(prematch.text)
    End If
End Sub

Private Sub numspecs_Change()
k = Val(numspecs.text)
If k = 0 Then
    specs.Value = 0
    Else
    If k > 16 Then numspecs.text = "16"
    If k < 1 Then numspecs.text = "1"
    End If
End Sub

Private Sub Passwordactive_Click()
If Passwordactive.Value = 1 Then
    password.Enabled = True
    Else
    password.text = ""
    password.Enabled = False
    End If
    
End Sub

Private Sub prematch_Change()
k = Val(prematch)
If k < 0 Then prematch.text = "0"
If k > Val(gametime.text) And gametime.text <> "0" Then gametime.text = Mid$(Str$(k + 1), 2)
If Val(gametime.text) = 0 Then
    NoTimelimit = True
    TL = 0
    Else
    NoTimelimit = False
    End If
If NoTimelimit Then
    timelimit.Caption = "(no timelimit)"
    TL = 0
    Else
    timelimit.Caption = "(timelimit is " + Str$(Val(gametime.text) + Val(prematch.text)) + ")"
    TL = Val(gametime.text) + Val(prematch.text)
    End If
    
End Sub

Private Sub specs_Click()
If specs.Value = 1 Then
    numspecs.Enabled = True
    Else
    numspecs.Enabled = False
    End If
End Sub

Private Sub spectpassactive_Click()
If spectpassactive.Value = 1 Then
    spectpass.Enabled = True
    Else
    spectpass.text = ""
    spectpass.Enabled = False
    End If
End Sub

Private Sub teaplay_Click()
Main.BetaWarning

End Sub
