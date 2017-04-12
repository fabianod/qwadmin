Attribute VB_Name = "QWA_Init"
Public rcons$(20)
Public WSOCK(10) As String
Public ProxyData$
Public TrialKey As Boolean
Public QWSVPass$
Public ExpireDate As Date
Public Const AppName = "QWAdmin"
Public QWAInitialized As Boolean
Public SBInbuff$(15)
Type serversetting
    ip As String
    port As Long
    pass As String
    rcon As String
    qwsv As String
    End Type

Public Type userid
    fraghist(100) As Long
    pinghist(100) As Long
    classhist(100) As Long
    minutehist(100) As Long
    drophist(100) As Single
    maxfrags As Long
    maxping As Long
    maxdrop As Single
    lasthist As Long
    name As String
    uid As Long
    lastfrags As Long
    lastsetuser As Double
    frags As Long
    rate As Long
    ping As Long
    drop As Single
    ip As String
    emodel As Long
    pmodel As Long
    proxychecked As Boolean
    setinfo(40) As String
    tfid As Long
    team As String
    skin As String
    tfclass As Integer
    bottomcolor As Integer
    topcolor As Integer
    mins As Integer
    spectator As Boolean
    RealName As String
    avgping As Single
    numpings As Long
    End Type
Type StatusCLient
    uid As Long
    name As String * 16
    ping As Long
    rate As Long
    frags As Long
    spectator As Boolean
    drop As Single
    ip As String
    End Type
Type banusers
    ip As String
    desc As String
    LEVEL As Integer
    nick As String
    date As String
    End Type
Public LastRCONSent As Double
Public NumBans
Public player(40) As userid
Public NumClients As Integer
Public Servstatus$
Public ServInfo$
Public NeedToRestart
Public DeveloperMode, NumLocals
Public serverlocalinfo(80) As String
Public ChangedSetting(40) As Boolean
Public ConsoleLastCommand(40) As String
Public ClassLim(10) As Long
Public StatusPlayers(64) As StatusCLient
Public PRO As Boolean, RegistredTO$, RegisterKEY$, RegisterCODE$
Public EmptyClient As userid
Public MainRegistryPath$
Public serverinfo$(100)
Public serverinfovalue$(100)
Public NumInfo As Integer
Public ServerOnline As Boolean
Public Serv(100) As serversetting
Public NumStatLines, SS$(), numstatplayers
Public badboys(500) As banusers
Public GraphLine(10) As Boolean
Public ServerBrowserVisible As Boolean
Public BufferLog$
Public Quake2 As Boolean
Public Si(100, 2) As String, numberofsi As Integer

    

Public Function GetFontVar(ByRef ID As String, ByRef FontName As String, ByRef Size As Integer, ByRef bold As Boolean, ByRef italic As Boolean, ByRef Underline As Boolean)
k = GetSetting("QWAdmin", "Fonts", ID, "Verdana,10,0,0,0")
Do
t = InStr(k, ",")
If t <= 0 Then Exit Do
p = p + 1
a$ = Left$(k, t - 1)
k = Mid$(k, t + 1)
Select Case p
    Case 1
        FontName = a$
    Case 2
        Size = Val(a$)
    Case 3
        bold = (Val(a$) = 1)
    Case 4
        italic = (Val(a$) = 1)
    Case 5
        Underline = (Val(a$) = 1)
        Exit Do
    End Select
Loop

End Function

Public Sub SaveFontVar(ByRef ID As String, ByRef FontName As String, ByRef Size As Integer, ByRef bold As Boolean, ByRef italic As Boolean, ByRef Underline As Boolean)
If bold Then b = 1 Else b = 0
If italic Then i = 1 Else i = 0
If Underline Then U = 1 Else U = 0
k = FontName & "," & Size & "," & b & "," & i & "," & U
SaveSetting "QWAdmin", "Fonts", ID, k
End Sub

Public Sub GFS(ID, Obj As Object)
On Error Resume Next
k = GetSetting("QWAdmin", "Fonts", ID, "")
Dim Siz As Integer, bo As Boolean, it As Boolean, un As Boolean
Dim z1 As String, z2 As Integer, z3 As Boolean, z4 As Boolean, z5 As Boolean

a$ = ID
If k = "" Then
    z1 = Obj.FontName
    If z1 = "" Then z1 = Obj.Font
    If z1 = "" Then z1 = Obj.Font.name
    If z1 = "" Then z1 = Obj.SelFontName
    
    z2 = Obj.FontSize
    If z2 = "" Then z2 = Obj.Font.Size
    If z2 = "" Then z2 = Obj.SelFontSize
    
    z3 = Obj.FontBold
    If IsEmpty(z3) Then z3 = Obj.Font.bold
    
    z4 = Obj.FontItalic
    If IsEmpty(z4) Then z4 = Obj.Font.italic
    If IsEmpty(z4) Then z4 = Obj.FontItalic
    
    z5 = Obj.FontUnderline
    If IsEmpty(z5) Then z4 = Obj.Font.Underline
    If IsEmpty(z5) Then z4 = Obj.FontUnderline
    
    SaveFontVar a$, z1, z2, z3, z4, z5
    End If

GetFontVar a$, F$, Siz, bo, it, un

'Obj.Font.name = F$
'Obj.Font.bold = bo
'Obj.Font.Size = Siz
'Obj.Font.italic = it
'Obj.Font.Underline = un

Obj.SelText.FontName = F$
Obj.SelText.FontBold = bo
Obj.SelText.FontSize = Siz
Obj.SelText.FontItalic = it
Obj.SelText.FontUnderline = un

Obj.SelFontName = F$
Obj.SelBold = bo
Obj.SelFontSize = Siz
Obj.SelItalic = it
Obj.SelUnderline = un

Obj.FontName = F$
Obj.FontSize = Siz
Obj.FontBold = bo
Obj.FontItalic = it
Obj.FontUnderline = un

End Sub

Public Sub logfile(text$)
a = FreeFile
LF = Val(GetSetting("QWAdmin", "Settings", "Log to file", 1))
If LF = 1 Then
    F$ = GetSetting("QWAdmin", "Settings", "File log", "QWA.log")
    Open F$ For Append As #a
    Print #a, "[" & date$ & " - " & Time$ & "]: " & text
    Close #a
    End If
End Sub
