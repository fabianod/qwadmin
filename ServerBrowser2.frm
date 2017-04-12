VERSION 5.00
Begin VB.Form ServerBrowser2 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "Server"
   ClientHeight    =   2265
   ClientLeft      =   2940
   ClientTop       =   3585
   ClientWidth     =   4605
   Icon            =   "ServerBrowser2.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   2265
   ScaleWidth      =   4605
   StartUpPosition =   2  'CenterScreen
   Begin VB.TextBox qwapassword 
      Height          =   285
      Left            =   1560
      TabIndex        =   10
      Top             =   840
      Width           =   1215
   End
   Begin VB.TextBox rcon 
      Height          =   285
      IMEMode         =   3  'DISABLE
      Left            =   1560
      PasswordChar    =   "*"
      TabIndex        =   4
      Top             =   480
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   3000
      TabIndex        =   9
      Top             =   1800
      Width           =   1455
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   1320
      TabIndex        =   8
      Top             =   1800
      Width           =   1455
   End
   Begin VB.OptionButton Option1 
      Caption         =   "Memorize the rcon"
      Height          =   255
      Index           =   1
      Left            =   120
      TabIndex        =   6
      Top             =   1200
      Value           =   -1  'True
      Width           =   2535
   End
   Begin VB.OptionButton Option1 
      Caption         =   "I want qwadmin to ask me the rcon everytime I connect"
      Height          =   255
      Index           =   0
      Left            =   120
      TabIndex        =   5
      Top             =   1440
      Width           =   4335
   End
   Begin VB.TextBox port 
      Height          =   285
      Left            =   3360
      TabIndex        =   3
      Top             =   120
      Width           =   1215
   End
   Begin VB.TextBox ip 
      Height          =   285
      Left            =   960
      TabIndex        =   1
      Top             =   120
      Width           =   1815
   End
   Begin VB.Label Label5 
      Alignment       =   1  'Right Justify
      Caption         =   "QWSV+ password:"
      Height          =   255
      Left            =   0
      TabIndex        =   11
      Top             =   840
      Width           =   1455
   End
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      Caption         =   "Rcon pass:"
      Height          =   255
      Left            =   600
      TabIndex        =   7
      Top             =   480
      Width           =   855
   End
   Begin VB.Label Label3 
      Alignment       =   1  'Right Justify
      Caption         =   "Port:"
      Height          =   255
      Left            =   2640
      TabIndex        =   2
      Top             =   120
      Width           =   615
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Server ip:"
      Height          =   255
      Left            =   120
      TabIndex        =   0
      Top             =   120
      Width           =   735
   End
End
Attribute VB_Name = "ServerBrowser2"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Number
Public Sub Command1_Click()
Select Case Command1.Caption
    Case "Add..."
        serverbrowser.addnewserver ip.text, port.text, rcon.text, qwapassword.text
    Case "Change..."
        serverbrowser.changeserver Number, ip.text, port.text, rcon.text, qwapassword.text
    End Select
Unload Me
End Sub

Private Sub Command2_Click()
Unload Me
End Sub


Private Sub Option1_Click(Index As Integer)
Select Case Index
    Case 0
        rcon.text = ""
        rcon.Enabled = False
        Label4.Enabled = False
    Case 1
        rcon.Enabled = True
        Label4.Enabled = True
    End Select
        
End Sub

