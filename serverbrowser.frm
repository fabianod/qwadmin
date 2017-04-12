VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form serverbrowser 
   Caption         =   "QW Server Browser"
   ClientHeight    =   5490
   ClientLeft      =   1740
   ClientTop       =   1830
   ClientWidth     =   8340
   Icon            =   "serverbrowser.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   5490
   ScaleWidth      =   8340
   Begin ComctlLib.Toolbar Toolbar1 
      Align           =   1  'Align Top
      Height          =   765
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   8340
      _ExtentX        =   14711
      _ExtentY        =   1349
      ButtonWidth     =   2884
      ButtonHeight    =   1191
      Appearance      =   1
      ImageList       =   "ImageList2"
      _Version        =   327682
      BeginProperty Buttons {0713E452-850A-101B-AFC0-4210102A8DA7} 
         NumButtons      =   6
         BeginProperty Button1 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Addserver"
            Key             =   "addserver"
            Description     =   "Add a new server"
            Object.ToolTipText     =   "Add a new server"
            Object.Tag             =   ""
            ImageIndex      =   3
         EndProperty
         BeginProperty Button2 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Remove server"
            Key             =   "removeserver"
            Description     =   "Remove a server from list"
            Object.ToolTipText     =   "Remove a server from list"
            Object.Tag             =   ""
            ImageIndex      =   9
         EndProperty
         BeginProperty Button3 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Server properties..."
            Key             =   "serverproperties"
            Object.Tag             =   ""
            ImageIndex      =   8
         EndProperty
         BeginProperty Button4 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Connect to server"
            Key             =   "adminserver"
            Description     =   "Admin server"
            Object.ToolTipText     =   "Admin server"
            Object.Tag             =   ""
            ImageIndex      =   7
         EndProperty
         BeginProperty Button5 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Key             =   ""
            Object.Tag             =   ""
            Style           =   3
            MixedState      =   -1  'True
         EndProperty
         BeginProperty Button6 {0713F354-850A-101B-AFC0-4210102A8DA7} 
            Caption         =   "Refresh"
            Key             =   ""
            Object.Tag             =   ""
            ImageIndex      =   2
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ListView servers 
      Height          =   3975
      Left            =   0
      TabIndex        =   0
      Top             =   720
      Width           =   8295
      _ExtentX        =   14631
      _ExtentY        =   7011
      View            =   3
      LabelEdit       =   1
      Sorted          =   -1  'True
      LabelWrap       =   -1  'True
      HideSelection   =   -1  'True
      _Version        =   327682
      Icons           =   "ImageList1"
      SmallIcons      =   "ImageList3"
      ForeColor       =   -2147483640
      BackColor       =   -2147483643
      Appearance      =   1
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      NumItems        =   0
   End
   Begin VB.Timer Timer1 
      Interval        =   30000
      Left            =   2160
      Top             =   4800
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Index           =   0
      Left            =   2640
      Top             =   4800
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
      Protocol        =   1
   End
   Begin ComctlLib.StatusBar StatusBar1 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   1
      Top             =   5235
      Width           =   8340
      _ExtentX        =   14711
      _ExtentY        =   450
      SimpleText      =   "Ready"
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   3
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            AutoSize        =   1
            Object.Width           =   12409
            Text            =   "Ready"
            TextSave        =   "Ready"
            Key             =   ""
            Object.Tag             =   ""
            Object.ToolTipText     =   "Status"
         EndProperty
         BeginProperty Panel2 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Object.Width           =   882
            MinWidth        =   882
            Key             =   "numplayers"
            Object.Tag             =   ""
         EndProperty
         BeginProperty Panel3 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            Object.Width           =   882
            MinWidth        =   882
            Key             =   "numservers"
            Object.Tag             =   ""
         EndProperty
      EndProperty
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin ComctlLib.ImageList ImageList3 
      Left            =   2760
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   16
      ImageHeight     =   16
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   5
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":0442
            Key             =   "qw"
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":0794
            Key             =   "qwnorcon"
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":0AE6
            Key             =   "q2"
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":0E38
            Key             =   "noreply"
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":118A
            Key             =   "q2norcon"
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ImageList ImageList2 
      Left            =   3960
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   24
      ImageHeight     =   23
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   9
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":14DC
            Key             =   ""
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":1B56
            Key             =   ""
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":21D0
            Key             =   ""
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":284A
            Key             =   ""
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":2EC4
            Key             =   ""
         EndProperty
         BeginProperty ListImage6 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":353E
            Key             =   ""
         EndProperty
         BeginProperty ListImage7 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":3BB8
            Key             =   ""
         EndProperty
         BeginProperty ListImage8 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":3ED2
            Key             =   ""
         EndProperty
         BeginProperty ListImage9 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":41EC
            Key             =   ""
         EndProperty
      EndProperty
   End
   Begin ComctlLib.ImageList ImageList1 
      Left            =   3360
      Top             =   4680
      _ExtentX        =   1005
      _ExtentY        =   1005
      BackColor       =   -2147483643
      ImageWidth      =   32
      ImageHeight     =   32
      MaskColor       =   12632256
      _Version        =   327682
      BeginProperty Images {0713E8C2-850A-101B-AFC0-4210102A8DA7} 
         NumListImages   =   5
         BeginProperty ListImage1 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":4506
            Key             =   "noreply"
         EndProperty
         BeginProperty ListImage2 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":5158
            Key             =   "q2"
         EndProperty
         BeginProperty ListImage3 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":5DAA
            Key             =   "q2norcon"
         EndProperty
         BeginProperty ListImage4 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":69FC
            Key             =   "qw"
         EndProperty
         BeginProperty ListImage5 {0713E8C3-850A-101B-AFC0-4210102A8DA7} 
            Picture         =   "serverbrowser.frx":76AE
            Key             =   "qwnorcon"
         EndProperty
      EndProperty
   End
   Begin VB.Menu MnuServers 
      Caption         =   "&Servers"
      Begin VB.Menu serveradd 
         Caption         =   "&Add"
         Shortcut        =   ^A
      End
      Begin VB.Menu serverremove 
         Caption         =   "&Remove"
         Shortcut        =   {DEL}
      End
      Begin VB.Menu serverprop 
         Caption         =   "&Properties..."
         Shortcut        =   ^C
      End
      Begin VB.Menu blank 
         Caption         =   "-"
         HelpContextID   =   1
         Index           =   1
      End
      Begin VB.Menu mnuRCON 
         Caption         =   "R&CONsole this server"
         Enabled         =   0   'False
         Shortcut        =   ^R
      End
      Begin VB.Menu serverconnect 
         Caption         =   "A&dminister"
         Shortcut        =   ^G
      End
      Begin VB.Menu mnublank5 
         Caption         =   "-"
      End
      Begin VB.Menu mnuview 
         Caption         =   "View as..."
         Begin VB.Menu mnuicons 
            Caption         =   "Icons"
         End
         Begin VB.Menu mnuSmallIcons 
            Caption         =   "Small Icons"
         End
         Begin VB.Menu mnuList 
            Caption         =   "List"
         End
         Begin VB.Menu mnudetailed 
            Caption         =   "Detailed"
         End
      End
      Begin VB.Menu blank2 
         Caption         =   "-"
         HelpContextID   =   2
         Index           =   2
      End
      Begin VB.Menu refresh 
         Caption         =   "Refresh &List"
         Shortcut        =   ^U
      End
      Begin VB.Menu AutoUpdate 
         Caption         =   "Auto &update"
      End
   End
   Begin VB.Menu help 
      Caption         =   "&Help"
      Begin VB.Menu About 
         Caption         =   "&About"
      End
   End
End
Attribute VB_Name = "serverbrowser"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Lastserver, reply$, FirstData, LastTimer, NServers
Public MaxUDP

Private Sub About_Click()
Load AboutWindow
AboutWindow.Visible = True
End Sub

Private Sub AutoUpdate_Click()
If AutoUpdate.Checked = False Then
    a = MsgBox("By setting autoupdate to true, this computer's bandwith will be decreased. It will also consume some cpu resources. The update will occur every 30 seconds..." + Chr$(13) + "Would you really like to set autoupdate on ?" + Chr$(13) + "(30 seconds interval)", vbYesNo)
    If a = vbNo Then Exit Sub
    End If
refresh_Click
AutoUpdate.Checked = Not AutoUpdate.Checked
Timer1.interval = 30000
Timer1.Enabled = True
End Sub


Public Sub Form_Load()
On Error Resume Next
' Winsock1.Bind
MaxUDP = Val(GetSetting("QWAdmin", "Settings", "Max pings", "5"))

If PRO Then Me.mnuRCON.Enabled = True


On Error Resume Next
For o = 0 To MaxUDP
If o > 0 Then Load Winsock1(o)
Winsock1(o).Close
Next

GFS "Server browser window", servers

servers.ListItems.Clear
servers.ColumnHeaders.Clear
servers.Arrange = lvwAutoTop
servers.MultiSelect = False
' servers.View = lvwIcon
servers.Icons = ImageList1
servers.SmallIcons = ImageList3
servers.ColumnHeaders.Add , , "Server", 2000, 0
servers.ColumnHeaders.Add , , "Port", 500, 0
servers.ColumnHeaders.Add , , "Ping", 750, 0
servers.ColumnHeaders.Add , , "Players", 750, 0
servers.ColumnHeaders.Add , , "Game", 1000, 0
servers.ColumnHeaders.Add , , "Status", 1000, 0

Dim newServer As ListItem

For o = 1 To 100
Serv(o).ip = ""
Serv(o).pass = ""
Serv(o).rcon = ""
Serv(o).qwsv = ""
Serv(o).port = 0
Next

NServers = Val(GetSetting(AppName, "Servers", "number of servers"))

For o = 1 To NServers
servers.ListItems.Add
Next
For o = 1 To NServers
t$ = GetSetting(AppName, "Servers", "SERVER " + Mid$(Str$(o), 2))
t2$ = GetSetting(AppName, "Servers", "RCON " + Mid$(Str$(o), 2))
t3$ = GetSetting(AppName, "Servers", "QWSV+ " + Mid$(Str$(o), 2))
k = InStr(t$, ":")
port = 27500
If k > 0 Then
    serverip$ = Left$(t$, k - 1)
    port = Val(Mid$(t$, k + 1))
    Else
    serverip$ = t$
    End If

If port <= 0 Then port = "27500"
    Serv(o).ip = serverip$
    Serv(o).port = port
    Serv(o).rcon = t2$
    Serv(o).qwsv = t3$

' n = servers.ListItems.Count + 1
With servers.ListItems(o)
    .Icon = "noreply"
    .SmallIcon = "noreply"
    .text = serverip$
    .Tag = o
    .SubItems(1) = port
    End With
Next
servers.Sorted = True
End Sub

Private Sub Form_Resize()
'servers.Width = ServerBrowser.Width
'servers.Height = ServerBrowser.Height - 375
On Error Resume Next
o = serverbrowser.WindowState
If o And 1 Then Exit Sub
If serverbrowser.Width < 9000 Then serverbrowser.Width = 9000
If serverbrowser.Height < 3500 Then serverbrowser.Height = 3500
sp = serverbrowser.Height - 350
StatusBar1.Move 0, sp + 300, serverbrowser.Width, 300
servers.Move 0, 735, serverbrowser.Width - 100, sp - 650 - 735
End Sub

Private Sub Form_Unload(Cancel As Integer)
ServerBrowserVisible = False
Unload Me
End Sub

Private Sub mnudetailed_Click()
servers.View = lvwReport

End Sub

Private Sub mnuicons_Click()
servers.View = lvwIcon

End Sub

Private Sub mnuList_Click()
servers.View = lvwList


End Sub

Private Sub mnuNewWindow_Click()
If servers.ListItems.Count = 0 Then Exit Sub
k = servers.SelectedItem.Index
k2 = 0
Do
k2 = k2 + 1
If Serv(k2).ip = servers.SelectedItem.text And _
    Serv(k2).port = servers.SelectedItem.SubItems(1) Then
    KK = k2
    Exit Do
    End If
If Serv(k2).ip = "" Then Exit Do
Loop
If KK = 0 Then Exit Sub
If KK > 0 Then
    If Serv(KK).rcon = "" Then
        rcon$ = InputBox("Please enter rcon password for this server:", "Password")
        Else
        rcon$ = Serv(KK).rcon
        End If
    If rcon$ = "" Then Exit Sub
    Else
    Exit Sub
    End If
Dim NewMain As New Main

NewMain.Disconnected
NewMain.serverip.text = servers.ListItems(k)
NewMain.serverport.text = servers.ListItems(k).SubItems(1)
NewMain.rcon.text = rcon$
NewMain.Connect_Click
NewMain.Enabled = True
NewMain.Visible = True
NewMain.SetFocus

End Sub

Private Sub mnuRCON_Click()
If servers.ListItems.Count = 0 Then Exit Sub
k = servers.SelectedItem.Index
k2 = 0
Do
k2 = k2 + 1
If Serv(k2).ip = servers.SelectedItem.text And _
    Serv(k2).port = servers.SelectedItem.SubItems(1) Then
    KK = k2
    Exit Do
    End If
If Serv(k2).ip = "" Then Exit Do
Loop
If KK = 0 Then Exit Sub
If KK > 0 Then
    If Serv(KK).rcon = "" Then
        rcon$ = InputBox("Please enter rcon password for this server:", "Password")
        Else
        rcon$ = Serv(KK).rcon
        End If
    If rcon$ = "" Then Exit Sub
    Else
    Exit Sub
    End If
Dim ncon As New qwconsole
ncon.serverip.text = servers.ListItems(k)
ncon.serverport.text = servers.ListItems(k).SubItems(1)
ncon.serverrcon.text = rcon$
ncon.ConnectToServer
ncon.Visible = True
ncon.Visible = True
ncon.SetFocus
End Sub

Private Sub mnuSmallIcons_Click()
servers.View = lvwSmallIcon


End Sub

Public Sub refresh_Click()
On Error Resume Next

For o = 0 To MaxUDP
Winsock1(o).Close
Next
lo = 0

StatusBar1.Panels(1).text = "Pinging..."

Timer1.Enabled = False

NS = servers.ListItems.Count
For o = 1 To NS

ip$ = servers.ListItems(o)
port = servers.ListItems(o).SubItems(1)

Do
For n = 0 To MaxUDP
t$ = Winsock1(n).Tag
ntt = InStr(t$, " ")
If ntt Then
    TIM = Val(Mid$(Winsock1(n).Tag, ntt + 1))
    j = Val(Left$(t$, ntt - 1))
    If Timer - TIM > 4 Then
        servers.ListItems(j).SubItems(5) = "No reply"
        SBInbuff$(n) = ""
        Winsock1(n).Close
        Winsock1(n).Tag = ""
        SBInbuff$(n) = ""
        End If
    End If
DoEvents
If Winsock1(n).Tag = "" Then
    SBInbuff$(n) = ""
    
    Winsock1(n).Close
    
    Winsock1(n).Tag = o & " " & Timer
    servers.ListItems(o).SubItems(5) = "Pinging..."
    
    Do
    Loop Until Winsock1(n).state = 0
    
    Winsock1(n).Protocol = sckUDPProtocol
    
    DoEvents
    
    Winsock1(n).Connect ip$, port
    Winsock1(n).Bind
    
    lt = Timer
    Do
    DoEvents
    Loop Until Winsock1(n).state = 1 Or Timer - lt > 0.2
    If Timer - lt > 0.2 Then
        Winsock1(n).Tag = ""
        servers.ListItems(o).SubItems(5) = "No route"
        Winsock1(n).Close
        Exit Do
        End If
    SBInbuff$(n) = ""
    Winsock1(n).SendData String$(4, Chr$(255)) + "status " _
        + Chr$(32) + Chr$(0)
    
    
    
    Exit Do
    End If
Next
Loop

lt = Timer
Do
DoEvents
Loop Until Timer - lt > 0.2

Next

StatusBar1.Panels(1).text = "Waiting for shutdown..."

Do
For o = 0 To MaxUDP
t$ = Winsock1(o).Tag
ntt = InStr(t$, " ")
If ntt Then
    TIM = Val(Mid$(t$, ntt + 1))
    j = Val(Left$(t$, ntt - 1))
    If Timer - TIM > 4 Then
        servers.ListItems(j).SubItems(5) = "No reply"
        SBInbuff$(o) = ""
        Winsock1(o).Close
        Winsock1(o).Tag = ""
        SBInbuff$(o) = ""
        End If
    End If
Next
busy = False
For o = 0 To MaxUDP
If Winsock1(o).Tag <> "" Then busy = True
DoEvents
Next
Loop Until busy = False

Timer1.Enabled = True
StatusBar1.Panels(1).text = "Ready..."
servers.Sorted = True

Exit Sub

nrth:
servers.ListItems(Lastserver).SubItems(2) = ""
servers.ListItems(Lastserver).SubItems(3) = ""
servers.ListItems(Lastserver).SubItems(4) = ""
servers.ListItems(Lastserver).SubItems(5) = "No route"
nrthost = True

Resume Next

End Sub

Private Sub serveradd_Click()
Load ServerBrowser2
ServerBrowser2.Caption = "Add new server..."
ServerBrowser2.Command1.Caption = "Add..."
ServerBrowser2.Visible = True
ServerBrowser2.SetFocus
End Sub

Private Sub serverconnect_Click()
If servers.ListItems.Count = 0 Then Exit Sub
pq = servers.SelectedItem.Index
KK = servers.ListItems(pq).Tag
If KK = 0 Then Exit Sub
If Serv(KK).rcon = "" Then
    rcon$ = InputBox("Please enter rcon password for this server:", "Password")
    Else
    rcon$ = Serv(KK).rcon
    End If
If rcon$ = "" Then Exit Sub

Load Main
Main.Disconnected
Main.serverip.text = Serv(KK).ip
Main.serverport.text = Serv(KK).port
QWSVPass$ = Serv(KK).qwsv
Main.rcon.text = rcon$
Main.Connect_Click
Main.Enabled = True
Main.Visible = True
End Sub

Private Sub serverprop_Click()
If servers.ListItems.Count = 0 Then Exit Sub
On Error Resume Next
Load ServerBrowser2
ServerBrowser2.Caption = "Server properties..."
ServerBrowser2.ip.text = servers.SelectedItem.text
ServerBrowser2.port.text = servers.SelectedItem.SubItems(1)
k = servers.SelectedItem.Index
k2 = 0
Do
k2 = k2 + 1
If Serv(k2).ip = servers.SelectedItem.text And _
    Serv(k2).port = Val(servers.SelectedItem.SubItems(1)) Then
    KK = k2
    Exit Do
    End If
If Serv(k2).ip = "" Then Exit Do
Loop
If KK = 0 Then Exit Sub
If KK > 0 Then
    rcon$ = Serv(KK).rcon
    End If
ServerBrowser2.rcon.text = rcon$
If rcon$ > "" Then ServerBrowser2.Option1(1).Value = True Else ServerBrowser2.Option1(0).Value = True
ServerBrowser2.Command1.Caption = "Change..."
ServerBrowser2.Number = Val(servers.SelectedItem.Tag)
ServerBrowser2.Visible = True
ServerBrowser2.SetFocus
End Sub


Public Sub serverremove_Click()
If MsgBox("Are you sure you wish to remove this server from your list ?", vbYesNo) = vbYes Then
    If NServers > 0 Then
        b = servers.SelectedItem.Index
        a = servers.ListItems(b).Tag
        removeserver (a)
        End If
    End If
End Sub


Private Sub servers_ColumnClick(ByVal ColumnHeader As ComctlLib.ColumnHeader)
k = ColumnHeader.Index
k2 = ColumnHeader.SubItemIndex
servers.SortKey = k - 1
If servers.SortOrder = lvwAscending Then
    servers.SortOrder = lvwDescending
    Else
    servers.SortOrder = lvwAscending
    End If
servers.Sorted = True
End Sub

Public Sub servers_DblClick()
k = servers.SelectedItem.Index
serverconnect_Click
End Sub

Private Sub servers_KeyPress(KeyAscii As Integer)
If KeyAscii = 13 Then servers_DblClick
End Sub

Private Sub servers_MouseUp(button As Integer, Shift As Integer, X As Single, Y As Single)
If button = 2 Then
    PopupMenu MnuServers
    End If
End Sub

Public Static Sub Timer1_Timer()
If AutoUpdate.Checked Then refresh_Click
End Sub


Public Sub getinfo(a$, players, gamedir$, maxclients$)
On Error Resume Next
gamedir$ = ""
players = 0
maxclients$ = ""
KK = InStr(a$, String$(4, Chr$(255)) + "print")
If KK = 1 Then
    n = 0
    a$ = Mid$(a$, 12)
    j$ = Mid$(j$, KK)
    j$ = a$
    Do
    t1 = InStr(j$, "\")
    If t1 = 0 Then Exit Do
    a1$ = Left$(j$, t1 - 1)
    j$ = Mid$(j$, t1 + 1)
    t2 = InStr(j$, "\")
    t3 = InStr(j$, Chr$(10))
    If t2 = 0 Then t2 = t3
    If t2 = 0 Then Exit Do
    a2$ = Left$(j$, t2 - 1)
    j$ = Mid$(j$, t2 + 1)
    n = n + 1
    Si(n, 0) = a1$
    Si(n, 1) = a2$
    Loop
    numberofsi = n + 1
    
    gamedir$ = FindinSI$("gamedir")
    maxclients$ = FindinSI$("maxclients")
    players = 0
    Do
    k = InStr(j$, Chr$(10))
    If k = 0 Then Exit Do
    players = players + 1
    j$ = Mid$(j$, k + 1)
    Loop
    
    Exit Sub
    End If

k = InStr(a$, Chr$(10))
If k > 0 Then c$ = Mid$(a$, k + 1, Len(a$) - 1 - k) Else c$ = ""
If c$ = "" Then
    players = 0
    Else
    players = 1
    Do
    k2 = InStr(c$, Chr$(10))
    If k2 Then players = players + 1 Else Exit Do
    c$ = Mid$(c$, k2 + 1)
    Loop
    End If
k = InStr(a$, "*gamedir")
If k > 0 Then
    k1 = k + 9
    k2 = InStr(k1 + 1, a$, "\")
    k3 = InStr(k1 + 1, a$, Chr$(10))
    If k3 < k2 Then k2 = k3
    gamedir$ = Mid$(a$, k1, k2 - k1)
    End If
k = InStr(a$, "maxclients")
If k > 0 Then
    k1 = k + 11
    k2 = InStr(k1 + 1, a$, "\")
    k3 = InStr(k1 + 1, a$, Chr$(10))
    If k3 < k2 Then k2 = k3
    maxclients = Val(Mid$(a$, k1, k2 - k1))
    End If
If maxclients$ = "" Then maxclients = 8
If gamedir$ = "" Then gamedir$ = "id1"
End Sub

Private Sub Toolbar1_ButtonClick(ByVal button As ComctlLib.button)
Select Case button.Index
    Case 1
        serveradd_Click
    Case 2
        serverremove_Click
    Case 3
        serverprop_Click
    Case 4
        serverconnect_Click
    Case 6
        refresh_Click
    End Select
End Sub

Public Sub addnewserver(ip$, port$, rcon$, qwaserver$)

NServers = NServers + 1
o = NServers
Serv(o).ip = ip$
Serv(o).port = Val(port$)
Serv(o).pass = rcon$
Serv(o).rcon = rcon$
Serv(o).qwsv = qwaserver$

' AddNewServertoList ip$, Val(port$), o

If Val(port$) <= 0 Then
    port$ = ":27500"
    Else
    If Left$(port$, 1) <> ":" Then
        port$ = ":" + port$
        End If
    End If


SaveSetting AppName, "Servers", "SERVER " + Mid$(Str$(o), 2), ip$ + port$
SaveSetting AppName, "Servers", "RCON " + Mid$(Str$(o), 2), rcon$
SaveSetting AppName, "Servers", "QWSV+ " + Mid$(Str$(o), 2), qwaserver$
SaveSetting AppName, "Servers", "number of servers", o

Form_Load


End Sub

Public Sub removeserver(Number)
o = Val(Number)
If o <= 0 Then Exit Sub
For i = Number To NServers - 1
a$ = GetSetting(AppName, "Servers", "SERVER " + Mid$(Str$(i + 1), 2))
rcon$ = GetSetting(AppName, "Servers", "RCON " + Mid$(Str$(i + 1), 2), "")
qwapassword$ = GetSetting(AppName, "Servers", "QWSV+ " + Mid$(Str$(i + 1), 2), "")
SaveSetting AppName, "Servers", "SERVER " + Mid$(Str$(i), 2), a$
SaveSetting AppName, "Servers", "RCON " + Mid$(Str$(i), 2), rcon$
SaveSetting AppName, "Servers", "QWSV+ " + Mid$(Str$(i), 2), qwapassword$
Next
DeleteSetting AppName, "Servers", "SERVER " & Mid$(Str$(NServers), 2)
DeleteSetting AppName, "Servers", "RCON " & Mid$(Str$(NServers), 2)
DeleteSetting AppName, "Servers", "QWSV+ " & Mid$(Str$(NServers), 2)
NServers = NServers - 1
SaveSetting AppName, "Servers", "number of servers", NServers
Form_Load

End Sub
Public Sub changeserver(Number, ip$, port$, rcon$, qwaserver$)
o = Number
If Val(port$) <= 0 Then p$ = ":27500" Else p$ = ":" + port$
nn = servers.ListItems.Count
For k = 1 To nn
If servers.ListItems(k).Tag = o Then
    With servers.ListItems(k)
        .text = ip$ + p$
        .SubItems(1) = ""
        .SubItems(2) = ""
        .SubItems(3) = ""
        .SubItems(4) = ""
        End With
    Exit For
        
    End If
Next
SaveSetting AppName, "Servers", "SERVER " + Mid$(Str$(o), 2), ip$ + p$
SaveSetting AppName, "Servers", "RCON " + Mid$(Str$(o), 2), rcon$
SaveSetting AppName, "Servers", "QWSV+ " + Mid$(Str$(o), 2), qwaserver$
Form_Load
End Sub

Public Sub GetInfoServer(n, inbuf$, ping)
tt = Val(servers.ListItems(n).Tag)
t = Serv(tt).rcon

If t > "" Then HasRcon = True

If HasRcon Then r$ = "" Else r$ = "norcon"

If inbuf$ = "" Then
    servers.ListItems(n).Icon = "noreply"
    servers.ListItems(n).SmallIcon = "noreply"
    servers.ListItems(n).SubItems(2) = ""
    servers.ListItems(n).SubItems(3) = ""
    servers.ListItems(n).SubItems(4) = ""
    servers.ListItems(n).SubItems(5) = "No reply"
    Exit Sub
    End If

servers.ListItems(n).SubItems(2) = Format$(ping, "###0.0") + " ms"
        
Select Case Asc(Right$(inbuf$, 1))
    Case 0          ' QUAKEWORLD SERVER
        servers.ListItems(n).Icon = "qw" + r$
        servers.ListItems(n).SmallIcon = "qw" + r$
        servers.ListItems(n).SubItems(5) = "ONLINE"
        getinfo inbuf$, players, gamedir$, maxclients$
        servers.ListItems(n).SubItems(3) = Format$(players) + "/" + maxclients$
        servers.ListItems(n).SubItems(4) = gamedir$
    Case 10
        servers.ListItems(n).Icon = "q2" + r$
        servers.ListItems(n).SmallIcon = "q2" + r$
        servers.ListItems(n).SubItems(5) = "ONLINE"
        getinfo inbuf$, players, gamedir$, maxclients$
        servers.ListItems(n).SubItems(3) = Format$(players) + "/" + maxclients$
        servers.ListItems(n).SubItems(4) = gamedir$
    End Select

DoEvents

End Sub


Public Sub AddNewServertoList(serverip$, port, in_index)
servers.ListItems.Add , , serverip$, "noreply", "noreply"
n = servers.ListItems.Count
NServers = NServers + 1
With servers.ListItems(n)
    .SubItems(1) = port
    .Tag = in_index
    End With
End Sub

Private Sub Winsock1_DataArrival(Index As Integer, ByVal bytesTotal As Long)
On Error Resume Next
Winsock1(Index).GetData a$
SBInbuff$(Index) = SBInbuff$(Index) + a$
If Right$(a$, 1) = Chr$(0) Or Right$(a$, 1) = Chr$(10) Then
    p = Winsock1(Index).Tag
    If p > "" Then
        t = InStr(p, " ")
        Row = Left$(p, t - 1)
        LastTimer = Mid$(p, t + 1)
        ping = (Timer - LastTimer) * 1000
        
        DoEvents
        
        GetInfoServer Val(Row), SBInbuff$(Index), ping
        
        SBInbuff$(Index) = ""
        Debug.Print "Received complete packet from " & k
        
        DoEvents
        
        Winsock1(k).Close
        Do
        Loop Until Winsock1(k).state = 0
        
            
        Winsock1(k).Tag = ""
        End If
    Else
    
    End If
End Sub


Public Function FindinSI$(a$)
For o = 1 To numberofsi
If LCase$(Si(o, 0)) = a$ Then FindinSI$ = Si(o, 1): Exit For
Next
End Function
