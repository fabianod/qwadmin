VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.2#0"; "COMCTL32.OCX"
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{50E5E3C0-C07E-11D0-B9FD-00A0249F6B00}#1.0#0"; "REGWIZC.DLL"
Begin VB.Form Form1 
   Caption         =   "Form1"
   ClientHeight    =   5715
   ClientLeft      =   1620
   ClientTop       =   1545
   ClientWidth     =   6585
   LinkTopic       =   "Form1"
   ScaleHeight     =   5715
   ScaleWidth      =   6585
   Begin REGWIZCTRLLibCtl.RegWizCtrl RegWizCtrl1 
      Height          =   1695
      Left            =   120
      OleObjectBlob   =   "rconsole.frx":0000
      TabIndex        =   5
      Top             =   3480
      Width           =   3735
   End
   Begin VB.TextBox rcon 
      Height          =   285
      Left            =   5520
      TabIndex        =   4
      Text            =   "rcon"
      Top             =   480
      Width           =   975
   End
   Begin VB.TextBox port 
      Height          =   285
      Left            =   4440
      TabIndex        =   3
      Text            =   "27500"
      Top             =   480
      Width           =   975
   End
   Begin VB.TextBox ip 
      Height          =   285
      Left            =   4440
      TabIndex        =   2
      Text            =   "127.0.0.1"
      Top             =   120
      Width           =   2055
   End
   Begin MSWinsockLib.Winsock server 
      Left            =   5880
      Top             =   120
      _ExtentX        =   741
      _ExtentY        =   741
      Protocol        =   1
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   375
      Left            =   0
      TabIndex        =   1
      Top             =   5340
      Width           =   6585
      _ExtentX        =   11615
      _ExtentY        =   661
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   1
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            TextSave        =   ""
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin VB.TextBox console 
      BackColor       =   &H00000000&
      BorderStyle     =   0  'None
      BeginProperty Font 
         Name            =   "System"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00C0C0C0&
      Height          =   4935
      Left            =   0
      MultiLine       =   -1  'True
      TabIndex        =   0
      Top             =   0
      Width           =   6615
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public comma$

Private Sub console_KeyPress(KeyAscii As Integer)
Select Case KeyAscii
    Case 13
        server.SendData String$(4, Chr$(255)) + "rcon " + rcon.Text + " " + comma$ + Chr$(32) + Chr$(0)
        console.Text = console.Text + Chr$(13)
        comma$ = ""
    Case Is > 32
        comma$ = comma$ + Chr$(KeyAscii)
    Case Else
        keyascci = 0
        'console.Text = Left$(console.Text, Len(console.Text) - 1)
    End Select

End Sub

Private Sub Form_Load()
server.Connect ip.Text, Val(port.Text)
End Sub

Private Sub Form_Resize()
console.Width = Me.Width - 100
console.Height = Me.Height - 750
End Sub

Private Sub server_DataArrival(ByVal bytesTotal As Long)
server.GetData a$
j$ = Mid$(a$, 6)
Do
k = InStr(j$, Chr$(10))
If k Then
    console.Text = console.Text + Left$(j$, k - 1) + Chr$(13)
    j$ = Mid$(j$, k + 1)
    Else
    console.Text = console.Text + j$ + Chr$(13)
    Exit Do
    End If
Loop
End Sub
