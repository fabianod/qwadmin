VERSION 5.00
Begin VB.Form RegisterForm 
   BackColor       =   &H00000000&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3375
   ClientLeft      =   1410
   ClientTop       =   1845
   ClientWidth     =   7080
   ControlBox      =   0   'False
   ForeColor       =   &H00C0C0C0&
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   3375
   ScaleWidth      =   7080
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.CommandButton closewindow 
      Caption         =   "Close"
      Default         =   -1  'True
      Height          =   375
      Left            =   3840
      TabIndex        =   5
      Top             =   2880
      Width           =   1575
   End
   Begin VB.CommandButton Validate 
      Caption         =   "OK"
      Enabled         =   0   'False
      Height          =   375
      Left            =   1920
      TabIndex        =   4
      Top             =   2880
      Width           =   1575
   End
   Begin VB.TextBox regcode 
      Height          =   285
      Left            =   720
      TabIndex        =   2
      Top             =   2040
      Width           =   1095
   End
   Begin VB.TextBox REGKEY 
      Height          =   285
      Left            =   720
      MaxLength       =   60
      TabIndex        =   3
      Top             =   2400
      Width           =   6135
   End
   Begin VB.TextBox regname 
      Height          =   285
      Left            =   720
      TabIndex        =   1
      Top             =   1680
      Width           =   3855
   End
   Begin VB.Label reginfo 
      BackStyle       =   0  'Transparent
      Caption         =   "*UNREGISTRED*"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Left            =   600
      TabIndex        =   10
      Top             =   960
      Width           =   6135
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Key:"
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   2
      Left            =   -480
      TabIndex        =   9
      Top             =   2400
      Width           =   1095
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Code:"
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   1
      Left            =   -120
      TabIndex        =   8
      Top             =   2040
      Width           =   735
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      Caption         =   "Name:"
      ForeColor       =   &H00E0E0E0&
      Height          =   255
      Index           =   0
      Left            =   -120
      TabIndex        =   7
      Top             =   1680
      Width           =   735
   End
   Begin VB.Label Label2 
      BackStyle       =   0  'Transparent
      Caption         =   "Registration information:"
      ForeColor       =   &H00FFFFFF&
      Height          =   255
      Left            =   240
      TabIndex        =   6
      Top             =   1320
      Width           =   3975
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "QWAdmin"
      BeginProperty Font 
         Name            =   "Impact"
         Size            =   48
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   -1  'True
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H000000FF&
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   4215
   End
End
Attribute VB_Name = "RegisterForm"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub closewindow_Click()
Unload Me
End Sub

Public Sub Form_Load()
RegisterKEY$ = GetSetting("QWAdmin", "REGISTRATION", "key")
RegistredTO$ = GetSetting("QWAdmin", "REGISTRATION", "owner")
RegisterCODE$ = GetSetting("QWAdmin", "REGISTRATION", "code")
regcode = Val(RegisterCODE$)
'If RegisterKEY$ > "" And RegistredTO$ > "" And RegisterCODE$ > "" Then
'    registred = Main.ValidateKey(RegisterKEY$, RegistredTO$, regcode)
'    End If
registred = PRO

If registred Then
    reginfo.Caption = "Registred to: " + RegistredTO$
    regname.text = RegistredTO$
    regcode.text = RegisterCODE$
    REGKEY.text = RegisterKEY$
    Else
    reginfo.Caption = "*UNREGISTRED*"
    End If

If Val(regcode.text) > 0 And Len(REGKEY.text) = 60 And Len(regname.text) > 4 Then
    Validate.Enabled = True
    Else
    Validate.Enabled = False
    End If

End Sub

Private Sub reginfo_Click()
If Val(regcode.text) > 0 And Len(REGKEY.text) = 60 And Len(regname.text) > 4 Then
    Validate.Enabled = True
    Else
    Validate.Enabled = False
    End If
End Sub

Private Sub REGKEY_Change()
If Val(regcode.text) > 0 And Len(REGKEY.text) = 60 And Len(regname.text) > 4 Then
    Validate.Enabled = True
    Else
    Validate.Enabled = False
    End If
End Sub

Private Sub regname_Change()
If Val(regcode.text) > 0 And Len(REGKEY.text) = 60 And Len(regname.text) > 4 Then
    Validate.Enabled = True
    Else
    Validate.Enabled = False
    End If

End Sub

Private Sub Validate_Click()
If Len(REGKEY.text) = 60 And Val(regcode.text) > 0 And Len(regname.text) > 6 Then
    k = Main.ValidateKey(REGKEY.text, regname.text, regcode.text)
    SaveSetting AppName, "REGISTRATION", "key", REGKEY.text
    SaveSetting AppName, "REGISTRATION", "owner", regname.text
    SaveSetting AppName, "REGISTRATION", "code", regcode.text
    dummy = MsgBox("Registration successefull." + Chr$(13) + "You must restart QWAdmin now...")
    Unload Me
    End
    End If
End Sub
