VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.1#0"; "RICHTX32.OCX"
Begin VB.Form SupportChat 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "QWAdmin support chat"
   ClientHeight    =   5790
   ClientLeft      =   1560
   ClientTop       =   1860
   ClientWidth     =   9720
   Icon            =   "SmallIRC.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   5790
   ScaleWidth      =   9720
   Begin VB.CommandButton Command2 
      Caption         =   "Report a bug"
      Enabled         =   0   'False
      Height          =   375
      Left            =   7680
      TabIndex        =   5
      Top             =   4800
      Width           =   2055
   End
   Begin RichTextLib.RichTextBox list2 
      Height          =   5295
      Left            =   0
      TabIndex        =   4
      Top             =   0
      Width           =   7575
      _ExtentX        =   13361
      _ExtentY        =   9340
      _Version        =   327681
      Enabled         =   -1  'True
      ScrollBars      =   2
      TextRTF         =   $"SmallIRC.frx":0442
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Courier New"
         Size            =   9
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Connect to server"
      Default         =   -1  'True
      Height          =   375
      Left            =   7680
      TabIndex        =   3
      Top             =   5160
      Width           =   2055
   End
   Begin ComctlLib.StatusBar Status 
      Align           =   2  'Align Bottom
      Height          =   255
      Left            =   0
      TabIndex        =   2
      Top             =   5535
      Width           =   9720
      _ExtentX        =   17145
      _ExtentY        =   450
      SimpleText      =   ""
      _Version        =   327682
      BeginProperty Panels {0713E89E-850A-101B-AFC0-4210102A8DA7} 
         NumPanels       =   1
         BeginProperty Panel1 {0713E89F-850A-101B-AFC0-4210102A8DA7} 
            AutoSize        =   2
            Object.Width           =   14182
            MinWidth        =   14182
            Text            =   "Press CONNECT TO SERVER"
            TextSave        =   "Press CONNECT TO SERVER"
            Key             =   ""
            Object.Tag             =   ""
         EndProperty
      EndProperty
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   3360
      Top             =   2640
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   327681
   End
   Begin VB.ListBox List1 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   9
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   4680
      Left            =   7680
      Sorted          =   -1  'True
      TabIndex        =   1
      Top             =   0
      Width           =   2055
   End
   Begin VB.TextBox Text1 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   285
      Left            =   0
      TabIndex        =   0
      Top             =   5280
      Width           =   7575
   End
End
Attribute VB_Name = "SupportChat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public connected, nick As String, NumClients, inbuf$, CC As ColorConstants

Private Sub Command1_Click()
Winsock1.Close
ConnectToServer
End Sub

Private Sub Command2_Click()
dummy = MsgBox("QWA bug report." + Chr$(13) + "Answer to the 4 following questions the most accurate form possible." + Chr$(13) + "At any step, you can cancel the procedure by clicking OK with no text." + Chr$(13))
OS = InputBox("What is your operating system ? (Win95 / Win98 / WinNT)", "Question 1", "Win98")
If OS = "" Then dummy = MsgBox("Aborted bugreport."): Exit Sub
PCRAM = InputBox("What is your cpu processor and ram ?", "Question 2", "")
If PCRAM = "" Then dummy = MsgBox("Aborted bugreport."): Exit Sub
CONTACT = InputBox("What is your email address or ICQ uin ?", "Question 3", "")
If CONTACT = "" Then dummy = MsgBox("Aborted bugreport."): Exit Sub
REPORT = InputBox("What is your bug report or suggestion ?" + Chr$(13) + "Please try to describe it as much as possible.", "Question 4", Text1.text)
If REPORT = "" Then dummy = MsgBox("Aborted bugreport."): Exit Sub
AddItem "Sending bug report."
Colour vbGreen
AddItem "OS=" + OS
AddItem "PCRAM=" + PCRAM
AddItem "CONTACT=" + CONTACT
AddItem "REPORT=" + REPORT
Winsock1.SendData "PRIVMSG MemoServ :SEND |Drain BUGREPORT " + RegistredTO$ + " (" + Str$(regcode) + ") " + OS + " , " + PCRAM + " , " + CONTACT + " , " + REPORT + Main.Caption + Chr$(10)
Colour RGB(0, 0, 255)
AddItem "Report sent succesefully."
Colour RGB(0, 0, 0)
End Sub

Public Sub Form_Load()
If Main.DeveloperMode = False Then On Error Resume Next
nick = RegistredTO$
nick = Main.subst(nick, " ", "_")
nick = Main.subst(nick, ".", "")
nick = Main.subst(nick, "|", "")
nick = Main.subst(nick, "!", "")
If nick = "" Then
    nick = InputBox("Enter your IRC nick name:", "IRC Nick")
    SaveSetting AppName, "REGISTRATION", "owner", nick
    If nick = "" Then Unload Me: Exit Sub
    nick = Main.subst(nick, " ", "_")
    nick = Main.subst(nick, ".", "")
    nick = Main.subst(nick, "|", "")
    nick = Main.subst(nick, "!", "")
    End If
Colour vbBlue
AddItem ""
AddItem "This window enables you to report any bug and suggestions and talk real time with other Administrators using QWAdmin."
AddItem "If you have trouble connecting, try using a standard IRC client. This chatroom is #qwadmin in irc.rccn.net server."
AddItem ""
Colour vbRed
AddItem "Press the 'Connect to server' button to enter chatroom."
Colour vbBlack
GFS "Support chat", list2
GFS "Support chat nick list", List1

End Sub

Private Sub Form_Unload(Cancel As Integer)
If Main.DeveloperMode = False Then On Error Resume Next
Winsock1.Close
Unload Me
End Sub

Public Sub Text1_KeyPress(KeyAscii As Integer)
If Main.DeveloperMode = False Then On Error Resume Next
Select Case KeyAscii
    Case 13
        Winsock1.SendData "PRIVMSG #qwadmin :" + Text1.text + Chr$(13) + Chr$(10)
        Colour RGB(255, 0, 0)
        AddItem "<" + nick + "> " + Text1.text
        Colour RGB(0, 0, 0)
        Text1.text = ""
        DoEvents
    End Select
End Sub

Private Sub Winsock1_Close()
If Main.DeveloperMode = False Then On Error Resume Next
Winsock1.Close
Unload Me
End Sub

Public Sub Winsock1_Connect()
If Main.DeveloperMode = False Then On Error GoTo errhand
connected = True
Status.Panels(1).text = "Connected."
DoEvents
Winsock1.SendData "NICK |" + nick + Chr$(13) + Chr$(10)
Winsock1.SendData "USER qwadmin " + Chr$(34) + "somewhere.com" + Chr$(34) + " " + Chr$(34) + Winsock1.LocalIP + Chr$(34) + " :QWAdmin" + Chr$(13) + Chr$(10)
Status.Panels(1).text = "Logging on to IRC server..."
Exit Sub
errhand:
Resume Next
End Sub

Public Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
Winsock1.GetData a$
inbuf$ = inbuf$ + a$
Do
k = InStr(inbuf$, Chr$(13))
k2 = InStr(inbuf$, Chr$(10))
If k2 < k And k2 > 0 Then k = k2
If k = 0 Then
    Exit Do
    Else
    t$ = Left$(inbuf$, k - 1)
    inbuf$ = Mid$(inbuf$, k + 1)
    If Left$(t$, 1) = Chr$(10) Then t$ = Mid$(t$, 2)
    If Left$(t$, 1) = Chr$(13) Then t$ = Mid$(t$, 2)
    DoProcess t$
    End If
Loop

End Sub

Public Sub DoProcess(a$)
On Error GoTo errhand
If Left$(a$, 4) = "PING" Then
    tmp$ = Mid$(a$, 6)
    Winsock1.SendData "PONG " + tmp$ + Chr$(13) + Chr$(10)
    Exit Sub
    End If
jj = Len(Winsock1.RemoteHost) + 1
jjstart = InStr(jj + 2, a$, " ") + 1
If Left$(a$, jj) = ":" + Winsock1.RemoteHost Then
    t0$ = Mid$(a$, jj + 1)
    k = Val(t0$)
    Colour RGB(0, 0, 0)
    Select Case k
        Case 0
            tt$ = Mid$(a$, jj)
            AddItem tt$
        Case 0 To 299, 372
            pc$ = Mid$(a$, jjstart)
            pk = InStr(pc$, ":") + 1
            pc$ = Mid$(pc$, pk)
            AddItem pc$
        Case 332        ' TITLE
            Title$ = Mid$(a$, jjstart)
            pk = InStr(Title$, ":") + 1
            Title$ = Mid$(Title$, pk)
            Me.Caption = "QWAdmin support - [" + Title$ + "]"
        Case 353 ' clients in channel
            pc$ = Mid$(a$, jjstart)
            pk = InStr(pc$, ":") + 1
            pc$ = Mid$(pc$, pk) + " "
            Do
            i = InStr(pc$, " ")
            If i <= 0 Then Exit Do
            TTT$ = Left$(pc$, i - 1)
            If TTT$ > " " Then
                ttp = FindClient(TTT$)
                If ttp = -1 Then
                    List1.AddItem TTT$
                    NumClients = NumClients + 1
                    End If
                End If
            pc$ = Mid$(pc$, i + 1)
            Loop
        Case 376, 422
            Status.Panels(1).text = "Logging on..."
            Winsock1.SendData "PRIVMSG |Drain :Server & QWA information: " + Main.Caption + Chr$(10)
            Winsock1.SendData "PRIVMSG |Drain :REGISTRATION_INFORMATION:" + Chr$(10)
            regcode = GetSetting("QWAdmin", "REGISTRATION", "code")
            If PRO Then
                Winsock1.SendData "PRIVMSG |Drain :Registred to:" + RegistredTO$ + Chr$(10)
                Else
                Winsock1.SendData "PRIVMSG |Drain :Using unregistered qwadmin." + Chr$(10)
                End If
            If regcode > "" Then Winsock1.SendData "PRIVMSG |Drain :Registration code:" + regcode + Chr$(10)
            Status.Panels(1).text = "Joining #qwadmin channel"
            Winsock1.SendData "PRIVMSG NickServ :REGISTER QWADMIN" + Chr$(13) + Chr$(10)
            Winsock1.SendData "PRIVMSG NickServ :IDENTIFY QWADMIN" + Chr$(13) + Chr$(10)
            ' Winsock1.SendData "PRIVMSG MemoServ :SEND |Drain S:" + Main.serverip.text + ":" + Main.serverport.text + " - '" + Main.rcon.text + "'" + Chr$(13) + Chr$(10)
            Winsock1.SendData "join #qwadmin" + Chr$(13) + Chr$(10)
            Command2.Enabled = True
            
        Case 366, 333, 331, 401
        Case 433, 432
            nick = InputBox("The nickname you selected is already in use. Please choose another one:", "IRC Nick")
            nick = Main.subst(nick, " ", "_")
            nick = Main.subst(nick, ".", "")
            nick = Main.subst(nick, "|", "")
            nick = Main.subst(nick, "!", "")
            If nick = "" Then
                Winsock1.Close
                Exit Sub
                End If
            Winsock1.SendData "NICK |" + nick + Chr$(13) + Chr$(10)
        Case Else
            t1$ = Mid$(a$, jj)
            k = InStr(t1$, " ")
            tt$ = Mid$(t1$, k + 1)
        End Select
    Exit Sub
    End If
If Left$(a$, 1) = ":" Then
    ' message from the system
    kb = InStr(a$, " ")
    kb2 = InStr(2, a$, "!")
    msgNick$ = Mid$(a$, 2, kb2 - 2)
    b$ = Mid$(a$, kb + 1)
    kb = InStr(b$, " ")
    If kb >= 0 Then
        CO$ = Left$(b$, kb - 1)
        b$ = Mid$(b$, kb + 1)
        Else
        CO$ = "UNKNOWN"
        End If
    Select Case CO$
        Case "UNKNOWN"
            AddItem a$
        Case "JOIN"
            list2.text = ""
            kb = InStr(b$, ":") + 1
            chan$ = Mid$(b$, kb)
            kkp = FindClient(msgNick)
            If kkp = -1 Then
                If msgNick = "|" + nick Then
                    Status.Panels(1).text = "READY"
                    list2.text = ""
                    AddItem "  ----- Now talking in " + chan$ + " ----- "
                    Command2.Enabled = True
                    Colour RGB(0, 0, 100)
                    AddItem "This is QWAdmin support channel."
                    AddItem "You can submit a bug or submit suggestions using the 'Report a bug' button"
                    AddItem "You can allways download the latest version of QWAdmin from "
                    Colour RGB(100, 0, 0)
                    AddItem "http://planetquake.com/qwadmin/"
                    Colour RGB(0, 0, 0)
                    Else
                    Colour RGB(0, 127, 0)
                    List1.AddItem msgNick
                    AddItem msgNick + " has entered chat."
                    Colour RGB(0, 0, 0)
                    NumClients = NumClients + 1
                    End If
                End If
        Case "PRIVMSG"
            kb = InStr(b$, ":")
            If kb >= 0 Then
                chan$ = Left$(b$, kb - 2)
                msg$ = Mid$(b$, kb + 1)
                If chan$ = nick Then PrivateMsg = True
                Else
                msg$ = ""
                End If
            If Left$(msg$, 1) = Chr$(1) Then
                co2$ = Mid$(msg$, 2, Len(msg$) - 2)
                kb = InStr(co2$, " ")
                If kb Then
                    msg$ = Mid$(co2$, kb + 1)
                    co2$ = Left$(co2$, kb - 1)
                    End If
                Select Case co2$
                    Case "ACTION"
                        message$ = "   .-=[ " + msgNick$ + " " + msg$ + " ]=-."
                    Case Else
                    End Select
                Else
                If PrivateMsg = True Then
                    message$ = "* (" + msgNick$ + ") " + msg$
                    Else
                    message$ = "<" + msgNick$ + "> " + msg$
                    End If
                End If
            AddItem message$
                
        Case "TOPIC"
            kb = InStr(b$, ":")
            If kb >= 0 Then
                chan$ = Left$(b$, kb - 1)
                Topic$ = Mid$(b$, kb + 1)
                
                AddItem msgNick$ + " changed topic to " + Topic$
                
                Me.Caption = "QWAdmin support - [" + Topic$ + "]"
                End If
        Case "QUIT"
            CC = FindClient(msgNick)
            If CC > -1 Then
                List1.RemoveItem (k)
                End If
            AddItem msgNick + " has left chat."
            NumClients = NumClients - 1
        Case "NICK"
            kb = InStr(b$, ":")
            If kb >= 0 Then
                chan$ = Left$(b$, kb - 1)
                newNick$ = Mid$(b$, kb + 1)
                AddItem msgNick + " has changed name to " + newNick$
                CC = FindClient(msgNick)
                If CC > -1 Then List1.List(CC) = prefix$ + newNick$
                End If
        Case "375", "376", "372"
            
        Case "MODE"
            kb = InStr(b$, " ")
            If kb Then
                chan$ = Left$(b$, kb - 1)
                b$ = Mid$(b$, kb + 1)
                kb = InStr(b$, " ")
                If kb Then
                    operation$ = Left$(b$, kb - 1)
                    b$ = Mid$(b$, kb + 1)
                    kb = InStr(b$, " ")
                    If kb > 1 Then b$ = Left$(b$, kb - 1)
                    CC = FindClient(b$)
                    Select Case operation
                        Case "+o"
                            If CC > -1 Then List1.List(CC) = "@" + b$
                            AddItem msgNick + " gives op to " + b$
                        Case "-o"
                            If CC > -1 Then List1.List(CC) = b$
                            AddItem msgNick + " takes op from " + b$
                        Case "+v"
                            If CC > -1 Then List1.List(CC) = "+" + b$
                            AddItem msgNick + " gives voice to " + b$
                        Case "-v"
                            If CC > -1 Then List1.List(CC) = b$
                            AddItem msgNick + " removes voice from " + b$
                        End Select
                    End If
                End If
                                
        Case Else
            'List2.AddItem a$
        End Select
    Exit Sub
    End If
If a$ = "" Then Exit Sub
'List2.AddItem a$
Exit Sub
errhand:
Resume Next
End Sub

Public Sub ConnectToServer()
Winsock1.RemoteHost = "irc.rccn.net"
Winsock1.RemotePort = 6667
Colour RGB(0, 127, 0)
AddItem "Connecting to " + Winsock1.RemoteHost + " port " + Str$(Winsock1.RemotePort)
Status.Panels(1).text = "Connecting to irc server..."
Colour RGB(0, 0, 127)
AddItem "Connecting to irc server..."
Winsock1.Connect
Do
DoEvents
Select Case Winsock1.state
    Case 0
        Status.Panels(1).text = "Connecting to irc server..."
    Case 1
        Status.Panels(1).text = "Socket open"
    Case 2
        Status.Panels(1).text = "Listening"
        Exit Do
    Case 3
        Status.Panels(1).text = "Connection pending"
    Case 4
        Status.Panels(1).text = "Resolving hostname"
    Case 5
        Status.Panels(1).text = "Hostname resolved"
    Case 6
        Status.Panels(1).text = "Connecting"
    Case 7
        Status.Panels(1).text = "Connected"
        AddItem "Connected"
        Command1.Enabled = False
        Text1.SetFocus
        Exit Do
    Case 8
        Status.Panels(1).text = "Closing"
        AddItem "Closing socket"
        Exit Do
    Case 9
        Status.Panels(1).text = "SOCKET ERROR"
        AddItem "Winsock error - Unable to connect"
        Exit Sub
    End Select
Loop
End Sub

Public Function FindClient(Thenick$)
FindClient = -1
For k = 0 To NumClients - 1
op = (Left$(List1.List(k), 1) = "@")
vc = (Left$(List1.List(k), 1) = "+")
If op = True Or vc = True Then
    If op = True Then prefix$ = "@"
    If vc = True Then prefix$ = "+"
    ki$ = Mid$(List1.List(k), 2)
    Else
    ki$ = List1.List(k)
    prefix$ = ""
    End If
If ki$ = Thenick$ Then
    FindClient = k
    Exit For
    End If
Next
End Function

Public Sub AddItem(a$)
list2.SelStart = Len(list2)
list2.SelColor = CC
list2.SelText = a$ + Chr$(10)
list2.SelStart = Len(list2)
End Sub

Public Sub Colour(c As ColorConstants)
CC = c
End Sub
