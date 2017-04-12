VERSION 5.00
Object = "{FE0065C0-1B7B-11CF-9D53-00AA003C9CB6}#1.0#0"; "COMCT232.OCX"
Begin VB.Form MapRotation 
   Caption         =   "Map rotation"
   ClientHeight    =   3630
   ClientLeft      =   1800
   ClientTop       =   1950
   ClientWidth     =   3585
   Icon            =   "MapRotation.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   3630
   ScaleWidth      =   3585
   Begin ComCtl2.UpDown UpDown1 
      Height          =   285
      Left            =   2296
      TabIndex        =   12
      Top             =   2640
      Width           =   240
      _ExtentX        =   423
      _ExtentY        =   503
      _Version        =   327681
      BuddyControl    =   "Text1"
      BuddyDispid     =   196619
      OrigLeft        =   2520
      OrigTop         =   2640
      OrigRight       =   2760
      OrigBottom      =   2895
      SyncBuddy       =   -1  'True
      BuddyProperty   =   0
      Enabled         =   -1  'True
   End
   Begin VB.TextBox Text1 
      Height          =   285
      Left            =   1920
      TabIndex        =   10
      Top             =   2640
      Width           =   375
   End
   Begin VB.CommandButton Change 
      Caption         =   "Change"
      Height          =   375
      Left            =   2640
      TabIndex        =   9
      Top             =   1800
      Width           =   855
   End
   Begin VB.CommandButton Remove 
      Caption         =   "Delete"
      Height          =   375
      Left            =   2640
      TabIndex        =   5
      Top             =   1440
      Width           =   855
   End
   Begin VB.ListBox maplist 
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2205
      Left            =   0
      TabIndex        =   2
      Top             =   0
      Width           =   2535
   End
   Begin VB.CommandButton Command2 
      Caption         =   "Cancel"
      Height          =   375
      Left            =   2280
      TabIndex        =   8
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Command1 
      Caption         =   "OK"
      Default         =   -1  'True
      Height          =   375
      Left            =   960
      TabIndex        =   7
      Top             =   3120
      Width           =   1215
   End
   Begin VB.CommandButton Add 
      Caption         =   "Insert"
      Height          =   375
      Left            =   2640
      TabIndex        =   6
      Top             =   1080
      Width           =   855
   End
   Begin VB.CommandButton ChangeDown 
      Appearance      =   0  'Flat
      DownPicture     =   "MapRotation.frx":0442
      Height          =   495
      Left            =   2640
      Picture         =   "MapRotation.frx":0884
      Style           =   1  'Graphical
      TabIndex        =   4
      Top             =   480
      Width           =   855
   End
   Begin VB.CommandButton ChangeUP 
      Appearance      =   0  'Flat
      DownPicture     =   "MapRotation.frx":0CC6
      Height          =   495
      Left            =   2640
      Picture         =   "MapRotation.frx":1108
      Style           =   1  'Graphical
      TabIndex        =   3
      Top             =   0
      Width           =   855
   End
   Begin VB.TextBox Currentmap 
      Alignment       =   2  'Center
      BackColor       =   &H00000000&
      Enabled         =   0   'False
      BeginProperty Font 
         Name            =   "Verdana"
         Size            =   8.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00FFFFFF&
      Height          =   285
      Left            =   1200
      TabIndex        =   1
      Top             =   2280
      Width           =   1335
   End
   Begin VB.Label Label2 
      Alignment       =   1  'Right Justify
      Caption         =   "samelevel variable value:"
      Height          =   255
      Left            =   0
      TabIndex        =   11
      Top             =   2640
      Width           =   1815
   End
   Begin VB.Label Label1 
      Alignment       =   1  'Right Justify
      Caption         =   "Current map:"
      Height          =   255
      Left            =   0
      TabIndex        =   0
      Top             =   2280
      Width           =   1095
   End
End
Attribute VB_Name = "MapRotation"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Add_Click()
k = SelectedItem
If k = -1 Then Exit Sub
GetMaps k - 1, Mapfrom$, Mapto$
GetMaps k, MapFrom2$, Mapto2$
GetMaps k + 1, MapFrom3$, Mapto3$
If MapFrom3$ = "" Then MapFrom3$ = MapFrom2$

If MapFrom2$ > "" And Mapto$ = "" Then
    NewMap$ = InputBox("What map you want to add the the cycle ?", "Add map to rotation cycle", NewMap$)
    maplist.AddItem "", k + 1
    Setmap k, MapFrom2$, NewMap$
    Setmap k + 1, NewMap$, MapFrom3$
    End If

If Mapto$ = MapFrom2$ Then
    NewMap$ = InputBox("What map you want to add the the cycle ?", "Add map to rotation cycle", NewMap$)
        ' OK, the maps are equal so jump from
    ' mapfrom$ to mapto2$
    If NewMap$ > "" Then
        maplist.AddItem "", k
        Setmap k - 1, Mapfrom$, NewMap$
        Setmap k, NewMap$, Mapto$
        maplist.Selected(k - 1) = True
        maplist.refresh
        End If
    End If

If Mapto2$ = "" Then
    dummy = MsgBox("Can't change this item because it is the one that will begin/end map cycle.")
    End If

End Sub

Private Sub Change_Click()
k = SelectedItem
If k = -1 Then Exit Sub
GetMaps k, Mapfrom$, Mapto$
GetMaps k + 1, MapFrom2$, Mapto2$
If Mapto$ = MapFrom2$ Then
    NewMap$ = InputBox("Change the map '" + Mapto$ + "' to map ?", "Change map in rotation cycle", Mapto$)
        ' OK, the maps are equal so jump from
        ' mapfrom$ to mapto2$
    Setmap k, Mapfrom$, NewMap$
    Setmap k + 1, NewMap$, Mapto2$
    maplist.Selected(k) = True
    maplist.refresh
    End If

If Mapto2$ = "" Then
    dummy = MsgBox("Can't change this item because it is the one that will begin/end map cycle.")
    End If

End Sub

Private Sub ChangeDown_Click()
k = SelectedItem
If k = -1 Then Exit Sub
GetMaps k, Mapfrom$, Mapto$
GetMaps k + 1, MapFrom2$, Mapto2$
GetMaps k + 2, MapFrom3$, Mapto3$
If MapFrom2$ = Mapto$ And Mapto2$ = MapFrom3$ Then
    ' OK, the maps are equal so jump from
    ' mapfrom$ to mapto2$
    Setmap k, Mapfrom$, Mapto2$
    Setmap k + 1, Mapto2$, Mapto$
    Setmap k + 2, Mapto$, Mapto3$
    maplist.Selected(k + 1) = True
    maplist.refresh
    End If

If MapFrom2$ = "" Or MapFrom3$ = "" Then
    dummy = MsgBox("Can't delete this item because it is the one that will begin/end map cycle.")
    End If
End Sub

Private Sub ChangeUP_Click()
k = SelectedItem
If k = -1 Then Exit Sub
GetMaps k - 1, MapFrom2$, Mapto2$
GetMaps k, Mapfrom$, Mapto$
GetMaps k + 1, MapFrom3$, Mapto3$
If Mapfrom$ = Mapto2$ And MapFrom3$ = Mapto$ Then
    ' OK, the maps are equal so jump from
    ' mapfrom$ to mapto2$
    Setmap k - 1, MapFrom2$, Mapto$
    Setmap k, Mapto$, Mapto2$
    Setmap k + 1, Mapto2$, Mapto3$
    maplist.Selected(k - 1) = True
    maplist.refresh
    End If

If MapFrom2$ = "" Or MapFrom3$ = "" Then
    dummy = MsgBox("Can't delete this item because it is the one that will begin/end map cycle.")
    End If
End Sub

Private Sub Command1_Click()
Dim prog As New progress
prog.Label = "Updating map rotation to the server..."
prog.perc = 0
prog.Visible = True
prog.refresh
t = maplist.ListCount - 1
If t > 0 Then
    For o = 0 To t
    GetMaps o, a$, b$
    prog.perc = Int((o / t) * 100)
    Main.servRconAns$ ("localinfo " + a$ + " " + b$)
    Next
    End If
Main.servRconAns$ "samelevel " + Text1.text
If MsgBox("Do you wish to restart current map ?", vbYesNo) = vbYes Then Main.RestartMap

Unload prog
Unload Me

End Sub

Private Sub Command2_Click()
Unload Me

End Sub

Private Sub Form_Load()
Refreshit
GFS "Map rotation list", maplist
GFS "Current map in rotation list", Currentmap

End Sub

Public Sub Refreshit()
Text1.text = Main.findinserver$("samelevel")
UpDown1.Value = Val(Text1.text)

Currentmap.text = Main.map.text
Currentmap.text = Main.subst$(Currentmap.text, ".bsp", "")

Main.RefreshLocal

f$ = Currentmap.text
Do
NextMap$ = Main.localvalue$(f$, "")
If NextMap$ = "" Then
    NextMap$ = Currentmap.text
    Setmap k, f$, "..."
    Exit Do
    End If
If NextMap$ > "" Then
    Setmap k, f$, NextMap$
    k = k + 1
    f$ = NextMap$
    If f$ = Currentmap.text Then Exit Do
    End If
Loop
End Sub

Private Sub Remove_Click()
k = SelectedItem
If k = -1 Then Exit Sub
GetMaps k, Mapfrom$, Mapto$
GetMaps k + 1, MapFrom2$, Mapto2$
If MapFrom2$ = Mapto$ Then
    ' OK, the maps are equal so jump from
    ' mapfrom$ to mapto2$
    Setmap k, Mapfrom$, Mapto2$
    maplist.RemoveItem k + 1
    End If

If MapFrom2$ = "" Then
    dummy = MsgBox("Can't delete this item because it is the one that will loop the map cycle.")
    End If

End Sub

Public Function SelectedItem()
SelectedItem = -1
For o = 0 To maplist.ListCount - 1
If maplist.Selected(o) = True Then SelectedItem = o: Exit For
Next
End Function

Public Sub GetMaps(ListIndex, Mapfrom$, Mapto$)
j$ = maplist.List(ListIndex)
j$ = Main.subst(j$, "*", "")
j$ = Main.subst(j$, "->", ",")
j$ = Main.subst(j$, " ", "")
j$ = Main.subst(j$, ")", "")
j$ = Main.subst(j$, "(", "")

k = InStr(j$, ",")
If k = 0 Then Exit Sub
Mapfrom$ = Left$(j$, k - 1)
Mapto$ = Mid$(j$, k + 1)
End Sub

Public Sub Setmap(ListIndex, Mapfrom$, Mapto$)
maplist.List(ListIndex) = "(" + Mapfrom$ + ") -> ( * " + Mapto$ + " * )"
End Sub
