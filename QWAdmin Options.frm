VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.1#0"; "COMCT232.OCX"
Begin VB.Form QWAOptions 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "QWAdmin options..."
   ClientHeight    =   4860
   ClientLeft      =   3885
   ClientTop       =   3495
   ClientWidth     =   6795
   Icon            =   "QWAdmin Options.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   4860
   ScaleWidth      =   6795
   Begin VB.CheckBox qwaidle 
      Caption         =   "Make QWAdmin go idle when minimized"
      Height          =   195
      Left            =   120
      TabIndex        =   27
      Top             =   4440
      Width           =   3135
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   5040
      TabIndex        =   20
      Top             =   4440
      Width           =   1695
   End
   Begin VB.CommandButton Command2 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   3360
      TabIndex        =   19
      Top             =   4440
      Width           =   1575
   End
   Begin VB.Frame Frame2 
      Caption         =   "Fonts"
      Height          =   2535
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   6735
      Begin VB.CheckBox underlined 
         Caption         =   "Underlined"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   -1  'True
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   10
         Top             =   1080
         Width           =   1335
      End
      Begin VB.CheckBox italic 
         Caption         =   "Italic"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   -1  'True
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   9
         Top             =   840
         Width           =   1335
      End
      Begin VB.CheckBox bold 
         Caption         =   "Bold"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   2400
         TabIndex        =   8
         Top             =   600
         Width           =   1215
      End
      Begin VB.ComboBox Combo2 
         Height          =   315
         ItemData        =   "QWAdmin Options.frx":08CA
         Left            =   5520
         List            =   "QWAdmin Options.frx":08F8
         TabIndex        =   7
         Text            =   "10"
         Top             =   240
         Width           =   1095
      End
      Begin VB.ComboBox Combo1 
         Height          =   315
         Left            =   2400
         TabIndex        =   6
         Text            =   "MS Sans Serif"
         Top             =   240
         Width           =   3135
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Save this font"
         Height          =   375
         Left            =   5160
         TabIndex        =   5
         Top             =   600
         Width           =   1455
      End
      Begin VB.ListBox List1 
         Height          =   2205
         Left            =   120
         TabIndex        =   2
         Top             =   240
         Width           =   2175
      End
      Begin VB.Label preview 
         Caption         =   "AaBbCcDdEeFfGgHhIiJjKkLlMmNnOoPpQqRrSsTtUuVvWwXxYyZz"
         Height          =   735
         Left            =   2400
         TabIndex        =   4
         Top             =   1680
         Width           =   4215
      End
      Begin VB.Label Label1 
         Caption         =   "Preview:"
         Height          =   255
         Left            =   2400
         TabIndex        =   3
         Top             =   1440
         Width           =   1095
      End
   End
   Begin VB.Frame Frame1 
      Caption         =   "Server protection"
      Height          =   1815
      Left            =   0
      TabIndex        =   0
      Top             =   2520
      Width           =   3375
      Begin VB.CheckBox kickskin 
         Caption         =   "Autokick players if failed Player model"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   18
         Top             =   1440
         Width           =   3015
      End
      Begin VB.CheckBox kickeyes 
         Caption         =   "Autokick players if failed Eyes model"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   17
         Top             =   1200
         Width           =   2895
      End
      Begin VB.CheckBox Check3 
         Caption         =   "Ban player off server"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   16
         Top             =   960
         Width           =   2655
      End
      Begin VB.CheckBox Check2 
         Caption         =   "Kick player off server"
         Enabled         =   0   'False
         Height          =   255
         Left            =   120
         TabIndex        =   15
         Top             =   720
         Width           =   2535
      End
      Begin VB.CheckBox Check1 
         Caption         =   "Notify on server"
         Height          =   255
         Left            =   120
         TabIndex        =   14
         Top             =   480
         Value           =   1  'Checked
         Width           =   1935
      End
      Begin ComCtl2.UpDown UpDown1 
         Height          =   285
         Left            =   2776
         TabIndex        =   13
         Top             =   240
         Width           =   240
         _ExtentX        =   423
         _ExtentY        =   503
         _Version        =   327681
         Value           =   3500
         AutoBuddy       =   -1  'True
         BuddyControl    =   "rate"
         BuddyDispid     =   196627
         OrigLeft        =   3000
         OrigTop         =   240
         OrigRight       =   3240
         OrigBottom      =   495
         Max             =   15000
         Min             =   3500
         Enabled         =   -1  'True
      End
      Begin VB.TextBox rate 
         Height          =   285
         Left            =   2160
         TabIndex        =   12
         Text            =   "10000"
         Top             =   240
         Width           =   615
      End
      Begin VB.Label Label2 
         Caption         =   "If a player has a rate above:"
         Height          =   255
         Left            =   120
         TabIndex        =   11
         Top             =   240
         Width           =   2175
      End
   End
   Begin VB.Frame Frame3 
      Caption         =   "Logging options"
      Height          =   1815
      Left            =   3480
      TabIndex        =   21
      Top             =   2520
      Width           =   3255
      Begin VB.CheckBox log1 
         Caption         =   "Log player messages (req. qwsv+)"
         Height          =   255
         Index           =   2
         Left            =   120
         TabIndex        =   26
         Top             =   1440
         Width           =   2895
      End
      Begin VB.CheckBox log1 
         Caption         =   "Log connects and disconnects"
         Height          =   255
         Index           =   1
         Left            =   120
         TabIndex        =   25
         Top             =   1200
         Width           =   2895
      End
      Begin VB.CheckBox log1 
         Caption         =   "Log commands from server"
         Height          =   255
         Index           =   0
         Left            =   120
         TabIndex        =   24
         Top             =   960
         Width           =   2895
      End
      Begin VB.TextBox log 
         Height          =   285
         Left            =   360
         TabIndex        =   23
         Text            =   "servers.log"
         Top             =   600
         Width           =   2655
      End
      Begin VB.CheckBox logfile 
         Caption         =   "Log to file"
         Height          =   255
         Left            =   120
         TabIndex        =   22
         Top             =   360
         Width           =   3015
      End
   End
End
Attribute VB_Name = "QWAOptions"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub bold_Click()
If bold Then
    preview.FontBold = True
    Else
    preview.FontBold = False
    End If
    
End Sub

Private Sub Check2_Click()
If Check2.Value = 1 Then Check1.Value = 1
        
End Sub

Private Sub Check3_Click()
If Check3.Value = 1 Then
    dummy = MsgBox("Ban players that have a rate above " & rate & " ?" + Chr$(13) + "You should only kick player off server in these cases, only ban as a last resort... Are you sure ?", vbYesNo)
    If dummy = vbYes Then
        Check3.Value = 1
        Check2.Value = 1
        Check1.Value = 1
        Else
        Check3.Value = 0
        End If
    End If
    
End Sub

Public Sub Combo1_Change()
On Error Resume Next
preview.FontName = Combo1.text

End Sub

Private Sub Combo1_Click()
Combo1_Change

End Sub

Public Sub Combo2_Change()
If Val(Combo2) > 5 And Val(Combo2) < 128 Then
    preview.FontSize = Val(Combo2.text)
    Else
    Combo2.text = 10
    End If
End Sub

Private Sub Combo2_Click()
Combo2_Change

End Sub

Private Sub Command1_Click()
SaveFontVar List1.text, preview.FontName, preview.FontSize, preview.FontBold, preview.FontItalic, preview.FontUnderline
MsgBox "Saved"
End Sub

Private Sub Command2_Click()
If rate.text > 3500 Then
    SaveSetting "QWAdmin", "Settings", "LaggerRate", rate.text
    End If
SaveSetting "QWAdmin", "Settings", "Rate kick", rate
SaveSetting "QWAdmin", "Settings", "Warn lagged", Check1.Value
SaveSetting "QWAdmin", "Settings", "Kick lagged", Check2.Value
SaveSetting "QWAdmin", "Settings", "Ban lagged", Check3.Value
SaveSetting "QWAdmin", "Settings", "Autokick eyes", kickeyes.Value
SaveSetting "QWAdmin", "Settings", "Autokick skins", kickskin.Value
SaveSetting "QWAdmin", "Settings", "Log to file", logfile.Value
SaveSetting "QWAdmin", "Settings", "File log", log
SaveSetting "QWAdmin", "Settings", "Log commands", log1(0)
SaveSetting "QWAdmin", "Settings", "Log disconnects", log1(1)
SaveSetting "QWAdmin", "Settings", "Log messages", log1(2)
SaveSetting "QWAdmin", "Settings", "qwaidle", qwaidle.Value


Unload Me
End Sub

Private Sub Command3_Click()
Unload Me

End Sub

Private Sub Form_Load()

k = GetAllSettings("QWAdmin", "Fonts")
List1.Clear
If IsEmpty(k) Then
    Else
    For o = LBound(k) To UBound(k)
    List1.AddItem k(o, 0)
    Next
    End If

Combo1.Clear
For o = 0 To Screen.FontCount - 1
t$ = Screen.Fonts(o)
Combo1.AddItem t$
Next
rate.text = GetSetting("QWAdmin", "Settings", "LaggerRate", "10000")
    
Check1.Value = Val(GetSetting("QWAdmin", "Settings", "Warn lagged", 1))
Check2.Value = Val(GetSetting("QWAdmin", "Settings", "Kick lagged", 0))
Check3.Value = Val(GetSetting("QWAdmin", "Settings", "Ban lagged", 0))
kickeyes.Value = Val(GetSetting("QWAdmin", "Settings", "Autokick eyes", 0))
kickskin.Value = Val(GetSetting("QWAdmin", "Settings", "Autokick skins", 0))
logfile.Value = Val(GetSetting("QWAdmin", "Settings", "Log to file", 1))
rate = Val(GetSetting("QWAdmin", "Settings", "Rate kick", "10000"))
log.text = GetSetting("QWAdmin", "Settings", "File log", "servers.log")

log1(0) = Val(GetSetting("QWAdmin", "Settings", "Log commands", "0"))
log1(1) = Val(GetSetting("QWAdmin", "Settings", "Log disconnects", "1"))
log1(2) = Val(GetSetting("QWAdmin", "Settings", "Log messages", "1"))
qwaidle.Value = Val(GetSetting("QWAdmin", "Settings", "qwaidle", 1))

If PRO Then
    Check2.Enabled = True
    Check3.Enabled = True
    kickeyes.Enabled = True
    kickskin.Enabled = True
    End If
List1.Selected(0) = True

End Sub

Private Sub italic_Click()
If italic Then
    preview.FontItalic = True
    Else
    preview.FontItalic = False
    End If
End Sub

Private Sub List1_Click()
F$ = List1.text
Dim Si As Integer
Dim bo As Boolean, it As Boolean, un As Boolean

GetFontVar F$, fo$, Si, bo, it, un

Combo1.text = fo$
Combo2 = Si
If bo Then bold = 1 Else bold = 0
If it Then italic = 1 Else italic = 0
If un Then underlined = 1 Else italic = 0
GFS List1.text, preview
End Sub

Private Sub logfile_Click()
Select Case logfile.Value
    Case 0
        log.Enabled = False
    Case 1
        log.Enabled = True
    End Select
For o = log1.LBound To log1.UBound
log1(o).Enabled = log.Enabled
Next

End Sub

Private Sub underlined_Click()
If underlined Then
    preview.FontUnderline = True
    Else
    preview.FontUnderline = False
    End If
End Sub
