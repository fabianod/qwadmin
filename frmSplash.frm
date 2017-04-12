VERSION 5.00
Begin VB.Form frmSplash 
   BackColor       =   &H00C0C0C0&
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   3870
   ClientLeft      =   4320
   ClientTop       =   4320
   ClientWidth     =   5640
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "frmSplash.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   3870
   ScaleWidth      =   5640
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Begin VB.Timer Timer1 
      Interval        =   4000
      Left            =   5280
      Top             =   240
   End
   Begin VB.Label Label2 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "Click here to check out GameAdmin!"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   375
      Left            =   -720
      TabIndex        =   6
      Top             =   3600
      Width           =   6975
   End
   Begin VB.Label Label1 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "* FREEWARE *"
      Height          =   375
      Left            =   1440
      TabIndex        =   5
      Top             =   2040
      Width           =   2655
   End
   Begin VB.Label regto 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   255
      Left            =   720
      TabIndex        =   3
      Top             =   2880
      Width           =   4095
   End
   Begin VB.Label lblVersion 
      Alignment       =   1  'Right Justify
      AutoSize        =   -1  'True
      BackStyle       =   0  'Transparent
      Caption         =   "Version"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   210
      Left            =   4320
      TabIndex        =   2
      Top             =   120
      Width           =   705
   End
   Begin VB.Label Label3 
      BackStyle       =   0  'Transparent
      Caption         =   "Remote QuakeWorld Administrator Tool"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00404040&
      Height          =   255
      Left            =   1320
      TabIndex        =   1
      Tag             =   "0"
      Top             =   1800
      Width           =   3615
   End
   Begin VB.Label Label4 
      Alignment       =   2  'Center
      BackStyle       =   0  'Transparent
      Caption         =   "LITE VERSION"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   12
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   840
      TabIndex        =   0
      Top             =   2400
      Width           =   4095
   End
   Begin VB.Label trial 
      Alignment       =   1  'Right Justify
      BackStyle       =   0  'Transparent
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H008080FF&
      Height          =   735
      Left            =   4560
      TabIndex        =   4
      Top             =   120
      Width           =   1215
   End
   Begin VB.Image Image1 
      Height          =   2190
      Left            =   720
      Picture         =   "frmSplash.frx":000C
      Top             =   120
      Width           =   4275
   End
End
Attribute VB_Name = "frmSplash"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Unloadable

Private Sub Form_Load()
On Error Resume Next

Unloadable = False

Timer1.Enabled = False

Dim d
lblVersion.Caption = "Version " & App.Major & "." & App.Minor & " revision " & App.Revision
Timer1.Enabled = True
        
End Sub

Private Sub Label2_Click()
Shell "start /max http://planethalflife.com/gameadmin/", vbHide

End Sub

Private Sub Timer1_Timer()
On Error Resume Next
frmSplash.Visible = False
Main.Visible = True
QWAInitialized = True
Timer1.interval = 0
Timer1.Enabled = False
'Main.SetFocus
'frmSplash.Enabled = False
Unload Me
End Sub

Private Sub Timer2_Timer()
Dim tk As Integer
tk = Val(frmSplash.Label3.Tag)
If tk < 255 Then
    tk = tk + 10
    Label3.ForeColor = RGB(tk, tk, tk)
    Label3.Tag = tk
    ' Label3.refresh
    Else
    Timer2.Enabled = False
    Unloadable = True
    End If
End Sub
