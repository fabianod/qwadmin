VERSION 5.00
Object = "{248DD890-BB45-11CF-9ABC-0080C7E7B78D}#1.0#0"; "MSWINSCK.OCX"
Object = "{3B7C8863-D78F-101B-B9B5-04021C009402}#1.2#0"; "RICHTX32.OCX"
Begin VB.Form ServerChat 
   Caption         =   "Server Chat"
   ClientHeight    =   4650
   ClientLeft      =   1785
   ClientTop       =   1590
   ClientWidth     =   5745
   Icon            =   "ServerChat.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   4650
   ScaleWidth      =   5745
   Begin VB.Timer Timer1 
      Interval        =   5000
      Left            =   1200
      Top             =   3720
   End
   Begin VB.ListBox userlist 
      Height          =   3765
      Left            =   3960
      TabIndex        =   2
      Top             =   360
      Width           =   1695
   End
   Begin RichTextLib.RichTextBox chat 
      Height          =   2535
      Left            =   0
      TabIndex        =   1
      Top             =   0
      Width           =   5295
      _ExtentX        =   9340
      _ExtentY        =   4471
      _Version        =   393217
      Enabled         =   0   'False
      ScrollBars      =   2
      TextRTF         =   $"ServerChat.frx":08CA
      BeginProperty Font {0BE35203-8F91-11CE-9DE3-00AA004BB851} 
         Name            =   "Verdana"
         Size            =   9.75
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   120
      TabIndex        =   0
      Top             =   3000
      Width           =   4935
   End
   Begin MSWinsockLib.Winsock Winsock1 
      Left            =   5040
      Top             =   480
      _ExtentX        =   741
      _ExtentY        =   741
      _Version        =   393216
   End
End
Attribute VB_Name = "ServerChat"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public connected, inbuf$, password$

Public Sub Form_Load()
On Error Resume Next
'Winsock1.Connect Main.serverip.text, Val(Main.serverport.text)
Me.Caption = "Server chat [" + Main.serverip.text + ":" + Main.serverport.text + "]"
password$ = Main.rcon.text
Form_Resize
GFS "Chat window players text", chat
GFS "Chat window your text", Text1
chat.SelStart = Len(chat.text)
chat.SelColor = RGB(0, 0, 255)
chat.SelBold = True
chat.SelText = "Now talking in " & Main.serverip.text & ":" & Main.serverport.text & Chr$(10)
chat.SelStart = Len(chat.text)
chat.SelBold = False
chat.SelColor = RGB(0, 0, 0)
End Sub

Public Sub Form_Resize()
On Error Resume Next
TTT = 285
tp = Me.ScaleHeight - TTT
xmax = Me.ScaleWidth
If tp < 1 Then tp = 1
If xmax > 0 And tp > 0 Then
    chat.Move 0, 0, xmax - userlist.Width, tp - 50
    userlist.Move xmax - userlist.Width, 0, userlist.Width, tp - 50
    Text1.Move 0, tp, xmax, tp + TTT
    End If
End Sub

Public Sub Text1_KeyPress(KeyAscii As Integer)
On Error Resume Next
QWA$ = "QWAdmin"
regto$ = GetSetting("QWAdmin", "Settings", "Server Name", QWA$)
If RegistredTO$ > "" Then regto$ = RegistredTO$
If Text1 = "" Then Exit Sub
Select Case KeyAscii
    Case 13
        p$ = Text1.text
        chat.SelStart = Len(chat)
        chat.SelText = "<" & regto$ + "> " + Text1.text + Chr$(10)
        chat.SelStart = Len(chat)
        Text1.text = ""
        Main.ServerMessage p$
    End Select
End Sub

Private Sub Timer1_Timer()

For o = 1 To Main.playerlist.Rows - 1
found = False
na = Main.playerlist.TextMatrix(o, 2)
For n = 0 To Me.userlist.ListCount
If userlist.List(n) = na Then found = True: Exit For
Next
If found = False Then
    RefreshUserList
    Exit Sub
    End If
Next

For n = 0 To Me.userlist.ListCount
found = False
For j = 1 To Main.playerlist.Rows - 1
If Me.userlist.List(n) = Main.playerlist.TextMatrix(j, 2) Then found = True
Next
If found = False Then
    RefreshUserList
    Exit Sub
    End If
Next

    
End Sub

Public Sub Winsock1_Connect()
On Error Resume Next
chat.SelStart = Len(chat)
chat.SelText = "Connected ... Logging in" + Chr$(10)
chat.SelStart = Len(chat)
Do
DoEvents
Loop Until InStr(inbuf$, "assword")
inbuf$ = ""
Winsock1.SendData password$ + Chr$(13) + Chr$(10)
chat.SelStart = Len(chat)
chat.SelText = "Sending password..." + Chr$(10)
chat.SelStart = Len(chat)

t = Timer
Do
DoEvents
If InStr(inbuf$, "not authorized") Then
    chat.SelStart = Len(chat)
    chat.SelText = "You are not authorized (password invalid)" + Chr$(10)
    chat.SelStart = Len(chat)
    Winsock1.Close
    Exit Sub
    End If
If InStr(inbuf$, "Welcome.") Or InStr(inbuf$, "You are authorized") Then
    connected = True
    Exit Do
    End If
Loop Until (Timer - t > 2)
inbuf$ = ""
End Sub

Public Sub Winsock1_DataArrival(ByVal bytesTotal As Long)
On Error Resume Next
Winsock1.GetData a$
inbuf$ = inbuf$ + a$
If connected = True Then
    Do
    k = InStr(inbuf$, Chr$(10))
    If k = 0 Then Exit Do
    handledata Left$(inbuf$, k - 1)
    inbuf$ = Mid$(inbuf$, k + 1)
    Loop
    End If
End Sub

Public Sub handledata(a$)
On Error Resume Next
If Left$(LCase$(a$), 4) = "rcon" Then Exit Sub
chat.SelStart = Len(chat)
chat.SelText = a$ + Chr$(10)
chat.SelStart = Len(chat)
End Sub

Public Sub Process(txt$)
If Left$(LCase$(txt$), 5) = "rcon " Then Exit Sub

Dim c$(10)
c$(1) = "Added packfile ./"
c$(2) = "FindFile: "
c$(3) = "PackFile: "
c$(4) = "Building PHS..."
c$(5) = "execing "
c$(6) = "Average leafs visible / hearable / total:"
c$(7) = "Packfile: ./"
c$(8) = "Updated needpass."

chat.SelStart = Len(chat.text)
chat.SelColor = RGB(0, 0, 0)
For o = 1 To 8
If Left$(txt$, Len(c$(o))) = c$(o) Then
    Select Case o
        Case 1, 2, 3, 4, 7
            chat.SelColor = RGB(0, 0, 128)
        Case Else
            chat.SelColor = RGB(0, 128, 0)
        End Select
    Exit For
    End If
Next
' ChangeServerTXT a$
txt$ = Main.subst$(txt$, "[05]", "·")
txt$ = Main.subst$(txt$, "[10]", "[")
txt$ = Main.subst$(txt$, "[11]", "]")
txt$ = Main.subst$(txt$, "[12]", "0")
txt$ = Main.subst$(txt$, "[13]", "1")
txt$ = Main.subst$(txt$, "[14]", "2")
txt$ = Main.subst$(txt$, "[15]", "3")
txt$ = Main.subst$(txt$, "[16]", "4")
txt$ = Main.subst$(txt$, "[17]", "5")
txt$ = Main.subst$(txt$, "[18]", "6")
txt$ = Main.subst$(txt$, "[19]", "7")
txt$ = Main.subst$(txt$, "[1a]", "8")
txt$ = Main.subst$(txt$, "[1b]", "9")

txt$ = Main.subst$(txt$, "[1d]", "<")
txt$ = Main.subst$(txt$, "[1e]", "=")
txt$ = Main.subst$(txt$, "[1f]", ">")
k = InStr(txt$, ":")
If k > 0 Then
    txt$ = "<" & Left$(txt$, k - 1) + ">" + Mid$(txt$, k + 1)
    End If
chat.SelText = txt$ + Chr$(10)
chat.SelBold = True
chat.SelColor = RGB(0, 0, 0)
chat.SelStart = Len(chat.text)
tmp = Val(GetSetting("QWAdmin", "Settings", "Log messages", "1"))
If tmp = 1 Then logfile txt$
chat.SelBold = False
chat.SelColor = RGB(0, 30, 30)

End Sub

Public Sub RefreshUserList()
    Me.userlist.Clear
    For k = 1 To Main.playerlist.Rows - 1
    na = Main.playerlist.TextMatrix(k, 2)
    Me.userlist.AddItem na
    Next

End Sub
