VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Begin VB.Form SCLogin 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Server Central Login"
   ClientHeight    =   1515
   ClientLeft      =   2880
   ClientTop       =   1950
   ClientWidth     =   5340
   Icon            =   "SCLogin.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1515
   ScaleWidth      =   5340
   StartUpPosition =   2  'CenterScreen
   Begin VB.Frame Frame1 
      Height          =   1455
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   5295
      Begin MSWinsockLib.Winsock Winsock 
         Left            =   3120
         Top             =   840
         _ExtentX        =   741
         _ExtentY        =   741
         _Version        =   327681
      End
      Begin VB.CommandButton Command2 
         Caption         =   "Close"
         Height          =   375
         Left            =   3720
         TabIndex        =   8
         Top             =   840
         Width           =   1455
      End
      Begin VB.CommandButton Command1 
         Caption         =   "Connect..."
         Default         =   -1  'True
         Height          =   375
         Left            =   3720
         TabIndex        =   7
         Top             =   360
         Width           =   1455
      End
      Begin VB.TextBox pass 
         Height          =   285
         IMEMode         =   3  'DISABLE
         Left            =   1560
         PasswordChar    =   "*"
         TabIndex        =   6
         Top             =   960
         Width           =   1335
      End
      Begin VB.TextBox login 
         Height          =   285
         Left            =   1560
         TabIndex        =   4
         Top             =   600
         Width           =   1335
      End
      Begin VB.TextBox central 
         Height          =   285
         Left            =   1560
         TabIndex        =   2
         Top             =   240
         Width           =   1935
      End
      Begin VB.Label Label3 
         Alignment       =   1  'Right Justify
         Caption         =   "Password:"
         Height          =   255
         Left            =   600
         TabIndex        =   5
         Top             =   960
         Width           =   855
      End
      Begin VB.Label Label2 
         Alignment       =   1  'Right Justify
         Caption         =   "Login:"
         Height          =   255
         Left            =   720
         TabIndex        =   3
         Top             =   600
         Width           =   615
      End
      Begin VB.Label Label1 
         Caption         =   "Server Central IP:"
         Height          =   255
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   1455
      End
   End
End
Attribute VB_Name = "SCLogin"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public DAT$
Private Sub Command1_Click()
Command1.Enabled = False
Command2.Enabled = False
central.Enabled = False
login.Enabled = False
pass.Enabled = False
Dim k As New progress
k.Label = "Connecting..."
k.perc.Visible = False
k.Visible = True


Do
Winsock.Close
DoEvents
Loop Until Winsock.state = 0
Winsock.Connect central, 22750
t = Timer
Do
DoEvents
Loop Until Timer - t > 20 Or Winsock.state >= 7
Command1.Enabled = True
Command2.Enabled = True
central.Enabled = True
login.Enabled = True
pass.Enabled = True
Unload k
    
If Timer - t > 20 Then MsgBox ("Connection timed out..."): Winsock.Close: Exit Sub
Select Case Winsock.state
    Case 7
        k.Label = "Connected, logging in..."
        logitin login, pass
        Exit Sub
    Case 8
        Unload k
        dummy = MsgBox("Connection closed")
    Case 9
        Unload k
        dummy = MsgBox("Communications error")
    End Select
Winsock.Close
End Sub

Public Sub logitin(login$, pass$)

Do
DoEvents
Loop Until InStr(DAT$, "ogin:")
k = InStr(DAT$, Chr$(13))
t = InStr(DAT$, ":")
KK$ = Mid$(Left$(DAT$, k - 1), t + 1)
If k > 0 Then ver = Val(KK$)
If ver = 1 Then
    Main.BetaWarning
    Unload Me
    Else
    dummy = MsgBox("Incompatible version!" & Chr$(13) & "Server protocol=" & ver & Chr$(13) & "Please update QWAdmin." + Chr$(13) + "http://planetquake.com/qwadmin/")
    Unload Me
    Exit Sub
    End If

End Sub

Private Sub Command2_Click()
Unload Me

End Sub

Private Sub Winsock_DataArrival(ByVal bytesTotal As Long)
Winsock.GetData a$
DAT$ = DAT$ + a$
End Sub

