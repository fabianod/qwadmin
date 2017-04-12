VERSION 5.00
Object = "{6B7E6392-850A-101B-AFC0-4210102A8DA7}#1.3#0"; "COMCTL32.OCX"
Begin VB.Form progress 
   BorderStyle     =   3  'Fixed Dialog
   ClientHeight    =   1305
   ClientLeft      =   1815
   ClientTop       =   3540
   ClientWidth     =   7095
   ClipControls    =   0   'False
   ControlBox      =   0   'False
   Icon            =   "progress.frx":0000
   KeyPreview      =   -1  'True
   LinkTopic       =   "Form2"
   MaxButton       =   0   'False
   MinButton       =   0   'False
   ScaleHeight     =   1305
   ScaleWidth      =   7095
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'CenterScreen
   Visible         =   0   'False
   Begin VB.Frame Frame1 
      Height          =   1215
      Left            =   0
      TabIndex        =   0
      Top             =   0
      Width           =   7095
      Begin ComctlLib.ProgressBar perc 
         Height          =   375
         Left            =   360
         TabIndex        =   1
         Top             =   480
         Width           =   6375
         _ExtentX        =   11245
         _ExtentY        =   661
         _Version        =   327682
         BorderStyle     =   1
         Appearance      =   1
      End
      Begin VB.Label Label2 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Height          =   255
         Left            =   0
         TabIndex        =   3
         Top             =   840
         Width           =   7095
      End
      Begin VB.Label Label 
         Alignment       =   2  'Center
         BackStyle       =   0  'Transparent
         Caption         =   "Progress"
         Height          =   255
         Left            =   360
         TabIndex        =   2
         Top             =   240
         Width           =   6375
      End
   End
End
Attribute VB_Name = "progress"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub Form_Load()
GFS "Progress bar title", Label
GFS "Progress bar text", Label2

End Sub
