VERSION 5.00
Begin VB.Form ConnectingWindow 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   930
   ClientLeft      =   3255
   ClientTop       =   3900
   ClientWidth     =   5280
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   FillColor       =   &H00C0C0C0&
   Icon            =   "ConnectingWindow.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form1"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   Moveable        =   0   'False
   ScaleHeight     =   930
   ScaleWidth      =   5280
   ShowInTaskbar   =   0   'False
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      Height          =   855
      Left            =   120
      TabIndex        =   0
      Top             =   0
      Width           =   5055
      Begin VB.Image Image1 
         Height          =   480
         Left            =   120
         Picture         =   "ConnectingWindow.frx":0442
         Top             =   240
         Width           =   480
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         Caption         =   "Label1"
         BeginProperty Font 
            Name            =   "MS Sans Serif"
            Size            =   8.25
            Charset         =   0
            Weight          =   700
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   255
         Left            =   720
         TabIndex        =   1
         Top             =   360
         Width           =   4215
      End
   End
End
Attribute VB_Name = "ConnectingWindow"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub Form_Load()
GFS "Connecting text", Label

End Sub
