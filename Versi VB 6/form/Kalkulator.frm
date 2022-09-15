VERSION 5.00
Begin VB.Form KalkulatorBCD 
   BackColor       =   &H00FFFFC0&
   Caption         =   "Aplikasi Sistem Digital Kalkulator BCD Decorder"
   ClientHeight    =   6255
   ClientLeft      =   225
   ClientTop       =   570
   ClientWidth     =   5820
   Icon            =   "Kalkulator.frx":0000
   LinkTopic       =   "Form1"
   Picture         =   "Kalkulator.frx":32D82
   ScaleHeight     =   6255
   ScaleMode       =   0  'User
   ScaleWidth      =   5820
   StartUpPosition =   1  'CenterOwner
   Begin VB.TextBox Kode 
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   12
      Top             =   5160
      Width           =   3255
   End
   Begin VB.TextBox Hasil 
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      TabIndex        =   11
      Top             =   3840
      Width           =   3375
   End
   Begin VB.CommandButton Hapus 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Hapus"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   10
      Top             =   5160
      Width           =   2055
   End
   Begin VB.CommandButton Hitung 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Hitung"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   9
      Top             =   3840
      Width           =   2055
   End
   Begin VB.CommandButton Kurang 
      Caption         =   "-"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   5040
      TabIndex        =   8
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton Tambah 
      BackColor       =   &H00E0E0E0&
      Caption         =   "+"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   17.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   4320
      Style           =   1  'Graphical
      TabIndex        =   7
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton Bagi 
      BackColor       =   &H00E0E0E0&
      Caption         =   "/"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   3600
      Style           =   1  'Graphical
      TabIndex        =   6
      Top             =   2520
      Width           =   615
   End
   Begin VB.CommandButton Kali 
      BackColor       =   &H00E0E0E0&
      Caption         =   "X"
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   735
      Left            =   2880
      Style           =   1  'Graphical
      TabIndex        =   5
      Top             =   2520
      Width           =   615
   End
   Begin VB.TextBox Bil2 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2880
      TabIndex        =   4
      Top             =   1800
      Width           =   2775
   End
   Begin VB.TextBox Bil1 
      BeginProperty Font 
         Name            =   "MS Sans Serif"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   525
      Left            =   2880
      TabIndex        =   2
      Top             =   600
      Width           =   2775
   End
   Begin VB.PictureBox Picture1 
      BorderStyle     =   0  'None
      Height          =   3015
      Left            =   120
      Picture         =   "Kalkulator.frx":96738
      ScaleHeight     =   3015
      ScaleWidth      =   2580
      TabIndex        =   0
      Top             =   240
      Width           =   2580
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Hasil Dalam Bentuk Kode :"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Index           =   3
      Left            =   120
      TabIndex        =   14
      Top             =   4800
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Hasil Dalam Bentuk Angka :"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Index           =   2
      Left            =   120
      TabIndex        =   13
      Top             =   3480
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Masukkan Bilangan Kedua :"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Index           =   1
      Left            =   2880
      TabIndex        =   3
      Top             =   1440
      Width           =   2895
   End
   Begin VB.Label Label1 
      BackStyle       =   0  'Transparent
      Caption         =   "Masukkan Bilangan Pertama :"
      BeginProperty Font 
         Name            =   "Segoe Marker"
         Size            =   11.25
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   495
      Index           =   0
      Left            =   2880
      TabIndex        =   1
      Top             =   240
      Width           =   2895
   End
   Begin VB.Menu fl 
      Caption         =   "File"
      Index           =   0
      Begin VB.Menu menu 
         Caption         =   "Menu Utama"
         Index           =   0
      End
      Begin VB.Menu KLR 
         Caption         =   "Keluar"
         Index           =   0
      End
   End
End
Attribute VB_Name = "KalkulatorBCD"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Dim H As Double


'####################### Keluar #######################'
Private Sub KLR_Click(Index As Integer)
    Bil1 = ""
    Bil2 = ""
    Hasil = ""
    Kode = ""
    Unload Me
    End
End Sub

'####################### Beranda #######################'
Private Sub menu_Click(Index As Integer)
    Bil1 = ""
    Bil2 = ""
    Hasil = ""
    Kode = ""
    Beranda.Show
    KalkulatorBCD.Hide
End Sub

'####################### Operasi Kali #######################'
Private Sub Kali_Click()
    H = Val(Bil1) * Val(Bil2)
End Sub

'####################### Operasi Kali #######################'
Private Sub Bagi_Click()
    H = Val(Bil1) / Val(Bil2)
End Sub

'####################### Operasi Kali #######################'
Private Sub Tambah_Click()
    H = Val(Bil1) + Val(Bil2)
End Sub

'####################### Operasi Kali #######################'
Private Sub Kurang_Click()
    H = Val(Bil1) - Val(Bil2)
End Sub

'####################### Hasil #######################'
Private Sub Hitung_Click()
    Select Case Val(H)
        Case Is = 0
            Hasil.Text = Val(H)
            Kode.Text = "[abcdef]"
        Case Is = 1
            Hasil.Text = Val(H)
            Kode.Text = "[bc]"
        Case Is = 2
            Hasil.Text = Val(H)
            Kode.Text = "[abged]"
        Case Is = 3
            Hasil.Text = Val(H)
            Kode.Text = "[abgcd]"
        Case Is = 4
            Hasil.Text = Val(H)
            Kode.Text = "[fbgc]"
        Case Is = 5
            Hasil.Text = Val(H)
            Kode.Text = "[afgcd]"
        Case Is = 6
            Hasil.Text = Val(H)
            Kode.Text = "[fgcde]"
        Case Is = 7
            Hasil.Text = Val(H)
            Kode.Text = "[abc]"
        Case Is = 8
            Hasil.Text = Val(H)
            Kode.Text = "[abcdefg]"
        Case Is = 9
            Hasil.Text = Val(H)
            Kode.Text = "[abcdfg]"
        Case Else
            Hasil.Text = "[Not-Available]"
            Kode.Text = "[Not-Available]"
    End Select
    Bil1.SetFocus
End Sub

'####################### Hapus #######################'
Private Sub Hapus_Click()
    Bil1 = ""
    Bil2 = ""
    Hasil = ""
    Kode = ""
    Bil1.SetFocus
End Sub


