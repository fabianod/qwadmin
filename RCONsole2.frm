VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form qwconsole 
   Caption         =   "RCONsole"
   ClientHeight    =   4470
   ClientLeft      =   1815
   ClientTop       =   2490
   ClientWidth     =   5865
   Icon            =   "RCONsole2.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4470
   ScaleWidth      =   5865
   Begin VB.TextBox serverrcon 
      Height          =   285
      Left            =   480
      TabIndex        =   3
      Text            =   "rcon"
      Top             =   3840
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.TextBox serverport 
      Height          =   285
      Left            =   480
      TabIndex        =   2
      Text            =   "27500"
      Top             =   3480
      Visible         =   0   'False
      Width           =   2175
   End
   Begin VB.TextBox serverip 
      Height          =   285
      Left            =   480
      TabIndex        =   1
      Text            =   "127.0.0.1"
      Top             =   3120
      Visible         =   0   'False
      Width           =   2175
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   4200
      Top             =   2880
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin RichTextLib.RichTextBox terminal 
      Height          =   2295
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   3375
      _ExtentX        =   5953
      _ExtentY        =   4048
      _Version        =   393217
      BackColor       =   0
      BorderStyle     =   0
      ScrollBars      =   2
      TextRTF         =   $"RCONsole2.frx":0442
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Terminal"
         Size            =   9
         Charset         =   255
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
End
Attribute VB_Name = "qwconsole"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public connected As Boolean, c$

Public Sub Form_Load()
Resize
GFS "RCONsole text window", terminal

With terminal
    .SelColor = RGB(255, 0, 0)
    .SelFontName = "Impact"
    .SelFontSize = 18
    .SelItalic = True
    .SelText = "QWAdmin" + Chr$(10)
    .SelItalic = False
    .SelFontName = "Verdana"
    .SelFontSize = 7
    .SelBold = False
    .SelColor = RGB(196, 196, 196)
    .SelText = "Q2 & QW RCONsole v2.1 - (c)1998 Dr.Drain" + Chr$(10)
    .SelFontSize = 8
    .SelStart = Len(terminal)
End With

'ConnectToServer
End Sub
Public Sub ConnectToServer()
If DeveloperMode = False Then On Error Resume Next
Winsock1.Protocol = sckUDPProtocol
Winsock1.RemoteHost = serverip.text
Winsock1.RemotePort = serverport.text
Winsock1.Bind

terminal.SelColor = RGB(196, 196, 196)
Do
DoEvents
Loop Until Winsock1.state >= 1
If Winsock1.state = 1 Then
    terminal.SelColor = RGB(255, 0, 0)
    Me.Caption = "RCONsole [" + serverip + ":" + serverport + "]"
    terminal.SelText = "Online with [" + serverip + ":" + serverport + "]" + Chr$(10)
    terminal.SelStart = Len(terminal)
    connected = True
    End If

SHowRCON
End Sub
Public Sub Resize()
X = Me.Width - 100
Y = Me.Height - 400
If X > 0 And Y > 0 Then terminal.Move 0, 0, X, Y
End Sub

Private Sub Form_Resize()
Resize
End Sub

Public Sub terminal_KeyPress(KeyAscii As Integer)
On Error Resume Next
Select Case KeyAscii
    Case 32 To 255
        c$ = c$ + Chr$(KeyAscii)
    Case 8
        If c$ > "" Then c$ = Left$(c$, Len(c$) - 1) Else terminal.SelText = ">"
        terminal.SelStart = Len(terminal.text)
    Case 13
        If Winsock1.state = 0 Then ConnectToServer
        comm$ = String$(4, 255) + "rcon " + serverrcon.text + " " + c$ + Chr$(0)
        Winsock1.SendData comm$
        c$ = ""
    End Select
End Sub


Private Sub terminal_SelChange()
terminal.SelStart = Len(terminal.text)

End Sub

Private Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Winsock1.GetData a$, bytesTotal
If Left$(a$, 5) = String$(4, Chr$(255)) + "n" Then a$ = Mid$(a$, 6)
If Left$(a$, 9) = String$(4, Chr$(255)) + "print" Then a$ = Mid$(a$, 11)
inbuf$ = inbuf$ + a$
With terminal
    '
    ' .SelFontName = "Terminal"
    ' .SelFontSize = 10
    ' .SelBold = False
    GFS "RCONsole text window", terminal
    .SelColor = RGB(196, 196, 196)
    .SelText = inbuf$
End With
SHowRCON

End Sub

Public Sub SHowRCON()

With terminal
    .SelBold = False
    .SelColor = RGB(0, 100, 255)
    .SelStart = Len(terminal.text)
    '.SelFontName = "Terminal"
    '.SelFontSize = 10
    GFS "RCONsole input", terminal
    .SelText = "RCON>"
    .SelStart = Len(terminal.text)
    .SelColor = RGB(255, 255, 255)
End With
    
End Sub
