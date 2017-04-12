VERSION 5.00
Begin VB.Form ExportConfig 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Export config to file"
   ClientHeight    =   3240
   ClientLeft      =   1905
   ClientTop       =   1770
   ClientWidth     =   3090
   Icon            =   "ExportConfig.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3240
   ScaleWidth      =   3090
   Begin VB.CheckBox Check5 
      Caption         =   "Include current rcon password"
      Height          =   255
      Left            =   120
      TabIndex        =   9
      Top             =   1080
      Value           =   1  'Checked
      Width           =   2895
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Browse..."
      Height          =   255
      Left            =   1680
      TabIndex        =   8
      Top             =   2280
      Width           =   1335
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   1800
      TabIndex        =   7
      Top             =   2760
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Export"
      Default         =   -1  'True
      Height          =   375
      Left            =   480
      TabIndex        =   6
      Top             =   2760
      Width           =   1215
   End
   Begin VB.TextBox filename 
      Height          =   285
      Left            =   120
      TabIndex        =   5
      Text            =   "C:\config.cfg"
      Top             =   1920
      Width           =   2775
   End
   Begin VB.CheckBox Check4 
      Caption         =   "Main server configuration"
      Height          =   255
      Left            =   120
      TabIndex        =   3
      Top             =   840
      Value           =   1  'Checked
      Width           =   2895
   End
   Begin VB.CheckBox Check3 
      Caption         =   "Include all other sv commands"
      Height          =   255
      Left            =   120
      TabIndex        =   2
      Top             =   600
      Value           =   1  'Checked
      Width           =   3015
   End
   Begin VB.CheckBox Check2 
      Caption         =   "Include localinfo variables"
      Height          =   255
      Left            =   120
      TabIndex        =   1
      Top             =   360
      Value           =   1  'Checked
      Width           =   2895
   End
   Begin VB.CheckBox Check1 
      Caption         =   "Include serverinfo variables"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Value           =   1  'Checked
      Width           =   2775
   End
   Begin VB.Label Label1 
      Caption         =   "Save to:"
      Height          =   255
      Left            =   120
      TabIndex        =   4
      Top             =   1680
      Width           =   1215
   End
End
Attribute VB_Name = "ExportConfig"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Command1_Click()
If DeveloperMode = False Then On Error GoTo errhand
If Check1.Value = 0 And Check2.Value = 0 And Check3.Value = 0 And Check4.Value = 0 Then Exit Sub
a = FreeFile
Command1.Enabled = False
Command2.Enabled = False

Open filename.text For Output As #a
Print #a, "// QWAdmin export configuration"
Print #a, "// Created at " + Time$ + " of " + date$
Print #a, "// " + Main.Caption

If Check1.Value = 1 Then
    Print #a, ""
    Print #a, "// ServerInfo variables"
    k$ = Main.servRconAns$("serverinfo")
    p = InStr(k$, Chr$(10))
    If p Then k$ = Mid$(k$, p + 1)
    Do
    p = InStr(k$, Chr$(10))
    If p = 0 Then Exit Do
    c$ = Left$(k$, p - 1)
    k$ = Mid$(k$, p + 1)
    If Left$(c$, 1) = "*" Then
        Last$ = Last$ + "// [" + c$ + "]" + Chr$(13)
        Else
        Print #a, "serverinfo " + c$
        End If
    Loop
    End If

If Check2.Value = 1 Then
    Print #a, ""
    Print #a, "// LocalInfo variables"
    k$ = ""
    k$ = Main.servRconAns$("localinfo")
    p = InStr(k$, Chr$(10))
    If p Then k$ = Mid$(k$, p + 1)
    Do
    p = InStr(k$, Chr$(10))
    If p = 0 Then Exit Do
    c$ = Left$(k$, p - 1)
    k$ = Mid$(k$, p + 1)
    Print #a, "localinfo " + c$
    Loop
    End If

If Check3.Value = 1 Then
    Print #a, ""
    Print #a, "// Internal server variables"
    t = 0
    Do
    t = t + 1
    Select Case t
        Case 1
            KK$ = "sv_aim"
        Case 2
            KK$ = "sv_mintic"
        Case 3
            KK$ = "sv_maxtic"
        Case 4
            KK$ = "sv_highchars"
        Case 5
            KK$ = "sv_phs"
        Case 6
            KK$ = "sv_maxvelocity"
        Case 7
            KK$ = "sv_gravity"
        Case 8
            KK$ = "sv_stopspeed"
        Case 9
            KK$ = "sv_maxspeed"
        Case 10
            KK$ = "sv_spectatormaxspeed"
        Case 11
            KK$ = "sv_accelerate"
        Case 12
            KK$ = "sv_airaccelerate"
        Case 13
            KK$ = "sv_wateraccelerate"
        Case 14
            KK$ = "sv_friction"
        Case 15
            KK$ = "sv_waterfriction"
        Case 16
            KK$ = "sv_spectalk"
        Case 17
            KK$ = "sv_mapcheck"
        Case 18
            KK$ = "watervis"
        Case 19
            KK$ = "spawn"
        Case 20
            KK$ = "hostname"
        Case 21
            KK$ = "fraglimit"
        Case 22
            KK$ = "timelimit"
        Case 23
            KK$ = "password"
        Case 24
            KK$ = "spectator_password"
        Case Else
            KK$ = ""
        End Select
    If KK$ = "" Then Exit Do
    pt$ = Main.ServerVar(KK$)
    Print #a, KK$ + " " + Chr$(34) + pt$ + Chr$(34)
    Loop
    tt$ = Main.RealGameDir$
    If tt$ > "" Then
        Print #a, "gamedir " + tt$
        End If
    
    End If
If Check4.Value = 1 Then
    Print #a, ""
    Print #a, "// Map and client gamedir"
    Main.UpdateInfo
    tt$ = ServInfo$
    c$ = Main.findinserver$("*gamedir")
    If c$ > "" Then Print #a, "sv_gamedir " + c$
    
    c$ = Main.findinserver$("map")
    If c$ > "" Then Print #a, "map " + c$
    End If

If Check5.Value = 1 Then
    Print #a, ""
    Print #a, "// RCON PASSWORD"
    Print #a, "rcon_password " & Chr$(34) & Main.rcon.text & Chr$(34)
    Print #a, ""
    End If

Print #a, ""
Print #a, "// End of config"
Close #a
Command1.Enabled = True
Command2.Enabled = True
Me.Visible = False

dummy = MsgBox("Config exported")

Unload Me
Exit Sub
errhand:
Select Case ShowErr
    Case 1
        End
    Case 2
        Resume
    Case Else
        Resume Next
    End Select
    

End Sub

Private Sub Command2_Click()
Me.Visible = False
Unload Me
End Sub

Private Sub Command3_Click()
Dim fb As New SelectFile
   

Filterfile = "Config files(*.cfg)|*.cfg|Script files (*.scr)|*.scr|All files|*.*"

dd$ = GetSetting(AppName, "Settings", "Configdirectory", CurDir)

fb.file.InitDir = dd$
With fb.file
    .DialogTitle = "Export config file..."
    ' .Flags = vbOFNReadOnly Or vbOFNFileMustExist
    .FilterIndex = 1
    .CancelError = True
    .filename = "config.cfg"
    .Filter = Filterfile
    .FilterIndex = 1
    
    On Error Resume Next
    .ShowSave
    End With

If Err <> 0 Then
    ' No file selected from the Open File dialog box.
    Exit Sub
    End If
    
F$ = fb.file.filename
tt$ = Dir$(F$)
If tt$ > "" Then
    dd$ = fb.file.filename
    For oi = Len(dd$) To 1 Step -1
    Select Case Mid$(dd$, oi, 1)
        Case "\", ":"
            pt = oi
            Exit For
        End Select
    Next
    End If
filename.text = F$
End Sub

Private Sub Form_Load()
GFS "Export config filename", filename

End Sub
