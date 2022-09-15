VERSION 5.00
Begin VB.Form Beranda 
   BackColor       =   &H00FFFF80&
   Caption         =   "Aplikasi Sistem Digital Kalkulator BCD Decorder"
   ClientHeight    =   6255
   ClientLeft      =   225
   ClientTop       =   570
   ClientWidth     =   5820
   Icon            =   "Beranda.frx":0000
   LinkTopic       =   "Beranda"
   Picture         =   "Beranda.frx":32D82
   ScaleHeight     =   6255
   ScaleWidth      =   5820
   StartUpPosition =   1  'CenterOwner
   Begin VB.Label Label4 
      Alignment       =   1  'Right Justify
      BackColor       =   &H00FFFFFF&
      BackStyle       =   0  'Transparent
      Caption         =   "APLIKASI KALKULATOR BCD DECORDER VISUAL BASIC 6 "
      BeginProperty Font 
         Name            =   "Anagram NF"
         Size            =   26.25
         Charset         =   0
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   2655
      Left            =   1560
      TabIndex        =   0
      Top             =   480
      Width           =   3975
   End
   Begin VB.Menu fl 
      Caption         =   "File"
      Index           =   0
      Begin VB.Menu BCD 
         Caption         =   "Kalkulator BCD Decorder"
         Index           =   0
      End
      Begin VB.Menu KLR 
         Caption         =   "Keluar"
         Index           =   0
      End
   End
End
Attribute VB_Name = "Beranda"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Sub BCD_Click(Index As Integer)
    KalkulatorBCD.Show
    Beranda.Hide
End Sub

Private Sub KLR_Click(Index As Integer)
    Unload Me
    End
End Sub
