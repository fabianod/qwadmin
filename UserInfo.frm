VERSION 5.00
Begin VB.Form UserInfoWindow 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "UserInformation"
   ClientHeight    =   4500
   ClientLeft      =   1590
   ClientTop       =   1650
   ClientWidth     =   9765
   Icon            =   "UserInfo.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   4500
   ScaleWidth      =   9765
   Begin VB.Frame Frame2 
      Caption         =   "Player information"
      Height          =   4455
      Left            =   0
      TabIndex        =   7
      Top             =   0
      Width           =   5175
      Begin VB.Label username2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   14.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         ForeColor       =   &H00000000&
         Height          =   375
         Left            =   120
         TabIndex        =   10
         Top             =   240
         UseMnemonic     =   0   'False
         Width           =   4455
      End
      Begin VB.Label Label1 
         Alignment       =   1  'Right Justify
         BackStyle       =   0  'Transparent
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3615
         Left            =   120
         TabIndex        =   9
         Top             =   720
         Width           =   2055
      End
      Begin VB.Label Label2 
         BackStyle       =   0  'Transparent
         Caption         =   "Label2"
         BeginProperty Font 
            Name            =   "Verdana"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   3615
         Left            =   2280
         TabIndex        =   8
         Top             =   720
         Width           =   2775
      End
   End
   Begin VB.PictureBox usergraph 
      AutoRedraw      =   -1  'True
      BackColor       =   &H00000000&
      Height          =   2055
      Left            =   5280
      ScaleHeight     =   1995
      ScaleWidth      =   4395
      TabIndex        =   6
      Top             =   1920
      Width           =   4455
   End
   Begin VB.Timer Timer1 
      Interval        =   4000
      Left            =   9240
      Top             =   120
   End
   Begin VB.CommandButton Command3 
      Caption         =   "<< Prev"
      Height          =   375
      Left            =   5280
      TabIndex        =   4
      Top             =   4080
      Width           =   1215
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Next>>"
      Height          =   375
      Left            =   6720
      TabIndex        =   3
      Top             =   4080
      Width           =   1335
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Close"
      Default         =   -1  'True
      Height          =   375
      Left            =   8280
      TabIndex        =   2
      Top             =   4080
      Width           =   1335
   End
   Begin VB.Frame Frame1 
      Caption         =   "Player Setinfo's"
      Height          =   1815
      Left            =   5280
      TabIndex        =   0
      Top             =   0
      Width           =   4455
      Begin VB.ListBox setinfos 
         BeginProperty Font 
            Name            =   "Terminal"
            Size            =   9
            Charset         =   255
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   1500
         Left            =   120
         TabIndex        =   1
         Top             =   240
         Width           =   4215
      End
   End
   Begin VB.Line Line1 
      X1              =   8160
      X2              =   8160
      Y1              =   4080
      Y2              =   4440
   End
   Begin VB.Label username 
      BackStyle       =   0  'Transparent
      Caption         =   "Label1"
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   14.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00000000&
      Height          =   375
      Left            =   5280
      TabIndex        =   5
      Top             =   120
      UseMnemonic     =   0   'False
      Visible         =   0   'False
      Width           =   3495
   End
End
Attribute VB_Name = "UserInfoWindow"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public CurrentUser As Integer

Private Sub refresh_Click()
refreshdata
End Sub
Public Static Sub refreshdata()
If CurrentUser <> luser Then
    luser = CurrentUser
    setinfos.Clear
    For o = 1 To 40
    If player(CurrentUser).setinfo(o) > "" Then
        setinfos.AddItem player(CurrentUser).setinfo(o)
        End If
    Next
    End If
username.Caption = "(" + player(CurrentUser).RealName + ")"
username2.Caption = player(CurrentUser).name
Label1.Caption = ""
Label2.Caption = ""
t$ = ""
Label1.Caption = Label1.Caption + "Server uid:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).uid) + Chr$(13)
Label1.Caption = Label1.Caption + "Ip address:" + Chr$(13)
Label2.Caption = Label2.Caption + player(CurrentUser).ip + Chr$(13)
Label1.Caption = Label1.Caption + "Pmodels:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).pmodel) + Chr$(13)
Label1.Caption = Label1.Caption + "Emodels:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).emodel) + Chr$(13)
Label1.Caption = Label1.Caption + "Frags:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).frags) + Chr$(13)
Label1.Caption = Label1.Caption + "Time:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).mins) + "mins" + Chr$(13)
If player(CurrentUser).mins > 0 Then
    Label1.Caption = Label1.Caption + "Frags/min:" + Chr$(13)
    Label2.Caption = Label2.Caption + Str$(Int(1000 * (player(CurrentUser).frags / player(CurrentUser).mins)) / 1000) + Chr$(13)
    End If
Label1.Caption = Label1.Caption + "Current ping:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).ping) + "ms" + Chr$(13)
Label1.Caption = Label1.Caption + "Average ping:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(Int(10000 * player(CurrentUser).avgping) / 10000) + "ms" + Chr$(13)
Label1.Caption = Label1.Caption + Chr$(13)
Label2.Caption = Label2.Caption + "(measured with " + Str$(player(CurrentUser).numpings) + " pings)" + Chr$(13)
Label1.Caption = Label1.Caption + "Rate:" + Chr$(13)
Label2.Caption = Label2.Caption + Str$(player(CurrentUser).rate) + " bytes/s" + Chr$(13)

If Main.gamedir.text = "fortress" Then
    Label1.Caption = Label1.Caption + "(TF) Class:" + Chr$(13)
    Label2.Caption = Label2.Caption + Main.Class$(player(CurrentUser).tfclass) + Chr$(13)
    Label1.Caption = Label1.Caption + "(TF) TF_ID:" + Chr$(13)
    Label2.Caption = Label2.Caption + Str$(Val(Main.FindInPLayer$("tf_id", CurrentUser))) + Chr$(13)
    End If

Label1.Caption = Label1.Caption + "Receiving messages:" + Chr$(13)
Select Case Val(Main.FindInPLayer$("msg", CurrentUser))
    Case 0, 1
        Label2.Caption = Label2.Caption + "All messages"
    Case 2
        Label2.Caption = Label2.Caption + "Only players messages"
    Case 3
        Label2.Caption = Label2.Caption + "Only team messages"
    Case 4
        Label2.Caption = Label2.Caption + "No messages"
    End Select

If CurrentUser >= NumClients Then
    Command2.Enabled = False
    Else
    Command2.Enabled = True
    End If
If CurrentUser <= 1 Then
    Command3.Enabled = False
    Else
    Command3.Enabled = True
    End If
k = player(CurrentUser).lasthist
c = CurrentUser
kss = usergraph.Width / 100
ksy = usergraph.Height
usergraph.Cls
If k = 0 Then k = 1
my = ksy
For o = 1 To 100
lmh = -1
If c = 0 Then Exit For
If IsEmpty(player(c).fraghist(k)) Then Exit For
X1 = (o - 2) * kss
X2 = (o - 1) * kss
If player(c).minutehist(k) <> lastmh Then
    lastmh = player(c).minutehist(k)
    usergraph.Line (X2, my)-(X2, 0), QBColor(8)
    End If

If player(c).maxfrags >= 0 Then
    Y1 = my - (player(c).fraghist(k - 1) / (player(c).maxfrags + 1)) * ksy
    Y2 = my - (player(c).fraghist(k) / (player(c).maxfrags + 1)) * ksy
    usergraph.Line (X1, Y1)-(X2, Y2), QBColor(9)
    End If
Y1 = my - (player(c).pinghist(k - 1) / (player(c).maxping + 1)) * ksy
If Y1 > 0 Then
    Y2 = my - (player(c).pinghist(k) / (player(c).maxping + 1)) * ksy
    usergraph.Line (X1, Y1)-(X2, Y2), QBColor(12)
    End If

Y1 = my - (player(c).drophist(k - 1) / (player(c).maxdrop + 1)) * ksy
If Y1 > 0 Then
    Y2 = my - (player(c).drophist(k) / (player(c).maxdrop + 1)) * ksy
    usergraph.Line (X1, Y1)-(X2, Y2), QBColor(7)
    End If

k = k + 1
If k >= 100 Then k = 1
Next

End Sub

Private Sub Command1_Click()
UserInfoWindow.Visible = False
End Sub

Private Sub Command2_Click()
CurrentUser = CurrentUser + 1
refreshdata
End Sub

Private Sub Command3_Click()
CurrentUser = CurrentUser - 1
refreshdata
End Sub

Private Sub Form_Load()
GFS "Username in info window", username
GFS "Player setinfo list", setinfos

End Sub

Private Sub Timer1_Timer()
refreshdata
End Sub

Private Sub update_Click()
refreshdata
End Sub
