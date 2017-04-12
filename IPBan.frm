VERSION 5.00
Begin VB.Form IPBan 
   BorderStyle     =   1  'Fixed Single
   Caption         =   "IP Ban Options"
   ClientHeight    =   3195
   ClientLeft      =   1785
   ClientTop       =   2130
   ClientWidth     =   4620
   Icon            =   "IPBan.frx":0000
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   ScaleHeight     =   3195
   ScaleWidth      =   4620
   Begin VB.CommandButton Command7 
      Caption         =   "Close"
      Default         =   -1  'True
      Height          =   375
      Left            =   2880
      TabIndex        =   7
      Top             =   2760
      Width           =   1575
   End
   Begin VB.CommandButton Command5 
      Caption         =   "Ban x.*.*.*"
      Height          =   375
      Left            =   2880
      TabIndex        =   6
      Top             =   2160
      Width           =   1575
   End
   Begin VB.CommandButton Command4 
      Caption         =   "Ban x.x.*.*"
      Height          =   375
      Left            =   2880
      TabIndex        =   5
      Top             =   1680
      Width           =   1575
   End
   Begin VB.CommandButton Command3 
      Caption         =   "Ban x.x.x.*"
      Height          =   375
      Left            =   2880
      TabIndex        =   4
      Top             =   1200
      Width           =   1575
   End
   Begin VB.CommandButton Command2 
      Caption         =   "<< Add to ban list"
      Height          =   375
      Left            =   2880
      TabIndex        =   3
      Top             =   0
      Width           =   1695
   End
   Begin VB.TextBox ip 
      Height          =   285
      Left            =   2880
      TabIndex        =   2
      Top             =   360
      Width           =   1695
   End
   Begin VB.CommandButton Command1 
      Caption         =   "Remove from list"
      Height          =   375
      Left            =   2880
      TabIndex        =   1
      Top             =   720
      Width           =   1575
   End
   Begin VB.ListBox iplist 
      Height          =   3180
      Left            =   0
      MultiSelect     =   2  'Extended
      Sorted          =   -1  'True
      TabIndex        =   0
      Top             =   0
      Width           =   2775
   End
End
Attribute VB_Name = "IPBan"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Public Sub RefreshList()
a$ = Main.servRconAns$("listip")
k = InStr(a$, Chr$(10))
If k Then a$ = Mid$(a$, k + 1)
iplist.Clear

Do
If Left$(a$, 1) = Chr$(0) Then Exit Do

k = InStr(a$, Chr$(10))
If k = 0 Then Exit Do
i$ = Left$(a$, k - 1)
a$ = Mid$(a$, k + 1)
iplist.AddItem i$
Loop
End Sub

Private Sub Command1_Click()
TTT = False
k = iplist.ListCount
If iplist.ListCount = 0 Then Exit Sub
For o = 0 To iplist.ListIndex
k = iplist.Selected(o)
If k = True Then
    dummy = Main.servRconAns$("removeip " + Main.subst$(iplist.List(o), " ", ""))
    TTT = True
    End If
    
Next

If TTT Then RefreshList

End Sub

Private Sub Command2_Click()
If ip.text > "" Then
    dummy = Main.servRconAns$("addip " + ip.text)
    RefreshList
    End If
End Sub

Private Sub Command3_Click()
TTT = False
If iplist.ListCount = 0 Then Exit Sub
For o = 0 To iplist.ListIndex
k = iplist.Selected(o)
If k = True Then
    kt = Val(Right$(iplist.List(o), 3))
    If kt = 0 Then
        dummy = MsgBox("That ip is already banned.")
        Else
        nip$ = Left$(iplist.List(o), 12) + "0"
        nip$ = Main.subst$(nip$, " ", "")
        dummy = Main.servRconAns$("addip " + nip$)
        TTT = True
        End If
    End If
Next

If TTT Then RefreshList

End Sub

Private Sub Command4_Click()
TTT = False
If iplist.ListCount = 0 Then Exit Sub
For o = 0 To iplist.ListIndex
k = iplist.Selected(o)
If k = True Then
    kt = Val(Right$(iplist.List(o), 3))
    kt2 = Val(Left$(Right$(iplist.List(o), 7), 3))
    If kt = 0 And kt2 = 0 Then
        dummy = MsgBox("That ip is already banned.")
        Else
        nip$ = Left$(iplist.List(o), 9) + "0.0"
        nip$ = Main.subst$(nip$, " ", "")
        dummy = Main.servRconAns$("addip " + nip$)
        TTT = True
        End If
    End If
Next

If TTT Then RefreshList
End Sub

Private Sub Command5_Click()
TTT = False
If iplist.ListCount = 0 Then Exit Sub
For o = 0 To iplist.ListIndex
k = iplist.Selected(o)
If k = True Then
    kt = Val(Right$(iplist.List(o), 3))
    kt2 = Val(Left$(Right$(iplist.List(o), 7), 3))
    kt3 = Val(Left$(Right$(iplist.List(o), 11), 3))
    If kt = 0 And kt2 = 0 Then
        dummy = MsgBox("That ip is already banned.")
        Else
        nip$ = Left$(iplist.List(o), 4) + "0.0.0"
        nip$ = Main.subst$(nip$, " ", "")
        dummy = Main.servRconAns$("addip " + nip$)
        TTT = True
        End If
    End If
Next

If TTT Then RefreshList

End Sub

Private Sub Command6_Click()

End Sub

Private Sub Command7_Click()
Unload Me
Me.Visible = False

End Sub

Private Sub Form_Load()
GFS "Ip listing", iplist
End Sub
