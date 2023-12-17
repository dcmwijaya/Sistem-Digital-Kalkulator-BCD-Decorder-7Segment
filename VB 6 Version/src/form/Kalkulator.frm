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
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      MaxLength       =   10000
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   12
      Top             =   5160
      Width           =   3375
   End
   Begin VB.TextBox Hasil 
      BeginProperty Font 
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   855
      Left            =   120
      MultiLine       =   -1  'True
      ScrollBars      =   2  'Vertical
      TabIndex        =   11
      Top             =   3840
      Width           =   3375
   End
   Begin VB.CommandButton Hapus 
      BackColor       =   &H00E0E0E0&
      Caption         =   "Hapus"
      BeginProperty Font 
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
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
         Name            =   "Arial"
         Size            =   9.75
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
         Name            =   "Arial"
         Size            =   9.75
         Charset         =   0
         Weight          =   700
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      ForeColor       =   &H00800000&
      Height          =   375
      Index           =   0
      Left            =   2880
      TabIndex        =   1
      Top             =   240
      Width           =   4215
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
Dim H As Integer

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
    Hasil.Text = Val(H)
   
    Select Case H
    
        Case Is = 0
            Kode.Text = "[abcdef]"
            
        Case Is = 1
            Kode.Text = "[bc]"
            
        Case Is = 2
            Kode.Text = "[abged]"
            
        Case Is = 3
            Kode.Text = "[abgcd]"
            
        Case Is = 4
            Kode.Text = "[fbgc]"
            
        Case Is = 5
            Kode.Text = "[afgcd]"
            
        Case Is = 6
            Kode.Text = "[fgcde]"
            
        Case Is = 7
            Kode.Text = "[abc]"
            
        Case Is = 8
            Kode.Text = "[abcdefg]"
            
        Case Is = 9
            Kode.Text = "[abcdfg]"
            
        Case Is = 10
            Kode.Text = "[bc] [abcdef]"
            
        Case Is = 11
            Kode.Text = "[bc] [bc]"
            
        Case Is = 12
            Kode.Text = "[bc] [abged]"
            
        Case Is = 13
            Kode.Text = "[bc] [abgcd]"
            
        Case Is = 14
            Kode.Text = "[bc] [fbgc]"
            
        Case Is = 15
            Kode.Text = "[bc] [afgcd]"
            
        Case Is = 16
            Kode.Text = "[bc] [fgcde]"
            
        Case Is = 17
            Kode.Text = "[bc] [abc]"
            
        Case Is = 18
            Kode.Text = "[bc] [abcdefg]"
            
        Case Is = 19
            Kode.Text = "[bc] [abcdfg]"
            
        Case Is = 20
            Kode.Text = "[abged] [abcdef]"
            
        Case Is = 21
            Kode.Text = "[abged] [bc]"
            
        Case Is = 22
            Kode.Text = "[abged] [abged]"
            
        Case Is = 23
            Kode.Text = "[abged] [abgcd]"
            
        Case Is = 24
            Kode.Text = "[abged] [fbgc]"
            
        Case Is = 25
            Kode.Text = "[abged] [afgcd]"
            
        Case Is = 26
            Kode.Text = "[abged] [fgcde]"
            
        Case Is = 27
            Kode.Text = "[abged] [abc]"
            
        Case Is = 28
            Kode.Text = "[abged] [abcdefg]"
            
        Case Is = 29
            Kode.Text = "[abged] [abcdfg]"
            
        Case Is = 30
            Kode.Text = "[abgcd] [abcdef]"
            
        Case Is = 31
            Kode.Text = "[abgcd] [bc]"
            
        Case Is = 32
            Kode.Text = "[abgcd] [abged]"
            
        Case Is = 33
            Kode.Text = "[abgcd] [abgcd]"
            
        Case Is = 34
            Kode.Text = "[abgcd] [fbgc]"
            
        Case Is = 35
            Kode.Text = "[abgcd] [afgcd]"
            
        Case Is = 36
            Kode.Text = "[abgcd] [fgcde]"
            
        Case Is = 37
            Kode.Text = "[abgcd] [abc]"
            
        Case Is = 38
            Kode.Text = "[abgcd] [abcdefg]"
            
        Case Is = 39
            Kode.Text = "[abgcd] [abcdfg]"
            
        Case Is = 40
            Kode.Text = "[fbgc] [abcdef]"
            
        Case Is = 41
            Kode.Text = "[fbgc] [bc]"
            
        Case Is = 42
            Kode.Text = "[fbgc] [abged]"
            
        Case Is = 43
            Kode.Text = "[fbgc] [abgcd]"
            
        Case Is = 44
            Kode.Text = "[fbgc] [fbgc]"
            
        Case Is = 45
            Kode.Text = "[fbgc] [afgcd]"
            
        Case Is = 46
            Kode.Text = "[fbgc] [fgcde]"
            
        Case Is = 47
            Kode.Text = "[fbgc] [abc]"
            
        Case Is = 48
            Kode.Text = "[fbgc] [abcdefg]"
            
        Case Is = 49
            Kode.Text = "[fbgc] [abcdfg]"
            
        Case Is = 50
            Kode.Text = "[afgcd] [abcdef]"
            
        Case Is = 51
            Kode.Text = "[afgcd] [bc]"
            
        Case Is = 52
            Kode.Text = "[afgcd] [abged]"
            
        Case Is = 53
            Kode.Text = "[afgcd] [abgcd]"
            
        Case Is = 54
            Kode.Text = "[afgcd] [fbgc]"
            
        Case Is = 55
            Kode.Text = "[afgcd] [afgcd]"
            
        Case Is = 56
            Kode.Text = "[afgcd] [fgcde]"
            
        Case Is = 57
            Kode.Text = "[afgcd] [abc]"
            
        Case Is = 58
            Kode.Text = "[afgcd] [abcdefg]"
            
        Case Is = 59
            Kode.Text = "[afgcd] [abcdfg]"
            
        Case Is = 60
            Kode.Text = "[fgcde] [abcdef]"
            
        Case Is = 61
            Kode.Text = "[fgcde] [bc]"
            
        Case Is = 62
            Kode.Text = "[fgcde] [abged]"
            
        Case Is = 63
            Kode.Text = "[fgcde] [abgcd]"
            
        Case Is = 64
            Kode.Text = "[fgcde] [fbgc]"
            
        Case Is = 65
            Kode.Text = "[fgcde] [afgcd]"
            
        Case Is = 66
            Kode.Text = "[fgcde] [fgcde]"
            
        Case Is = 67
            Kode.Text = "[fgcde] [abc]"
            
        Case Is = 68
            Kode.Text = "[fgcde] [abcdefg]"
            
        Case Is = 69
            Kode.Text = "[fgcde] [abcdfg]"
            
        Case Is = 70
            Kode.Text = "[abc] [abcdef]"
            
        Case Is = 71
            Kode.Text = "[abc] [bc]"
            
        Case Is = 72
            Kode.Text = "[abc] [abged]"
            
        Case Is = 73
            Kode.Text = "[abc] [abgcd]"
            
        Case Is = 74
            Kode.Text = "[abc] [fbgc]"
            
        Case Is = 75
            Kode.Text = "[abc] [afgcd]"
            
        Case Is = 76
            Kode.Text = "[abc] [fgcde]"
            
        Case Is = 77
            Kode.Text = "[abc] [abc]"
            
        Case Is = 78
            Kode.Text = "[abc] [abcdefg]"
            
        Case Is = 79
            Kode.Text = "[abc] [abcdfg]"
            
        Case Is = 80
            Kode.Text = "[abcdefg] [abcdef]"
            
        Case Is = 81
            Kode.Text = "[abcdefg] [bc]"
            
        Case Is = 82
            Kode.Text = "[abcdefg] [abged]"
            
        Case Is = 83
            Kode.Text = "[abcdefg] [abgcd]"
            
        Case Is = 84
            Kode.Text = "[abcdefg] [fbgc]"
            
        Case Is = 85
            Kode.Text = "[abcdefg] [afgcd]"
            
        Case Is = 86
            Kode.Text = "[abcdefg] [fgcde]"
            
        Case Is = 87
            Kode.Text = "[abcdefg] [abc]"
            
        Case Is = 88
            Kode.Text = "[abcdefg] [abcdefg]"
            
        Case Is = 89
            Kode.Text = "[abcdefg] [abcdfg]"
            
        Case Is = 90
            Kode.Text = "[abcdfg] [abcdef]"
            
        Case Is = 91
            Kode.Text = "[abcdfg] [bc]"
            
        Case Is = 92
            Kode.Text = "[abcdfg] [abged]"
            
        Case Is = 93
            Kode.Text = "[abcdfg] [abgcd]"
            
        Case Is = 94
            Kode.Text = "[abcdfg] [fbgc]"
            
        Case Is = 95
            Kode.Text = "[abcdfg] [afgcd]"
            
        Case Is = 96
            Kode.Text = "[abcdfg] [fgcde]"
            
        Case Is = 97
            Kode.Text = "[abcdfg] [abc]"
            
        Case Is = 98
            Kode.Text = "[abcdfg] [abcdefg]"
            
        Case Is = 99
            Kode.Text = "[abcdfg] [abcdfg]"
            
        Case Is = 100
            Kode.Text = "[bc] [abcdef] [abcdef]"
            
        Case Is = 101
            Kode.Text = "[bc] [abcdef] [bc]"
            
        Case Is = 102
            Kode.Text = "[bc] [abcdef] [abged]"
            
        Case Is = 103
            Kode.Text = "[bc] [abcdef] [abgcd]"
            
        Case Is = 104
            Kode.Text = "[bc] [abcdef] [fbgc]"
            
        Case Is = 105
            Kode.Text = "[bc] [abcdef] [afgcd]"
            
        Case Is = 106
            Kode.Text = "[bc] [abcdef] [fgcde]"
            
        Case Is = 107
            Kode.Text = "[bc] [abcdef] [abc]"
            
        Case Is = 108
            Kode.Text = "[bc] [abcdef] [abcdefg]"
            
        Case Is = 109
            Kode.Text = "[bc] [abcdef] [abcdfg]"
            
        Case Is = 110
            Kode.Text = "[bc] [bc] [abcdef]"
            
        Case Is = 111
            Kode.Text = "[bc] [bc] [bc]"
            
        Case Is = 112
            Kode.Text = "[bc] [bc] [abged]"
            
        Case Is = 113
            Kode.Text = "[bc] [bc] [abgcd]"
            
        Case Is = 114
            Kode.Text = "[bc] [bc] [fbgc]"
            
        Case Is = 115
            Kode.Text = "[bc] [bc] [afgcd]"
            
        Case Is = 116
            Kode.Text = "[bc] [bc] [fgcde]"
            
        Case Is = 117
            Kode.Text = "[bc] [bc] [abc]"
            
        Case Is = 118
            Kode.Text = "[bc] [bc] [abcdefg]"
            
        Case Is = 119
            Kode.Text = "[bc] [bc] [abcdfg]"
            
        Case Is = 120
            Kode.Text = "[bc] [abged] [abcdef]"
            
        Case Is = 121
            Kode.Text = "[bc] [abged] [bc]"
            
        Case Is = 122
            Kode.Text = "[bc] [abged] [abged]"
            
        Case Is = 123
            Kode.Text = "[bc] [abged] [abgcd]"
            
        Case Is = 124
            Kode.Text = "[bc] [abged] [fbgc]"
            
        Case Is = 125
            Kode.Text = "[bc] [abged] [afgcd]"
            
        Case Is = 126
            Kode.Text = "[bc] [abged] [fgcde]"
            
        Case Is = 127
            Kode.Text = "[bc] [abged] [abc]"
            
        Case Is = 128
            Kode.Text = "[bc] [abged] [abcdefg]"
            
        Case Is = 129
            Kode.Text = "[bc] [abged] [abcdfg]"
            
        Case Is = 130
            Kode.Text = "[bc] [abgcd] [abcdef]"
            
        Case Is = 131
            Kode.Text = "[bc] [abgcd] [bc]"
            
        Case Is = 132
            Kode.Text = "[bc] [abgcd] [abged]"
            
        Case Is = 133
            Kode.Text = "[bc] [abgcd] [abgcd]"
            
        Case Is = 134
            Kode.Text = "[bc] [abgcd] [fbgc]"
            
        Case Is = 135
            Kode.Text = "[bc] [abgcd] [afgcd]"
            
        Case Is = 136
            Kode.Text = "[bc] [abgcd] [fgcde]"
            
        Case Is = 137
            Kode.Text = "[bc] [abgcd] [abc]"
            
        Case Is = 138
            Kode.Text = "[bc] [abgcd] [abcdefg]"
            
        Case Is = 139
            Kode.Text = "[bc] [abgcd] [abcdfg]"
            
        Case Is = 140
            Kode.Text = "[bc] [fbgc] [abcdef]"
            
        Case Is = 141
            Kode.Text = "[bc] [fbgc] [bc]"
            
        Case Is = 142
            Kode.Text = "[bc] [fbgc] [abged]"
            
        Case Is = 143
            Kode.Text = "[bc] [fbgc] [abgcd]"
            
        Case Is = 144
            Kode.Text = "[bc] [fbgc] [fbgc]"
            
        Case Is = 145
            Kode.Text = "[bc] [fbgc] [afgcd]"
            
        Case Is = 146
            Kode.Text = "[bc] [fbgc] [fgcde]"
            
        Case Is = 147
            Kode.Text = "[bc] [fbgc] [abc]"
            
        Case Is = 148
            Kode.Text = "[bc] [fbgc] [abcdefg]"
            
        Case Is = 149
            Kode.Text = "[bc] [fbgc] [abcdfg]"
            
        Case Is = 150
            Kode.Text = "[bc] [afgcd] [abcdef]"
            
        Case Is = 151
            Kode.Text = "[bc] [afgcd] [bc]"
            
        Case Is = 152
            Kode.Text = "[bc] [afgcd] [abged]"
            
        Case Is = 153
            Kode.Text = "[bc] [afgcd] [abgcd]"
            
        Case Is = 154
            Kode.Text = "[bc] [afgcd] [fbgc]"
            
        Case Is = 155
            Kode.Text = "[bc] [afgcd] [afgcd]"
            
        Case Is = 156
            Kode.Text = "[bc] [afgcd] [fgcde]"
            
        Case Is = 157
            Kode.Text = "[bc] [afgcd] [abc]"
            
        Case Is = 158
            Kode.Text = "[bc] [afgcd] [abcdefg]"
            
        Case Is = 159
            Kode.Text = "[bc] [afgcd] [abcdfg]"
            
        Case Is = 160
            Kode.Text = "[bc] [fgcde] [abcdef]"
            
        Case Is = 161
            Kode.Text = "[bc] [fgcde] [bc]"
            
        Case Is = 162
            Kode.Text = "[bc] [fgcde] [abged]"
            
        Case Is = 163
            Kode.Text = "[bc] [fgcde] [abgcd]"
            
        Case Is = 164
            Kode.Text = "[bc] [fgcde] [fbgc]"
            
        Case Is = 165
            Kode.Text = "[bc] [fgcde] [afgcd]"
            
        Case Is = 166
            Kode.Text = "[bc] [fgcde] [fgcde]"
            
        Case Is = 167
            Kode.Text = "[bc] [fgcde] [abc]"
            
        Case Is = 168
            Kode.Text = "[bc] [fgcde] [abcdefg]"
            
        Case Is = 169
            Kode.Text = "[bc] [fgcde] [abcdfg]"
            
        Case Is = 170
            Kode.Text = "[bc] [abc] [abcdef]"
            
        Case Is = 171
            Kode.Text = "[bc] [abc] [bc]"
            
        Case Is = 172
            Kode.Text = "[bc] [abc] [abged]"
            
        Case Is = 173
            Kode.Text = "[bc] [abc] [abgcd]"
            
        Case Is = 174
            Kode.Text = "[bc] [abc] [fbgc]"
            
        Case Is = 175
            Kode.Text = "[bc] [abc] [afgcd]"
            
        Case Is = 176
            Kode.Text = "[bc] [abc] [fgcde]"
            
        Case Is = 177
            Kode.Text = "[bc] [abc] [abc]"
            
        Case Is = 178
            Kode.Text = "[bc] [abc] [abcdefg]"
            
        Case Is = 179
            Kode.Text = "[bc] [abc] [abcdfg]"
            
        Case Is = 180
            Kode.Text = "[bc] [abcdefg] [abcdef]"
            
        Case Is = 181
            Kode.Text = "[bc] [abcdefg] [bc]"
            
        Case Is = 182
            Kode.Text = "[bc] [abcdefg] [abged]"
            
        Case Is = 183
            Kode.Text = "[bc] [abcdefg] [abgcd]"
            
        Case Is = 184
            Kode.Text = "[bc] [abcdefg] [fbgc]"
            
        Case Is = 185
            Kode.Text = "[bc] [abcdefg] [afgcd]"
            
        Case Is = 186
            Kode.Text = "[bc] [abcdefg] [fgcde]"
            
        Case Is = 187
            Kode.Text = "[bc] [abcdefg] [abc]"
            
        Case Is = 188
            Kode.Text = "[bc] [abcdefg] [abcdefg]"
            
        Case Is = 189
            Kode.Text = "[bc] [abcdefg] [abcdfg]"
            
        Case Is = 190
            Kode.Text = "[bc] [abcdfg] [abcdef]"
            
        Case Is = 191
            Kode.Text = "[bc] [abcdfg] [bc]"
            
        Case Is = 192
            Kode.Text = "[bc] [abcdfg] [abged]"
            
        Case Is = 193
            Kode.Text = "[bc] [abcdfg] [abgcd]"
            
        Case Is = 194
            Kode.Text = "[bc] [abcdfg] [fbgc]"
            
        Case Is = 195
            Kode.Text = "[bc] [abcdfg] [afgcd]"
            
        Case Is = 196
            Kode.Text = "[bc] [abcdfg] [fgcde]"
            
        Case Is = 197
            Kode.Text = "[bc] [abcdfg] [abc]"
            
        Case Is = 198
            Kode.Text = "[bc] [abcdfg] [abcdefg]"
            
        Case Is = 199
            Kode.Text = "[bc] [abcdfg] [abcdfg]"
            
        Case Is = 200
            Kode.Text = "[abged] [abcdef] [abcdef]"
            
        Case Is = 201
            Kode.Text = "[abged] [abcdef] [bc]"
            
        Case Is = 202
            Kode.Text = "[abged] [abcdef] [abged]"
            
        Case Is = 203
            Kode.Text = "[abged] [abcdef] [abgcd]"
            
        Case Is = 204
            Kode.Text = "[abged] [abcdef] [fbgc]"
            
        Case Is = 205
            Kode.Text = "[abged] [abcdef] [afgcd]"
            
        Case Is = 206
            Kode.Text = "[abged] [abcdef] [fgcde]"
            
        Case Is = 207
            Kode.Text = "[abged] [abcdef] [abc]"
            
        Case Is = 208
            Kode.Text = "[abged] [abcdef] [abcdefg]"
            
        Case Is = 209
            Kode.Text = "[abged] [abcdef] [abcdfg]"
            
        Case Is = 210
            Kode.Text = "[abged] [bc] [abcdef]"
            
        Case Is = 211
            Kode.Text = "[abged] [bc] [bc]"
            
        Case Is = 212
            Kode.Text = "[abged] [bc] [abged]"
            
        Case Is = 213
            Kode.Text = "[abged] [bc] [abgcd]"
            
        Case Is = 214
            Kode.Text = "[abged] [bc] [fbgc]"
            
        Case Is = 215
            Kode.Text = "[abged] [bc] [afgcd]"
            
        Case Is = 216
            Kode.Text = "[abged] [bc] [fgcde]"
            
        Case Is = 217
            Kode.Text = "[abged] [bc] [abc]"
            
        Case Is = 218
            Kode.Text = "[abged] [bc] [abcdefg]"
            
        Case Is = 219
            Kode.Text = "[abged] [bc] [abcdfg]"
            
        Case Is = 220
            Kode.Text = "[abged] [abged] [abcdef]"
            
        Case Is = 221
            Kode.Text = "[abged] [abged] [bc]"
            
        Case Is = 222
            Kode.Text = "[abged] [abged] [abged]"
            
        Case Is = 223
            Kode.Text = "[abged] [abged] [abgcd]"
            
        Case Is = 224
            Kode.Text = "[abged] [abged] [fbgc]"
            
        Case Is = 225
            Kode.Text = "[abged] [abged] [afgcd]"
            
        Case Is = 226
            Kode.Text = "[abged] [abged] [fgcde]"
            
        Case Is = 227
            Kode.Text = "[abged] [abged] [abc]"
            
        Case Is = 228
            Kode.Text = "[abged] [abged] [abcdefg]"
            
        Case Is = 229
            Kode.Text = "[abged] [abged] [abcdfg]"
            
        Case Is = 230
            Kode.Text = "[abged] [abgcd] [abcdef]"
            
        Case Is = 231
            Kode.Text = "[abged] [abgcd] [bc]"
            
        Case Is = 232
            Kode.Text = "[abged] [abgcd] [abged]"
            
        Case Is = 233
            Kode.Text = "[abged] [abgcd] [abgcd]"
            
        Case Is = 234
            Kode.Text = "[abged] [abgcd] [fbgc]"
            
        Case Is = 235
            Kode.Text = "[abged] [abgcd] [afgcd]"
            
        Case Is = 236
            Kode.Text = "[abged] [abgcd] [fgcde]"
            
        Case Is = 237
            Kode.Text = "[abged] [abgcd] [abc]"
            
        Case Is = 238
            Kode.Text = "[abged] [abgcd] [abcdefg]"
            
        Case Is = 239
            Kode.Text = "[abged] [abgcd] [abcdfg]"
            
        Case Is = 240
            Kode.Text = "[abged] [fbgc] [abcdef]"
            
        Case Is = 241
            Kode.Text = "[abged] [fbgc] [bc]"
            
        Case Is = 242
            Kode.Text = "[abged] [fbgc] [abged]"
            
        Case Is = 243
            Kode.Text = "[abged] [fbgc] [abgcd]"
            
        Case Is = 244
            Kode.Text = "[abged] [fbgc] [fbgc]"
            
        Case Is = 245
            Kode.Text = "[abged] [fbgc] [afgcd]"
            
        Case Is = 246
            Kode.Text = "[abged] [fbgc] [fgcde]"
            
        Case Is = 247
            Kode.Text = "[abged] [fbgc] [abc]"
            
        Case Is = 248
            Kode.Text = "[abged] [fbgc] [abcdefg]"
            
        Case Is = 249
            Kode.Text = "[abged] [fbgc] [abcdfg]"
            
        Case Is = 250
            Kode.Text = "[abged] [afgcd] [abcdef]"
            
        Case Is = 251
            Kode.Text = "[abged] [afgcd] [bc]"
            
        Case Is = 252
            Kode.Text = "[abged] [afgcd] [abged]"
            
        Case Is = 253
            Kode.Text = "[abged] [afgcd] [abgcd]"
            
        Case Is = 254
            Kode.Text = "[abged] [afgcd] [fbgc]"
            
        Case Is = 255
            Kode.Text = "[abged] [afgcd] [afgcd]"
            
        Case Is = 256
            Kode.Text = "[abged] [afgcd] [fgcde]"
            
        Case Is = 257
            Kode.Text = "[abged] [afgcd] [abc]"
            
        Case Is = 258
            Kode.Text = "[abged] [afgcd] [abcdefg]"
            
        Case Is = 259
            Kode.Text = "[abged] [afgcd] [abcdfg]"
            
        Case Is = 260
            Kode.Text = "[abged] [fgcde] [abcdef]"
            
        Case Is = 261
            Kode.Text = "[abged] [fgcde] [bc]"
            
        Case Is = 262
            Kode.Text = "[abged] [fgcde] [abged]"
            
        Case Is = 263
            Kode.Text = "[abged] [fgcde] [abgcd]"
            
        Case Is = 264
            Kode.Text = "[abged] [fgcde] [fbgc]"
            
        Case Is = 265
            Kode.Text = "[abged] [fgcde] [afgcd]"
            
        Case Is = 266
            Kode.Text = "[abged] [fgcde] [fgcde]"
            
        Case Is = 267
            Kode.Text = "[abged] [fgcde] [abc]"
            
        Case Is = 268
            Kode.Text = "[abged] [fgcde] [abcdefg]"
            
        Case Is = 269
            Kode.Text = "[abged] [fgcde] [abcdfg]"
            
        Case Is = 270
            Kode.Text = "[abged] [abc] [abcdef]"
            
        Case Is = 271
            Kode.Text = "[abged] [abc] [bc]"
            
        Case Is = 272
            Kode.Text = "[abged] [abc] [abged]"
            
        Case Is = 273
            Kode.Text = "[abged] [abc] [abgcd]"
            
        Case Is = 274
            Kode.Text = "[abged] [abc] [fbgc]"
            
        Case Is = 275
            Kode.Text = "[abged] [abc] [afgcd]"
            
        Case Is = 276
            Kode.Text = "[abged] [abc] [fgcde]"
            
        Case Is = 277
            Kode.Text = "[abged] [abc] [abc]"
            
        Case Is = 278
            Kode.Text = "[abged] [abc] [abcdefg]"
            
        Case Is = 279
            Kode.Text = "[abged] [abc] [abcdfg]"
            
        Case Is = 280
            Kode.Text = "[abged] [abcdefg] [abcdef]"
            
        Case Is = 281
            Kode.Text = "[abged] [abcdefg] [bc]"
            
        Case Is = 282
            Kode.Text = "[abged] [abcdefg] [abged]"
            
        Case Is = 283
            Kode.Text = "[abged] [abcdefg] [abgcd]"
            
        Case Is = 284
            Kode.Text = "[abged] [abcdefg] [fbgc]"
            
        Case Is = 285
            Kode.Text = "[abged] [abcdefg] [afgcd]"
            
        Case Is = 286
            Kode.Text = "[abged] [abcdefg] [fgcde]"
            
        Case Is = 287
            Kode.Text = "[abged] [abcdefg] [abc]"
            
        Case Is = 288
            Kode.Text = "[abged] [abcdefg] [abcdefg]"
            
        Case Is = 289
            Kode.Text = "[abged] [abcdefg] [abcdfg]"
            
        Case Is = 290
            Kode.Text = "[abged] [abcdfg] [abcdef]"
            
        Case Is = 291
            Kode.Text = "[abged] [abcdfg] [bc]"
            
        Case Is = 292
            Kode.Text = "[abged] [abcdfg] [abged]"
            
        Case Is = 293
            Kode.Text = "[abged] [abcdfg] [abgcd]"
            
        Case Is = 294
            Kode.Text = "[abged] [abcdfg] [fbgc]"
            
        Case Is = 295
            Kode.Text = "[abged] [abcdfg] [afgcd]"
            
        Case Is = 296
            Kode.Text = "[abged] [abcdfg] [fgcde]"
            
        Case Is = 297
            Kode.Text = "[abged] [abcdfg] [abc]"
            
        Case Is = 298
            Kode.Text = "[abged] [abcdfg] [abcdefg]"
            
        Case Is = 299
            Kode.Text = "[abged] [abcdfg] [abcdfg]"
            
        Case Is = 300
            Kode.Text = "[abgcd] [abcdef] [abcdef]"
            
        Case Is = 301
            Kode.Text = "[abgcd] [abcdef] [bc]"
            
        Case Is = 302
            Kode.Text = "[abgcd] [abcdef] [abged]"
            
        Case Is = 303
            Kode.Text = "[abgcd] [abcdef] [abgcd]"
            
        Case Is = 304
            Kode.Text = "[abgcd] [abcdef] [fbgc]"
            
        Case Is = 305
            Kode.Text = "[abgcd] [abcdef] [afgcd]"
            
        Case Is = 306
            Kode.Text = "[abgcd] [abcdef] [fgcde]"
            
        Case Is = 307
            Kode.Text = "[abgcd] [abcdef] [abc]"
            
        Case Is = 308
            Kode.Text = "[abgcd] [abcdef] [abcdefg]"
            
        Case Is = 309
            Kode.Text = "[abgcd] [abcdef] [abcdfg]"
            
        Case Is = 310
            Kode.Text = "[abgcd] [bc] [abcdef]"
            
        Case Is = 311
            Kode.Text = "[abgcd] [bc] [bc]"
            
        Case Is = 312
            Kode.Text = "[abgcd] [bc] [abged]"
            
        Case Is = 313
            Kode.Text = "[abgcd] [bc] [abgcd]"
            
        Case Is = 314
            Kode.Text = "[abgcd] [bc] [fbgc]"
            
        Case Is = 315
            Kode.Text = "[abgcd] [bc] [afgcd]"
            
        Case Is = 316
            Kode.Text = "[abgcd] [bc] [fgcde]"
            
        Case Is = 317
            Kode.Text = "[abgcd] [bc] [abc]"
            
        Case Is = 318
            Kode.Text = "[abgcd] [bc] [abcdefg]"
            
        Case Is = 319
            Kode.Text = "[abgcd] [bc] [abcdfg]"
            
        Case Is = 320
            Kode.Text = "[abgcd] [abged] [abcdef]"
            
        Case Is = 321
            Kode.Text = "[abgcd] [abged] [bc]"
            
        Case Is = 322
            Kode.Text = "[abgcd] [abged] [abged]"
            
        Case Is = 323
            Kode.Text = "[abgcd] [abged] [abgcd]"
            
        Case Is = 324
            Kode.Text = "[abgcd] [abged] [fbgc]"
            
        Case Is = 325
            Kode.Text = "[abgcd] [abged] [afgcd]"
            
        Case Is = 326
            Kode.Text = "[abgcd] [abged] [fgcde]"
            
        Case Is = 327
            Kode.Text = "[abgcd] [abged] [abc]"
            
        Case Is = 328
            Kode.Text = "[abgcd] [abged] [abcdefg]"
            
        Case Is = 329
            Kode.Text = "[abgcd] [abged] [abcdfg]"
            
        Case Is = 330
            Kode.Text = "[abgcd] [abgcd] [abcdef]"
            
        Case Is = 331
            Kode.Text = "[abgcd] [abgcd] [bc]"
            
        Case Is = 332
            Kode.Text = "[abgcd] [abgcd] [abged]"
            
        Case Is = 333
            Kode.Text = "[abgcd] [abgcd] [abgcd]"
            
        Case Is = 334
            Kode.Text = "[abgcd] [abgcd] [fbgc]"
            
        Case Is = 335
            Kode.Text = "[abgcd] [abgcd] [afgcd]"
            
        Case Is = 336
            Kode.Text = "[abgcd] [abgcd] [fgcde]"
            
        Case Is = 337
            Kode.Text = "[abgcd] [abgcd] [abc]"
            
        Case Is = 338
            Kode.Text = "[abgcd] [abgcd] [abcdefg]"
            
        Case Is = 339
            Kode.Text = "[abgcd] [abgcd] [abcdfg]"
            
        Case Is = 340
            Kode.Text = "[abgcd] [fbgc] [abcdef]"
            
        Case Is = 341
            Kode.Text = "[abgcd] [fbgc] [bc]"
            
        Case Is = 342
            Kode.Text = "[abgcd] [fbgc] [abged]"
            
        Case Is = 343
            Kode.Text = "[abgcd] [fbgc] [abgcd]"
            
        Case Is = 344
            Kode.Text = "[abgcd] [fbgc] [fbgc]"
            
        Case Is = 345
            Kode.Text = "[abgcd] [fbgc] [afgcd]"
            
        Case Is = 346
            Kode.Text = "[abgcd] [fbgc] [fgcde]"
            
        Case Is = 347
            Kode.Text = "[abgcd] [fbgc] [abc]"
            
        Case Is = 348
            Kode.Text = "[abgcd] [fbgc] [abcdefg]"
            
        Case Is = 349
            Kode.Text = "[abgcd] [fbgc] [abcdfg]"
            
        Case Is = 350
            Kode.Text = "[abgcd] [afgcd] [abcdef]"
            
        Case Is = 351
            Kode.Text = "[abgcd] [afgcd] [bc]"
            
        Case Is = 352
            Kode.Text = "[abgcd] [afgcd] [abged]"
            
        Case Is = 353
            Kode.Text = "[abgcd] [afgcd] [abgcd]"
            
        Case Is = 354
            Kode.Text = "[abgcd] [afgcd] [fbgc]"
            
        Case Is = 355
            Kode.Text = "[abgcd] [afgcd] [afgcd]"
            
        Case Is = 356
            Kode.Text = "[abgcd] [afgcd] [fgcde]"
            
        Case Is = 357
            Kode.Text = "[abgcd] [afgcd] [abc]"
            
        Case Is = 358
            Kode.Text = "[abgcd] [afgcd] [abcdefg]"
            
        Case Is = 359
            Kode.Text = "[abgcd] [afgcd] [abcdfg]"
            
        Case Is = 360
            Kode.Text = "[abgcd] [fgcde] [abcdef]"
            
        Case Is = 361
            Kode.Text = "[abgcd] [fgcde] [bc]"
            
        Case Is = 362
            Kode.Text = "[abgcd] [fgcde] [abged]"
            
        Case Is = 363
            Kode.Text = "[abgcd] [fgcde] [abgcd]"
            
        Case Is = 364
            Kode.Text = "[abgcd] [fgcde] [fbgc]"
            
        Case Is = 365
            Kode.Text = "[abgcd] [fgcde] [afgcd]"
            
        Case Is = 366
            Kode.Text = "[abgcd] [fgcde] [fgcde]"
            
        Case Is = 367
            Kode.Text = "[abgcd] [fgcde] [abc]"
            
        Case Is = 368
            Kode.Text = "[abgcd] [fgcde] [abcdefg]"
            
        Case Is = 369
            Kode.Text = "[abgcd] [fgcde] [abcdfg]"
            
        Case Is = 370
            Kode.Text = "[abgcd] [abc] [abcdef]"
            
        Case Is = 371
            Kode.Text = "[abgcd] [abc] [bc]"
            
        Case Is = 372
            Kode.Text = "[abgcd] [abc] [abged]"
            
        Case Is = 373
            Kode.Text = "[abgcd] [abc] [abgcd]"
            
        Case Is = 374
            Kode.Text = "[abgcd] [abc] [fbgc]"
            
        Case Is = 375
            Kode.Text = "[abgcd] [abc] [afgcd]"
            
        Case Is = 376
            Kode.Text = "[abgcd] [abc] [fgcde]"
            
        Case Is = 377
            Kode.Text = "[abgcd] [abc] [abc]"
            
        Case Is = 378
            Kode.Text = "[abgcd] [abc] [abcdefg]"
            
        Case Is = 379
            Kode.Text = "[abgcd] [abc] [abcdfg]"
            
        Case Is = 380
            Kode.Text = "[abgcd] [abcdefg] [abcdef]"
            
        Case Is = 381
            Kode.Text = "[abgcd] [abcdefg] [bc]"
            
        Case Is = 382
            Kode.Text = "[abgcd] [abcdefg] [abged]"
            
        Case Is = 383
            Kode.Text = "[abgcd] [abcdefg] [abgcd]"
            
        Case Is = 384
            Kode.Text = "[abgcd] [abcdefg] [fbgc]"
            
        Case Is = 385
            Kode.Text = "[abgcd] [abcdefg] [afgcd]"
            
        Case Is = 386
            Kode.Text = "[abgcd] [abcdefg] [fgcde]"
            
        Case Is = 387
            Kode.Text = "[abgcd] [abcdefg] [abc]"
            
        Case Is = 388
            Kode.Text = "[abgcd] [abcdefg] [abcdefg]"
            
        Case Is = 389
            Kode.Text = "[abgcd] [abcdefg] [abcdfg]"
            
        Case Is = 390
            Kode.Text = "[abgcd] [abcdfg] [abcdef]"
            
        Case Is = 391
            Kode.Text = "[abgcd] [abcdfg] [bc]"
            
        Case Is = 392
            Kode.Text = "[abgcd] [abcdfg] [abged]"
            
        Case Is = 393
            Kode.Text = "[abgcd] [abcdfg] [abgcd]"
            
        Case Is = 394
            Kode.Text = "[abgcd] [abcdfg] [fbgc]"
            
        Case Is = 395
            Kode.Text = "[abgcd] [abcdfg] [afgcd]"
            
        Case Is = 396
            Kode.Text = "[abgcd] [abcdfg] [fgcde]"
            
        Case Is = 397
            Kode.Text = "[abgcd] [abcdfg] [abc]"
            
        Case Is = 398
            Kode.Text = "[abgcd] [abcdfg] [abcdefg]"
            
        Case Is = 399
            Kode.Text = "[abgcd] [abcdfg] [abcdfg]"
            
        Case Is = 400
            Kode.Text = "[fbgc] [abcdef] [abcdef]"
            
        Case Is = 401
            Kode.Text = "[fbgc] [abcdef] [bc]"
            
        Case Is = 402
            Kode.Text = "[fbgc] [abcdef] [abged]"
            
        Case Is = 403
            Kode.Text = "[fbgc] [abcdef] [abgcd]"
            
        Case Is = 404
            Kode.Text = "[fbgc] [abcdef] [fbgc]"
            
        Case Is = 405
            Kode.Text = "[fbgc] [abcdef] [afgcd]"
            
        Case Is = 406
            Kode.Text = "[fbgc] [abcdef] [fgcde]"
            
        Case Is = 407
            Kode.Text = "[fbgc] [abcdef] [abc]"
            
        Case Is = 408
            Kode.Text = "[fbgc] [abcdef] [abcdefg]"
            
        Case Is = 409
            Kode.Text = "[fbgc] [abcdef] [abcdfg]"
            
        Case Is = 410
            Kode.Text = "[fbgc] [bc] [abcdef]"
            
        Case Is = 411
            Kode.Text = "[fbgc] [bc] [bc]"
            
        Case Is = 412
            Kode.Text = "[fbgc] [bc] [abged]"
            
        Case Is = 413
            Kode.Text = "[fbgc] [bc] [abgcd]"
            
        Case Is = 414
            Kode.Text = "[fbgc] [bc] [fbgc]"
            
        Case Is = 415
            Kode.Text = "[fbgc] [bc] [afgcd]"
            
        Case Is = 416
            Kode.Text = "[fbgc] [bc] [fgcde]"
            
        Case Is = 417
            Kode.Text = "[fbgc] [bc] [abc]"
            
        Case Is = 418
            Kode.Text = "[fbgc] [bc] [abcdefg]"
            
        Case Is = 419
            Kode.Text = "[fbgc] [bc] [abcdfg]"
            
        Case Is = 420
            Kode.Text = "[fbgc] [abged] [abcdef]"
            
        Case Is = 421
            Kode.Text = "[fbgc] [abged] [bc]"
            
        Case Is = 422
            Kode.Text = "[fbgc] [abged] [abged]"
            
        Case Is = 423
            Kode.Text = "[fbgc] [abged] [abgcd]"
            
        Case Is = 424
            Kode.Text = "[fbgc] [abged] [fbgc]"
            
        Case Is = 425
            Kode.Text = "[fbgc] [abged] [afgcd]"
            
        Case Is = 426
            Kode.Text = "[fbgc] [abged] [fgcde]"
            
        Case Is = 427
            Kode.Text = "[fbgc] [abged] [abc]"
            
        Case Is = 428
            Kode.Text = "[fbgc] [abged] [abcdefg]"
            
        Case Is = 429
            Kode.Text = "[fbgc] [abged] [abcdfg]"
            
        Case Is = 430
            Kode.Text = "[fbgc] [abgcd] [abcdef]"
            
        Case Is = 431
            Kode.Text = "[fbgc] [abgcd] [bc]"
            
        Case Is = 432
            Kode.Text = "[fbgc] [abgcd] [abged]"
            
        Case Is = 433
            Kode.Text = "[fbgc] [abgcd] [abgcd]"
            
        Case Is = 434
            Kode.Text = "[fbgc] [abgcd] [fbgc]"
            
        Case Is = 435
            Kode.Text = "[fbgc] [abgcd] [afgcd]"
            
        Case Is = 436
            Kode.Text = "[fbgc] [abgcd] [fgcde]"
            
        Case Is = 437
            Kode.Text = "[fbgc] [abgcd] [abc]"
            
        Case Is = 438
            Kode.Text = "[fbgc] [abgcd] [abcdefg]"
            
        Case Is = 439
            Kode.Text = "[fbgc] [abgcd] [abcdfg]"
            
        Case Is = 440
            Kode.Text = "[fbgc] [fbgc] [abcdef]"
            
        Case Is = 441
            Kode.Text = "[fbgc] [fbgc] [bc]"
            
        Case Is = 442
            Kode.Text = "[fbgc] [fbgc] [abged]"
            
        Case Is = 443
            Kode.Text = "[fbgc] [fbgc] [abgcd]"
            
        Case Is = 444
            Kode.Text = "[fbgc] [fbgc] [fbgc]"
            
        Case Is = 445
            Kode.Text = "[fbgc] [fbgc] [afgcd]"
            
        Case Is = 446
            Kode.Text = "[fbgc] [fbgc] [fgcde]"
            
        Case Is = 447
            Kode.Text = "[fbgc] [fbgc] [abc]"
            
        Case Is = 448
            Kode.Text = "[fbgc] [fbgc] [abcdefg]"
            
        Case Is = 449
            Kode.Text = "[fbgc] [fbgc] [abcdfg]"
            
        Case Is = 450
            Kode.Text = "[fbgc] [afgcd] [abcdef]"
            
        Case Is = 451
            Kode.Text = "[fbgc] [afgcd] [bc]"
            
        Case Is = 452
            Kode.Text = "[fbgc] [afgcd] [abged]"
            
        Case Is = 453
            Kode.Text = "[fbgc] [afgcd] [abgcd]"
            
        Case Is = 454
            Kode.Text = "[fbgc] [afgcd] [fbgc]"
            
        Case Is = 455
            Kode.Text = "[fbgc] [afgcd] [afgcd]"
            
        Case Is = 456
            Kode.Text = "[fbgc] [afgcd] [fgcde]"
            
        Case Is = 457
            Kode.Text = "[fbgc] [afgcd] [abc]"
            
        Case Is = 458
            Kode.Text = "[fbgc] [afgcd] [abcdefg]"
            
        Case Is = 459
            Kode.Text = "[fbgc] [afgcd] [abcdfg]"
            
        Case Is = 460
            Kode.Text = "[fbgc] [fgcde] [abcdef]"
            
        Case Is = 461
            Kode.Text = "[fbgc] [fgcde] [bc]"
            
        Case Is = 462
            Kode.Text = "[fbgc] [fgcde] [abged]"
            
        Case Is = 463
            Kode.Text = "[fbgc] [fgcde] [abgcd]"
            
        Case Is = 464
            Kode.Text = "[fbgc] [fgcde] [fbgc]"
            
        Case Is = 465
            Kode.Text = "[fbgc] [fgcde] [afgcd]"
            
        Case Is = 466
            Kode.Text = "[fbgc] [fgcde] [fgcde]"
            
        Case Is = 467
            Kode.Text = "[fbgc] [fgcde] [abc]"
            
        Case Is = 468
            Kode.Text = "[fbgc] [fgcde] [abcdefg]"
            
        Case Is = 469
            Kode.Text = "[fbgc] [fgcde] [abcdfg]"
            
        Case Is = 470
            Kode.Text = "[fbgc] [abc] [abcdef]"
            
        Case Is = 471
            Kode.Text = "[fbgc] [abc] [bc]"
            
        Case Is = 472
            Kode.Text = "[fbgc] [abc] [abged]"
            
        Case Is = 473
            Kode.Text = "[fbgc] [abc] [abgcd]"
            
        Case Is = 474
            Kode.Text = "[fbgc] [abc] [fbgc]"
            
        Case Is = 475
            Kode.Text = "[fbgc] [abc] [afgcd]"
            
        Case Is = 476
            Kode.Text = "[fbgc] [abc] [fgcde]"
            
        Case Is = 477
            Kode.Text = "[fbgc] [abc] [abc]"
            
        Case Is = 478
            Kode.Text = "[fbgc] [abc] [abcdefg]"
            
        Case Is = 479
            Kode.Text = "[fbgc] [abc] [abcdfg]"
            
        Case Is = 480
            Kode.Text = "[fbgc] [abcdefg] [abcdef]"
            
        Case Is = 481
            Kode.Text = "[fbgc] [abcdefg] [bc]"
            
        Case Is = 482
            Kode.Text = "[fbgc] [abcdefg] [abged]"
            
        Case Is = 483
            Kode.Text = "[fbgc] [abcdefg] [abgcd]"
            
        Case Is = 484
            Kode.Text = "[fbgc] [abcdefg] [fbgc]"
            
        Case Is = 485
            Kode.Text = "[fbgc] [abcdefg] [afgcd]"
            
        Case Is = 486
            Kode.Text = "[fbgc] [abcdefg] [fgcde]"
            
        Case Is = 487
            Kode.Text = "[fbgc] [abcdefg] [abc]"
            
        Case Is = 488
            Kode.Text = "[fbgc] [abcdefg] [abcdefg]"
            
        Case Is = 489
            Kode.Text = "[fbgc] [abcdefg] [abcdfg]"
            
        Case Is = 490
            Kode.Text = "[fbgc] [abcdfg] [abcdef]"
            
        Case Is = 491
            Kode.Text = "[fbgc] [abcdfg] [bc]"
            
        Case Is = 492
            Kode.Text = "[fbgc] [abcdfg] [abged]"
            
        Case Is = 493
            Kode.Text = "[fbgc] [abcdfg] [abgcd]"
            
        Case Is = 494
            Kode.Text = "[fbgc] [abcdfg] [fbgc]"
            
        Case Is = 495
            Kode.Text = "[fbgc] [abcdfg] [afgcd]"
            
        Case Is = 496
            Kode.Text = "[fbgc] [abcdfg] [fgcde]"
            
        Case Is = 497
            Kode.Text = "[fbgc] [abcdfg] [abc]"
            
        Case Is = 498
            Kode.Text = "[fbgc] [abcdfg] [abcdefg]"
            
        Case Is = 499
            Kode.Text = "[fbgc] [abcdfg] [abcdfg]"
            
        Case Is = 500
            Kode.Text = "[afgcd] [abcdef] [abcdef]"
            
        Case Is = 501
            Kode.Text = "[afgcd] [abcdef] [bc]"
            
        Case Is = 502
            Kode.Text = "[afgcd] [abcdef] [abged]"
            
        Case Is = 503
            Kode.Text = "[afgcd] [abcdef] [abgcd]"
            
        Case Is = 504
            Kode.Text = "[afgcd] [abcdef] [fbgc]"
            
        Case Is = 505
            Kode.Text = "[afgcd] [abcdef] [afgcd]"
            
        Case Is = 506
            Kode.Text = "[afgcd] [abcdef] [fgcde]"
            
        Case Is = 507
            Kode.Text = "[afgcd] [abcdef] [abc]"
            
        Case Is = 508
            Kode.Text = "[afgcd] [abcdef] [abcdefg]"
            
        Case Is = 509
            Kode.Text = "[afgcd] [abcdef] [abcdfg]"
            
        Case Is = 510
            Kode.Text = "[afgcd] [bc] [abcdef]"
            
        Case Is = 511
            Kode.Text = "[afgcd] [bc] [bc]"
            
        Case Is = 512
            Kode.Text = "[afgcd] [bc] [abged]"
            
        Case Is = 513
            Kode.Text = "[afgcd] [bc] [abgcd]"
            
        Case Is = 514
            Kode.Text = "[afgcd] [bc] [fbgc]"
            
        Case Is = 515
            Kode.Text = "[afgcd] [bc] [afgcd]"
            
        Case Is = 516
            Kode.Text = "[afgcd] [bc] [fgcde]"
            
        Case Is = 517
            Kode.Text = "[afgcd] [bc] [abc]"
            
        Case Is = 518
            Kode.Text = "[afgcd] [bc] [abcdefg]"
            
        Case Is = 519
            Kode.Text = "[afgcd] [bc] [abcdfg]"
            
        Case Is = 520
            Kode.Text = "[afgcd] [abged] [abcdef]"
            
        Case Is = 521
            Kode.Text = "[afgcd] [abged] [bc]"
            
        Case Is = 522
            Kode.Text = "[afgcd] [abged] [abged]"
            
        Case Is = 523
            Kode.Text = "[afgcd] [abged] [abgcd]"
            
        Case Is = 524
            Kode.Text = "[afgcd] [abged] [fbgc]"
            
        Case Is = 525
            Kode.Text = "[afgcd] [abged] [afgcd]"
            
        Case Is = 526
            Kode.Text = "[afgcd] [abged] [fgcde]"
            
        Case Is = 527
            Kode.Text = "[afgcd] [abged] [abc]"
            
        Case Is = 528
            Kode.Text = "[afgcd] [abged] [abcdefg]"
            
        Case Is = 529
            Kode.Text = "[afgcd] [abged] [abcdfg]"
            
        Case Is = 530
            Kode.Text = "[afgcd] [abgcd] [abcdef]"
            
        Case Is = 531
            Kode.Text = "[afgcd] [abgcd] [bc]"
            
        Case Is = 532
            Kode.Text = "[afgcd] [abgcd] [abged]"
            
        Case Is = 533
            Kode.Text = "[afgcd] [abgcd] [abgcd]"
            
        Case Is = 534
            Kode.Text = "[afgcd] [abgcd] [fbgc]"
            
        Case Is = 535
            Kode.Text = "[afgcd] [abgcd] [afgcd]"
            
        Case Is = 536
            Kode.Text = "[afgcd] [abgcd] [fgcde]"
            
        Case Is = 537
            Kode.Text = "[afgcd] [abgcd] [abc]"
            
        Case Is = 538
            Kode.Text = "[afgcd] [abgcd] [abcdefg]"
            
        Case Is = 539
            Kode.Text = "[afgcd] [abgcd] [abcdfg]"
            
        Case Is = 540
            Kode.Text = "[afgcd] [fbgc] [abcdef]"
            
        Case Is = 541
            Kode.Text = "[afgcd] [fbgc] [bc]"
            
        Case Is = 542
            Kode.Text = "[afgcd] [fbgc] [abged]"
            
        Case Is = 543
            Kode.Text = "[afgcd] [fbgc] [abgcd]"
            
        Case Is = 544
            Kode.Text = "[afgcd] [fbgc] [fbgc]"
            
        Case Is = 545
            Kode.Text = "[afgcd] [fbgc] [afgcd]"
            
        Case Is = 546
            Kode.Text = "[afgcd] [fbgc] [fgcde]"
            
        Case Is = 547
            Kode.Text = "[afgcd] [fbgc] [abc]"
            
        Case Is = 548
            Kode.Text = "[afgcd] [fbgc] [abcdefg]"
            
        Case Is = 549
            Kode.Text = "[afgcd] [fbgc] [abcdfg]"
            
        Case Is = 550
            Kode.Text = "[afgcd] [afgcd] [abcdef]"
            
        Case Is = 551
            Kode.Text = "[afgcd] [afgcd] [bc]"
            
        Case Is = 552
            Kode.Text = "[afgcd] [afgcd] [abged]"
            
        Case Is = 553
            Kode.Text = "[afgcd] [afgcd] [abgcd]"
            
        Case Is = 554
            Kode.Text = "[afgcd] [afgcd] [fbgc]"
            
        Case Is = 555
            Kode.Text = "[afgcd] [afgcd] [afgcd]"
            
        Case Is = 556
            Kode.Text = "[afgcd] [afgcd] [fgcde]"
            
        Case Is = 557
            Kode.Text = "[afgcd] [afgcd] [abc]"
            
        Case Is = 558
            Kode.Text = "[afgcd] [afgcd] [abcdefg]"
            
        Case Is = 559
            Kode.Text = "[afgcd] [afgcd] [abcdfg]"
            
        Case Is = 560
            Kode.Text = "[afgcd] [fgcde] [abcdef]"
            
        Case Is = 561
            Kode.Text = "[afgcd] [fgcde] [bc]"
            
        Case Is = 562
            Kode.Text = "[afgcd] [fgcde] [abged]"
            
        Case Is = 563
            Kode.Text = "[afgcd] [fgcde] [abgcd]"
            
        Case Is = 564
            Kode.Text = "[afgcd] [fgcde] [fbgc]"
            
        Case Is = 565
            Kode.Text = "[afgcd] [fgcde] [afgcd]"
            
        Case Is = 566
            Kode.Text = "[afgcd] [fgcde] [fgcde]"
            
        Case Is = 567
            Kode.Text = "[afgcd] [fgcde] [abc]"
            
        Case Is = 568
            Kode.Text = "[afgcd] [fgcde] [abcdefg]"
            
        Case Is = 569
            Kode.Text = "[afgcd] [fgcde] [abcdfg]"
            
        Case Is = 570
            Kode.Text = "[afgcd] [abc] [abcdef]"
            
        Case Is = 571
            Kode.Text = "[afgcd] [abc] [bc]"
            
        Case Is = 572
            Kode.Text = "[afgcd] [abc] [abged]"
            
        Case Is = 573
            Kode.Text = "[afgcd] [abc] [abgcd]"
            
        Case Is = 574
            Kode.Text = "[afgcd] [abc] [fbgc]"
            
        Case Is = 575
            Kode.Text = "[afgcd] [abc] [afgcd]"
            
        Case Is = 576
            Kode.Text = "[afgcd] [abc] [fgcde]"
            
        Case Is = 577
            Kode.Text = "[afgcd] [abc] [abc]"
            
        Case Is = 578
            Kode.Text = "[afgcd] [abc] [abcdefg]"
            
        Case Is = 579
            Kode.Text = "[afgcd] [abc] [abcdfg]"
            
        Case Is = 580
            Kode.Text = "[afgcd] [abcdefg] [abcdef]"
            
        Case Is = 581
            Kode.Text = "[afgcd] [abcdefg] [bc]"
            
        Case Is = 582
            Kode.Text = "[afgcd] [abcdefg] [abged]"
            
        Case Is = 583
            Kode.Text = "[afgcd] [abcdefg] [abgcd]"
            
        Case Is = 584
            Kode.Text = "[afgcd] [abcdefg] [fbgc]"
            
        Case Is = 585
            Kode.Text = "[afgcd] [abcdefg] [afgcd]"
            
        Case Is = 586
            Kode.Text = "[afgcd] [abcdefg] [fgcde]"
            
        Case Is = 587
            Kode.Text = "[afgcd] [abcdefg] [abc]"
            
        Case Is = 588
            Kode.Text = "[afgcd] [abcdefg] [abcdefg]"
            
        Case Is = 589
            Kode.Text = "[afgcd] [abcdefg] [abcdfg]"
            
        Case Is = 590
            Kode.Text = "[afgcd] [abcdfg] [abcdef]"
            
        Case Is = 591
            Kode.Text = "[afgcd] [abcdfg] [bc]"
            
        Case Is = 592
            Kode.Text = "[afgcd] [abcdfg] [abged]"
            
        Case Is = 593
            Kode.Text = "[afgcd] [abcdfg] [abgcd]"
            
        Case Is = 594
            Kode.Text = "[afgcd] [abcdfg] [fbgc]"
            
        Case Is = 595
            Kode.Text = "[afgcd] [abcdfg] [afgcd]"
            
        Case Is = 596
            Kode.Text = "[afgcd] [abcdfg] [fgcde]"
            
        Case Is = 597
            Kode.Text = "[afgcd] [abcdfg] [abc]"
            
        Case Is = 598
            Kode.Text = "[afgcd] [abcdfg] [abcdefg]"
            
        Case Is = 599
            Kode.Text = "[afgcd] [abcdfg] [abcdfg]"
            
        Case Is = 600
            Kode.Text = "[fgcde] [abcdef] [abcdef]"
            
        Case Is = 601
            Kode.Text = "[fgcde] [abcdef] [bc]"
            
        Case Is = 602
            Kode.Text = "[fgcde] [abcdef] [abged]"
            
        Case Is = 603
            Kode.Text = "[fgcde] [abcdef] [abgcd]"
            
        Case Is = 604
            Kode.Text = "[fgcde] [abcdef] [fbgc]"
            
        Case Is = 605
            Kode.Text = "[fgcde] [abcdef] [afgcd]"
            
        Case Is = 606
            Kode.Text = "[fgcde] [abcdef] [fgcde]"
            
        Case Is = 607
            Kode.Text = "[fgcde] [abcdef] [abc]"
            
        Case Is = 608
            Kode.Text = "[fgcde] [abcdef] [abcdefg]"
            
        Case Is = 609
            Kode.Text = "[fgcde] [abcdef] [abcdfg]"
            
        Case Is = 610
            Kode.Text = "[fgcde] [bc] [abcdef]"
            
        Case Is = 611
            Kode.Text = "[fgcde] [bc] [bc]"
            
        Case Is = 612
            Kode.Text = "[fgcde] [bc] [abged]"
            
        Case Is = 613
            Kode.Text = "[fgcde] [bc] [abgcd]"
            
        Case Is = 614
            Kode.Text = "[fgcde] [bc] [fbgc]"
            
        Case Is = 615
            Kode.Text = "[fgcde] [bc] [afgcd]"
            
        Case Is = 616
            Kode.Text = "[fgcde] [bc] [fgcde]"
            
        Case Is = 617
            Kode.Text = "[fgcde] [bc] [abc]"
            
        Case Is = 618
            Kode.Text = "[fgcde] [bc] [abcdefg]"
            
        Case Is = 619
            Kode.Text = "[fgcde] [bc] [abcdfg]"
            
        Case Is = 620
            Kode.Text = "[fgcde] [abged] [abcdef]"
            
        Case Is = 621
            Kode.Text = "[fgcde] [abged] [bc]"
            
        Case Is = 622
            Kode.Text = "[fgcde] [abged] [abged]"
            
        Case Is = 623
            Kode.Text = "[fgcde] [abged] [abgcd]"
            
        Case Is = 624
            Kode.Text = "[fgcde] [abged] [fbgc]"
            
        Case Is = 625
            Kode.Text = "[fgcde] [abged] [afgcd]"
            
        Case Is = 626
            Kode.Text = "[fgcde] [abged] [fgcde]"
            
        Case Is = 627
            Kode.Text = "[fgcde] [abged] [abc]"
            
        Case Is = 628
            Kode.Text = "[fgcde] [abged] [abcdefg]"
            
        Case Is = 629
            Kode.Text = "[fgcde] [abged] [abcdfg]"
            
        Case Is = 630
            Kode.Text = "[fgcde] [abgcd] [abcdef]"
            
        Case Is = 631
            Kode.Text = "[fgcde] [abgcd] [bc]"
            
        Case Is = 632
            Kode.Text = "[fgcde] [abgcd] [abged]"
            
        Case Is = 633
            Kode.Text = "[fgcde] [abgcd] [abgcd]"
            
        Case Is = 634
            Kode.Text = "[fgcde] [abgcd] [fbgc]"
            
        Case Is = 635
            Kode.Text = "[fgcde] [abgcd] [afgcd]"
            
        Case Is = 636
            Kode.Text = "[fgcde] [abgcd] [fgcde]"
            
        Case Is = 637
            Kode.Text = "[fgcde] [abgcd] [abc]"
            
        Case Is = 638
            Kode.Text = "[fgcde] [abgcd] [abcdefg]"
            
        Case Is = 639
            Kode.Text = "[fgcde] [abgcd] [abcdfg]"
            
        Case Is = 640
            Kode.Text = "[fgcde] [fbgc] [abcdef]"
            
        Case Is = 641
            Kode.Text = "[fgcde] [fbgc] [bc]"
            
        Case Is = 642
            Kode.Text = "[fgcde] [fbgc] [abged]"
            
        Case Is = 643
            Kode.Text = "[fgcde] [fbgc] [abgcd]"
            
        Case Is = 644
            Kode.Text = "[fgcde] [fbgc] [fbgc]"
            
        Case Is = 645
            Kode.Text = "[fgcde] [fbgc] [afgcd]"
            
        Case Is = 646
            Kode.Text = "[fgcde] [fbgc] [fgcde]"
            
        Case Is = 647
            Kode.Text = "[fgcde] [fbgc] [abc]"
            
        Case Is = 648
            Kode.Text = "[fgcde] [fbgc] [abcdefg]"
            
        Case Is = 649
            Kode.Text = "[fgcde] [fbgc] [abcdfg]"
            
        Case Is = 650
            Kode.Text = "[fgcde] [afgcd] [abcdef]"
            
        Case Is = 651
            Kode.Text = "[fgcde] [afgcd] [bc]"
            
        Case Is = 652
            Kode.Text = "[fgcde] [afgcd] [abged]"
            
        Case Is = 653
            Kode.Text = "[fgcde] [afgcd] [abgcd]"
            
        Case Is = 654
            Kode.Text = "[fgcde] [afgcd] [fbgc]"
            
        Case Is = 655
            Kode.Text = "[fgcde] [afgcd] [afgcd]"
            
        Case Is = 656
            Kode.Text = "[fgcde] [afgcd] [fgcde]"
            
        Case Is = 657
            Kode.Text = "[fgcde] [afgcd] [abc]"
            
        Case Is = 658
            Kode.Text = "[fgcde] [afgcd] [abcdefg]"
            
        Case Is = 659
            Kode.Text = "[fgcde] [afgcd] [abcdfg]"
            
        Case Is = 660
            Kode.Text = "[fgcde] [fgcde] [abcdef]"
            
        Case Is = 661
            Kode.Text = "[fgcde] [fgcde] [bc]"
            
        Case Is = 662
            Kode.Text = "[fgcde] [fgcde] [abged]"
            
        Case Is = 663
            Kode.Text = "[fgcde] [fgcde] [abgcd]"
            
        Case Is = 664
            Kode.Text = "[fgcde] [fgcde] [fbgc]"
            
        Case Is = 665
            Kode.Text = "[fgcde] [fgcde] [afgcd]"
            
        Case Is = 666
            Kode.Text = "[fgcde] [fgcde] [fgcde]"
            
        Case Is = 667
            Kode.Text = "[fgcde] [fgcde] [abc]"
            
        Case Is = 668
            Kode.Text = "[fgcde] [fgcde] [abcdefg]"
            
        Case Is = 669
            Kode.Text = "[fgcde] [fgcde] [abcdfg]"
            
        Case Is = 670
            Kode.Text = "[fgcde] [abc] [abcdef]"
            
        Case Is = 671
            Kode.Text = "[fgcde] [abc] [bc]"
            
        Case Is = 672
            Kode.Text = "[fgcde] [abc] [abged]"
            
        Case Is = 673
            Kode.Text = "[fgcde] [abc] [abgcd]"
            
        Case Is = 674
            Kode.Text = "[fgcde] [abc] [fbgc]"
            
        Case Is = 675
            Kode.Text = "[fgcde] [abc] [afgcd]"
            
        Case Is = 676
            Kode.Text = "[fgcde] [abc] [fgcde]"
            
        Case Is = 677
            Kode.Text = "[fgcde] [abc] [abc]"
            
        Case Is = 678
            Kode.Text = "[fgcde] [abc] [abcdefg]"
            
        Case Is = 679
            Kode.Text = "[fgcde] [abc] [abcdfg]"
            
        Case Is = 680
            Kode.Text = "[fgcde] [abcdefg] [abcdef]"
            
        Case Is = 681
            Kode.Text = "[fgcde] [abcdefg] [bc]"
            
        Case Is = 682
            Kode.Text = "[fgcde] [abcdefg] [abged]"
            
        Case Is = 683
            Kode.Text = "[fgcde] [abcdefg] [abgcd]"
            
        Case Is = 684
            Kode.Text = "[fgcde] [abcdefg] [fbgc]"
            
        Case Is = 685
            Kode.Text = "[fgcde] [abcdefg] [afgcd]"
            
        Case Is = 686
            Kode.Text = "[fgcde] [abcdefg] [fgcde]"
            
        Case Is = 687
            Kode.Text = "[fgcde] [abcdefg] [abc]"
            
        Case Is = 688
            Kode.Text = "[fgcde] [abcdefg] [abcdefg]"
            
        Case Is = 689
            Kode.Text = "[fgcde] [abcdefg] [abcdfg]"
            
        Case Is = 690
            Kode.Text = "[fgcde] [abcdfg] [abcdef]"
            
        Case Is = 691
            Kode.Text = "[fgcde] [abcdfg] [bc]"
            
        Case Is = 692
            Kode.Text = "[fgcde] [abcdfg] [abged]"
            
        Case Is = 693
            Kode.Text = "[fgcde] [abcdfg] [abgcd]"
            
        Case Is = 694
            Kode.Text = "[fgcde] [abcdfg] [fbgc]"
            
        Case Is = 695
            Kode.Text = "[fgcde] [abcdfg] [afgcd]"
            
        Case Is = 696
            Kode.Text = "[fgcde] [abcdfg] [fgcde]"
            
        Case Is = 697
            Kode.Text = "[fgcde] [abcdfg] [abc]"
            
        Case Is = 698
            Kode.Text = "[fgcde] [abcdfg] [abcdefg]"
            
        Case Is = 699
            Kode.Text = "[fgcde] [abcdfg] [abcdfg]"
            
        Case Is = 700
            Kode.Text = "[abc] [abcdef] [abcdef]"
            
        Case Is = 701
            Kode.Text = "[abc] [abcdef] [bc]"
            
        Case Is = 702
            Kode.Text = "[abc] [abcdef] [abged]"
            
        Case Is = 703
            Kode.Text = "[abc] [abcdef] [abgcd]"
            
        Case Is = 704
            Kode.Text = "[abc] [abcdef] [fbgc]"
            
        Case Is = 705
            Kode.Text = "[abc] [abcdef] [afgcd]"
            
        Case Is = 706
            Kode.Text = "[abc] [abcdef] [fgcde]"
            
        Case Is = 707
            Kode.Text = "[abc] [abcdef] [abc]"
            
        Case Is = 708
            Kode.Text = "[abc] [abcdef] [abcdefg]"
            
        Case Is = 709
            Kode.Text = "[abc] [abcdef] [abcdfg]"
            
        Case Is = 710
            Kode.Text = "[abc] [bc] [abcdef]"
            
        Case Is = 711
            Kode.Text = "[abc] [bc] [bc]"
            
        Case Is = 712
            Kode.Text = "[abc] [bc] [abged]"
            
        Case Is = 713
            Kode.Text = "[abc] [bc] [abgcd]"
            
        Case Is = 714
            Kode.Text = "[abc] [bc] [fbgc]"
            
        Case Is = 715
            Kode.Text = "[abc] [bc] [afgcd]"
            
        Case Is = 716
            Kode.Text = "[abc] [bc] [fgcde]"
            
        Case Is = 717
            Kode.Text = "[abc] [bc] [abc]"
            
        Case Is = 718
            Kode.Text = "[abc] [bc] [abcdefg]"
            
        Case Is = 719
            Kode.Text = "[abc] [bc] [abcdfg]"
            
        Case Is = 720
            Kode.Text = "[abc] [abged] [abcdef]"
            
        Case Is = 721
            Kode.Text = "[abc] [abged] [bc]"
            
        Case Is = 722
            Kode.Text = "[abc] [abged] [abged]"
            
        Case Is = 723
            Kode.Text = "[abc] [abged] [abgcd]"
            
        Case Is = 724
            Kode.Text = "[abc] [abged] [fbgc]"
            
        Case Is = 725
            Kode.Text = "[abc] [abged] [afgcd]"
            
        Case Is = 726
            Kode.Text = "[abc] [abged] [fgcde]"
            
        Case Is = 727
            Kode.Text = "[abc] [abged] [abc]"
            
        Case Is = 728
            Kode.Text = "[abc] [abged] [abcdefg]"
            
        Case Is = 729
            Kode.Text = "[abc] [abged] [abcdfg]"
            
        Case Is = 730
            Kode.Text = "[abc] [abgcd] [abcdef]"
            
        Case Is = 731
            Kode.Text = "[abc] [abgcd] [bc]"
            
        Case Is = 732
            Kode.Text = "[abc] [abgcd] [abged]"
            
        Case Is = 733
            Kode.Text = "[abc] [abgcd] [abgcd]"
            
        Case Is = 734
            Kode.Text = "[abc] [abgcd] [fbgc]"
            
        Case Is = 735
            Kode.Text = "[abc] [abgcd] [afgcd]"
            
        Case Is = 736
            Kode.Text = "[abc] [abgcd] [fgcde]"
            
        Case Is = 737
            Kode.Text = "[abc] [abgcd] [abc]"
            
        Case Is = 738
            Kode.Text = "[abc] [abgcd] [abcdefg]"
            
        Case Is = 739
            Kode.Text = "[abc] [abgcd] [abcdfg]"
            
        Case Is = 740
            Kode.Text = "[abc] [fbgc] [abcdef]"
            
        Case Is = 741
            Kode.Text = "[abc] [fbgc] [bc]"
            
        Case Is = 742
            Kode.Text = "[abc] [fbgc] [abged]"
            
        Case Is = 743
            Kode.Text = "[abc] [fbgc] [abgcd]"
            
        Case Is = 744
            Kode.Text = "[abc] [fbgc] [fbgc]"
            
        Case Is = 745
            Kode.Text = "[abc] [fbgc] [afgcd]"
            
        Case Is = 746
            Kode.Text = "[abc] [fbgc] [fgcde]"
            
        Case Is = 747
            Kode.Text = "[abc] [fbgc] [abc]"
            
        Case Is = 748
            Kode.Text = "[abc] [fbgc] [abcdefg]"
            
        Case Is = 749
            Kode.Text = "[abc] [fbgc] [abcdfg]"
            
        Case Is = 750
            Kode.Text = "[abc] [afgcd] [abcdef]"
            
        Case Is = 751
            Kode.Text = "[abc] [afgcd] [bc]"
            
        Case Is = 752
            Kode.Text = "[abc] [afgcd] [abged]"
            
        Case Is = 753
            Kode.Text = "[abc] [afgcd] [abgcd]"
            
        Case Is = 754
            Kode.Text = "[abc] [afgcd] [fbgc]"
            
        Case Is = 755
            Kode.Text = "[abc] [afgcd] [afgcd]"
            
        Case Is = 756
            Kode.Text = "[abc] [afgcd] [fgcde]"
            
        Case Is = 757
            Kode.Text = "[abc] [afgcd] [abc]"
            
        Case Is = 758
            Kode.Text = "[abc] [afgcd] [abcdefg]"
            
        Case Is = 759
            Kode.Text = "[abc] [afgcd] [abcdfg]"
            
        Case Is = 760
            Kode.Text = "[abc] [fgcde] [abcdef]"
            
        Case Is = 761
            Kode.Text = "[abc] [fgcde] [bc]"
            
        Case Is = 762
            Kode.Text = "[abc] [fgcde] [abged]"
            
        Case Is = 763
            Kode.Text = "[abc] [fgcde] [abgcd]"
            
        Case Is = 764
            Kode.Text = "[abc] [fgcde] [fbgc]"
            
        Case Is = 765
            Kode.Text = "[abc] [fgcde] [afgcd]"
            
        Case Is = 766
            Kode.Text = "[abc] [fgcde] [fgcde]"
            
        Case Is = 767
            Kode.Text = "[abc] [fgcde] [abc]"
            
        Case Is = 768
            Kode.Text = "[abc] [fgcde] [abcdefg]"
            
        Case Is = 769
            Kode.Text = "[abc] [fgcde] [abcdfg]"
            
        Case Is = 770
            Kode.Text = "[abc] [abc] [abcdef]"
            
        Case Is = 771
            Kode.Text = "[abc] [abc] [bc]"
            
        Case Is = 772
            Kode.Text = "[abc] [abc] [abged]"
            
        Case Is = 773
            Kode.Text = "[abc] [abc] [abgcd]"
            
        Case Is = 774
            Kode.Text = "[abc] [abc] [fbgc]"
            
        Case Is = 775
            Kode.Text = "[abc] [abc] [afgcd]"
            
        Case Is = 776
            Kode.Text = "[abc] [abc] [fgcde]"
            
        Case Is = 777
            Kode.Text = "[abc] [abc] [abc]"
            
        Case Is = 778
            Kode.Text = "[abc] [abc] [abcdefg]"
            
        Case Is = 779
            Kode.Text = "[abc] [abc] [abcdfg]"
            
        Case Is = 780
            Kode.Text = "[abc] [abcdefg] [abcdef]"
            
        Case Is = 781
            Kode.Text = "[abc] [abcdefg] [bc]"
            
        Case Is = 782
            Kode.Text = "[abc] [abcdefg] [abged]"
            
        Case Is = 783
            Kode.Text = "[abc] [abcdefg] [abgcd]"
            
        Case Is = 784
            Kode.Text = "[abc] [abcdefg] [fbgc]"
            
        Case Is = 785
            Kode.Text = "[abc] [abcdefg] [afgcd]"
            
        Case Is = 786
            Kode.Text = "[abc] [abcdefg] [fgcde]"
            
        Case Is = 787
            Kode.Text = "[abc] [abcdefg] [abc]"
            
        Case Is = 788
            Kode.Text = "[abc] [abcdefg] [abcdefg]"
            
        Case Is = 789
            Kode.Text = "[abc] [abcdefg] [abcdfg]"
            
        Case Is = 790
            Kode.Text = "[abc] [abcdfg] [abcdef]"
            
        Case Is = 791
            Kode.Text = "[abc] [abcdfg] [bc]"
            
        Case Is = 792
            Kode.Text = "[abc] [abcdfg] [abged]"
            
        Case Is = 793
            Kode.Text = "[abc] [abcdfg] [abgcd]"
            
        Case Is = 794
            Kode.Text = "[abc] [abcdfg] [fbgc]"
            
        Case Is = 795
            Kode.Text = "[abc] [abcdfg] [afgcd]"
            
        Case Is = 796
            Kode.Text = "[abc] [abcdfg] [fgcde]"
            
        Case Is = 797
            Kode.Text = "[abc] [abcdfg] [abc]"
            
        Case Is = 798
            Kode.Text = "[abc] [abcdfg] [abcdefg]"
            
        Case Is = 799
            Kode.Text = "[abc] [abcdfg] [abcdfg]"
            
        Case Is = 800
            Kode.Text = "[abcdefg] [abcdef] [abcdef]"
            
        Case Is = 801
            Kode.Text = "[abcdefg] [abcdef] [bc]"
            
        Case Is = 802
            Kode.Text = "[abcdefg] [abcdef] [abged]"
            
        Case Is = 803
            Kode.Text = "[abcdefg] [abcdef] [abgcd]"
            
        Case Is = 804
            Kode.Text = "[abcdefg] [abcdef] [fbgc]"
            
        Case Is = 805
            Kode.Text = "[abcdefg] [abcdef] [afgcd]"
            
        Case Is = 806
            Kode.Text = "[abcdefg] [abcdef] [fgcde]"
            
        Case Is = 807
            Kode.Text = "[abcdefg] [abcdef] [abc]"
            
        Case Is = 808
            Kode.Text = "[abcdefg] [abcdef] [abcdefg]"
            
        Case Is = 809
            Kode.Text = "[abcdefg] [abcdef] [abcdfg]"
            
        Case Is = 810
            Kode.Text = "[abcdefg] [bc] [abcdef]"
            
        Case Is = 811
            Kode.Text = "[abcdefg] [bc] [bc]"
            
        Case Is = 812
            Kode.Text = "[abcdefg] [bc] [abged]"
            
        Case Is = 813
            Kode.Text = "[abcdefg] [bc] [abgcd]"
            
        Case Is = 814
            Kode.Text = "[abcdefg] [bc] [fbgc]"
            
        Case Is = 815
            Kode.Text = "[abcdefg] [bc] [afgcd]"
            
        Case Is = 816
            Kode.Text = "[abcdefg] [bc] [fgcde]"
            
        Case Is = 817
            Kode.Text = "[abcdefg] [bc] [abc]"
            
        Case Is = 818
            Kode.Text = "[abcdefg] [bc] [abcdefg]"
            
        Case Is = 819
            Kode.Text = "[abcdefg] [bc] [abcdfg]"
            
        Case Is = 820
            Kode.Text = "[abcdefg] [abged] [abcdef]"
            
        Case Is = 821
            Kode.Text = "[abcdefg] [abged] [bc]"
            
        Case Is = 822
            Kode.Text = "[abcdefg] [abged] [abged]"
            
        Case Is = 823
            Kode.Text = "[abcdefg] [abged] [abgcd]"
            
        Case Is = 824
            Kode.Text = "[abcdefg] [abged] [fbgc]"
            
        Case Is = 825
            Kode.Text = "[abcdefg] [abged] [afgcd]"
            
        Case Is = 826
            Kode.Text = "[abcdefg] [abged] [fgcde]"
            
        Case Is = 827
            Kode.Text = "[abcdefg] [abged] [abc]"
            
        Case Is = 828
            Kode.Text = "[abcdefg] [abged] [abcdefg]"
            
        Case Is = 829
            Kode.Text = "[abcdefg] [abged] [abcdfg]"
            
        Case Is = 830
            Kode.Text = "[abcdefg] [abgcd] [abcdef]"
            
        Case Is = 831
            Kode.Text = "[abcdefg] [abgcd] [bc]"
            
        Case Is = 832
            Kode.Text = "[abcdefg] [abgcd] [abged]"
            
        Case Is = 833
            Kode.Text = "[abcdefg] [abgcd] [abgcd]"
            
        Case Is = 834
            Kode.Text = "[abcdefg] [abgcd] [fbgc]"
            
        Case Is = 835
            Kode.Text = "[abcdefg] [abgcd] [afgcd]"
            
        Case Is = 836
            Kode.Text = "[abcdefg] [abgcd] [fgcde]"
            
        Case Is = 837
            Kode.Text = "[abcdefg] [abgcd] [abc]"
            
        Case Is = 838
            Kode.Text = "[abcdefg] [abgcd] [abcdefg]"
            
        Case Is = 839
            Kode.Text = "[abcdefg] [abgcd] [abcdfg]"
            
        Case Is = 840
            Kode.Text = "[abcdefg] [fbgc] [abcdef]"
            
        Case Is = 841
            Kode.Text = "[abcdefg] [fbgc] [bc]"
            
        Case Is = 842
            Kode.Text = "[abcdefg] [fbgc] [abged]"
            
        Case Is = 843
            Kode.Text = "[abcdefg] [fbgc] [abgcd]"
            
        Case Is = 844
            Kode.Text = "[abcdefg] [fbgc] [fbgc]"
            
        Case Is = 845
            Kode.Text = "[abcdefg] [fbgc] [afgcd]"
            
        Case Is = 846
            Kode.Text = "[abcdefg] [fbgc] [fgcde]"
            
        Case Is = 847
            Kode.Text = "[abcdefg] [fbgc] [abc]"
            
        Case Is = 848
            Kode.Text = "[abcdefg] [fbgc] [abcdefg]"
            
        Case Is = 849
            Kode.Text = "[abcdefg] [fbgc] [abcdfg]"
            
        Case Is = 850
            Kode.Text = "[abcdefg] [afgcd] [abcdef]"
            
        Case Is = 851
            Kode.Text = "[abcdefg] [afgcd] [bc]"
            
        Case Is = 852
            Kode.Text = "[abcdefg] [afgcd] [abged]"
            
        Case Is = 853
            Kode.Text = "[abcdefg] [afgcd] [abgcd]"
            
        Case Is = 854
            Kode.Text = "[abcdefg] [afgcd] [fbgc]"
            
        Case Is = 855
            Kode.Text = "[abcdefg] [afgcd] [afgcd]"
            
        Case Is = 856
            Kode.Text = "[abcdefg] [afgcd] [fgcde]"
            
        Case Is = 857
            Kode.Text = "[abcdefg] [afgcd] [abc]"
            
        Case Is = 858
            Kode.Text = "[abcdefg] [afgcd] [abcdefg]"
            
        Case Is = 859
            Kode.Text = "[abcdefg] [afgcd] [abcdfg]"
            
        Case Is = 860
            Kode.Text = "[abcdefg] [fgcde] [abcdef]"
            
        Case Is = 861
            Kode.Text = "[abcdefg] [fgcde] [bc]"
            
        Case Is = 862
            Kode.Text = "[abcdefg] [fgcde] [abged]"
            
        Case Is = 863
            Kode.Text = "[abcdefg] [fgcde] [abgcd]"
            
        Case Is = 864
            Kode.Text = "[abcdefg] [fgcde] [fbgc]"
            
        Case Is = 865
            Kode.Text = "[abcdefg] [fgcde] [afgcd]"
            
        Case Is = 866
            Kode.Text = "[abcdefg] [fgcde] [fgcde]"
            
        Case Is = 867
            Kode.Text = "[abcdefg] [fgcde] [abc]"
            
        Case Is = 868
            Kode.Text = "[abcdefg] [fgcde] [abcdefg]"
            
        Case Is = 869
            Kode.Text = "[abcdefg] [fgcde] [abcdfg]"
            
        Case Is = 870
            Kode.Text = "[abcdefg] [abc] [abcdef]"
            
        Case Is = 871
            Kode.Text = "[abcdefg] [abc] [bc]"
            
        Case Is = 872
            Kode.Text = "[abcdefg] [abc] [abged]"
            
        Case Is = 873
            Kode.Text = "[abcdefg] [abc] [abgcd]"
            
        Case Is = 874
            Kode.Text = "[abcdefg] [abc] [fbgc]"
            
        Case Is = 875
            Kode.Text = "[abcdefg] [abc] [afgcd]"
            
        Case Is = 876
            Kode.Text = "[abcdefg] [abc] [fgcde]"
            
        Case Is = 877
            Kode.Text = "[abcdefg] [abc] [abc]"
            
        Case Is = 878
            Kode.Text = "[abcdefg] [abc] [abcdefg]"
            
        Case Is = 879
            Kode.Text = "[abcdefg] [abc] [abcdfg]"
            
        Case Is = 880
            Kode.Text = "[abcdefg] [abcdefg] [abcdef]"
            
        Case Is = 881
            Kode.Text = "[abcdefg] [abcdefg] [bc]"
            
        Case Is = 882
            Kode.Text = "[abcdefg] [abcdefg] [abged]"
            
        Case Is = 883
            Kode.Text = "[abcdefg] [abcdefg] [abgcd]"
            
        Case Is = 884
            Kode.Text = "[abcdefg] [abcdefg] [fbgc]"
            
        Case Is = 885
            Kode.Text = "[abcdefg] [abcdefg] [afgcd]"
            
        Case Is = 886
            Kode.Text = "[abcdefg] [abcdefg] [fgcde]"
            
        Case Is = 887
            Kode.Text = "[abcdefg] [abcdefg] [abc]"
            
        Case Is = 888
            Kode.Text = "[abcdefg] [abcdefg] [abcdefg]"
            
        Case Is = 889
            Kode.Text = "[abcdefg] [abcdefg] [abcdfg]"
            
        Case Is = 890
            Kode.Text = "[abcdefg] [abcdfg] [abcdef]"
            
        Case Is = 891
            Kode.Text = "[abcdefg] [abcdfg] [bc]"
            
        Case Is = 892
            Kode.Text = "[abcdefg] [abcdfg] [abged]"
            
        Case Is = 893
            Kode.Text = "[abcdefg] [abcdfg] [abgcd]"
            
        Case Is = 894
            Kode.Text = "[abcdefg] [abcdfg] [fbgc]"
            
        Case Is = 895
            Kode.Text = "[abcdefg] [abcdfg] [afgcd]"
            
        Case Is = 896
            Kode.Text = "[abcdefg] [abcdfg] [fgcde]"
            
        Case Is = 897
            Kode.Text = "[abcdefg] [abcdfg] [abc]"
            
        Case Is = 898
            Kode.Text = "[abcdefg] [abcdfg] [abcdefg]"
            
        Case Is = 899
            Kode.Text = "[abcdefg] [abcdfg] [abcdfg]"
            
        Case Is = 900
            Kode.Text = "[abcdfg] [abcdef] [abcdef]"
            
        Case Is = 901
            Kode.Text = "[abcdfg] [abcdef] [bc]"
            
        Case Is = 902
            Kode.Text = "[abcdfg] [abcdef] [abged]"
            
        Case Is = 903
            Kode.Text = "[abcdfg] [abcdef] [abgcd]"
            
        Case Is = 904
            Kode.Text = "[abcdfg] [abcdef] [fbgc]"
            
        Case Is = 905
            Kode.Text = "[abcdfg] [abcdef] [afgcd]"
            
        Case Is = 906
            Kode.Text = "[abcdfg] [abcdef] [fgcde]"
            
        Case Is = 907
            Kode.Text = "[abcdfg] [abcdef] [abc]"
            
        Case Is = 908
            Kode.Text = "[abcdfg] [abcdef] [abcdefg]"
            
        Case Is = 909
            Kode.Text = "[abcdfg] [abcdef] [abcdfg]"
            
        Case Is = 910
            Kode.Text = "[abcdfg] [bc] [abcdef]"
            
        Case Is = 911
            Kode.Text = "[abcdfg] [bc] [bc]"
            
        Case Is = 912
            Kode.Text = "[abcdfg] [bc] [abged]"
            
        Case Is = 913
            Kode.Text = "[abcdfg] [bc] [abgcd]"
            
        Case Is = 914
            Kode.Text = "[abcdfg] [bc] [fbgc]"
            
        Case Is = 915
            Kode.Text = "[abcdfg] [bc] [afgcd]"
            
        Case Is = 916
            Kode.Text = "[abcdfg] [bc] [fgcde]"
            
        Case Is = 917
            Kode.Text = "[abcdfg] [bc] [abc]"
            
        Case Is = 918
            Kode.Text = "[abcdfg] [bc] [abcdefg]"
            
        Case Is = 919
            Kode.Text = "[abcdfg] [bc] [abcdfg]"
            
        Case Is = 920
            Kode.Text = "[abcdfg] [abged] [abcdef]"
            
        Case Is = 921
            Kode.Text = "[abcdfg] [abged] [bc]"
            
        Case Is = 922
            Kode.Text = "[abcdfg] [abged] [abged]"
            
        Case Is = 923
            Kode.Text = "[abcdfg] [abged] [abgcd]"
            
        Case Is = 924
            Kode.Text = "[abcdfg] [abged] [fbgc]"
            
        Case Is = 925
            Kode.Text = "[abcdfg] [abged] [afgcd]"
            
        Case Is = 926
            Kode.Text = "[abcdfg] [abged] [fgcde]"
            
        Case Is = 927
            Kode.Text = "[abcdfg] [abged] [abc]"
            
        Case Is = 928
            Kode.Text = "[abcdfg] [abged] [abcdefg]"
            
        Case Is = 929
            Kode.Text = "[abcdfg] [abged] [abcdfg]"
            
        Case Is = 930
            Kode.Text = "[abcdfg] [abgcd] [abcdef]"
            
        Case Is = 931
            Kode.Text = "[abcdfg] [abgcd] [bc]"
            
        Case Is = 932
            Kode.Text = "[abcdfg] [abgcd] [abged]"
            
        Case Is = 933
            Kode.Text = "[abcdfg] [abgcd] [abgcd]"
            
        Case Is = 934
            Kode.Text = "[abcdfg] [abgcd] [fbgc]"
            
        Case Is = 935
            Kode.Text = "[abcdfg] [abgcd] [afgcd]"
            
        Case Is = 936
            Kode.Text = "[abcdfg] [abgcd] [fgcde]"
            
        Case Is = 937
            Kode.Text = "[abcdfg] [abgcd] [abc]"
            
        Case Is = 938
            Kode.Text = "[abcdfg] [abgcd] [abcdefg]"
            
        Case Is = 939
            Kode.Text = "[abcdfg] [abgcd] [abcdfg]"
            
        Case Is = 940
            Kode.Text = "[abcdfg] [fbgc] [abcdef]"
            
        Case Is = 941
            Kode.Text = "[abcdfg] [fbgc] [bc]"
            
        Case Is = 942
            Kode.Text = "[abcdfg] [fbgc] [abged]"
            
        Case Is = 943
            Kode.Text = "[abcdfg] [fbgc] [abgcd]"
            
        Case Is = 944
            Kode.Text = "[abcdfg] [fbgc] [fbgc]"
            
        Case Is = 945
            Kode.Text = "[abcdfg] [fbgc] [afgcd]"
            
        Case Is = 946
            Kode.Text = "[abcdfg] [fbgc] [fgcde]"
            
        Case Is = 947
            Kode.Text = "[abcdfg] [fbgc] [abc]"
            
        Case Is = 948
            Kode.Text = "[abcdfg] [fbgc] [abcdefg]"
            
        Case Is = 949
            Kode.Text = "[abcdfg] [fbgc] [abcdfg]"
            
        Case Is = 950
            Kode.Text = "[abcdfg] [afgcd] [abcdef]"
            
        Case Is = 951
            Kode.Text = "[abcdfg] [afgcd] [bc]"
            
        Case Is = 952
            Kode.Text = "[abcdfg] [afgcd] [abged]"
            
        Case Is = 953
            Kode.Text = "[abcdfg] [afgcd] [abgcd]"
            
        Case Is = 954
            Kode.Text = "[abcdfg] [afgcd] [fbgc]"
            
        Case Is = 955
            Kode.Text = "[abcdfg] [afgcd] [afgcd]"
            
        Case Is = 956
            Kode.Text = "[abcdfg] [afgcd] [fgcde]"
            
        Case Is = 957
            Kode.Text = "[abcdfg] [afgcd] [abc]"
            
        Case Is = 958
            Kode.Text = "[abcdfg] [afgcd] [abcdefg]"
            
        Case Is = 959
            Kode.Text = "[abcdfg] [afgcd] [abcdfg]"
            
        Case Is = 960
            Kode.Text = "[abcdfg] [fgcde] [abcdef]"
            
        Case Is = 961
            Kode.Text = "[abcdfg] [fgcde] [bc]"
            
        Case Is = 962
            Kode.Text = "[abcdfg] [fgcde] [abged]"
            
        Case Is = 963
            Kode.Text = "[abcdfg] [fgcde] [abgcd]"
            
        Case Is = 964
            Kode.Text = "[abcdfg] [fgcde] [fbgc]"
            
        Case Is = 965
            Kode.Text = "[abcdfg] [fgcde] [afgcd]"
            
        Case Is = 966
            Kode.Text = "[abcdfg] [fgcde] [fgcde]"
            
        Case Is = 967
            Kode.Text = "[abcdfg] [fgcde] [abc]"
            
        Case Is = 968
            Kode.Text = "[abcdfg] [fgcde] [abcdefg]"
            
        Case Is = 969
            Kode.Text = "[abcdfg] [fgcde] [abcdfg]"
            
        Case Is = 970
            Kode.Text = "[abcdfg] [abc] [abcdef]"
            
        Case Is = 971
            Kode.Text = "[abcdfg] [abc] [bc]"
            
        Case Is = 972
            Kode.Text = "[abcdfg] [abc] [abged]"
            
        Case Is = 973
            Kode.Text = "[abcdfg] [abc] [abgcd]"
            
        Case Is = 974
            Kode.Text = "[abcdfg] [abc] [fbgc]"
            
        Case Is = 975
            Kode.Text = "[abcdfg] [abc] [afgcd]"
            
        Case Is = 976
            Kode.Text = "[abcdfg] [abc] [fgcde]"
            
        Case Is = 977
            Kode.Text = "[abcdfg] [abc] [abc]"
            
        Case Is = 978
            Kode.Text = "[abcdfg] [abc] [abcdefg]"
            
        Case Is = 979
            Kode.Text = "[abcdfg] [abc] [abcdfg]"
            
        Case Is = 980
            Kode.Text = "[abcdfg] [abcdefg] [abcdef]"
            
        Case Is = 981
            Kode.Text = "[abcdfg] [abcdefg] [bc]"
            
        Case Is = 982
            Kode.Text = "[abcdfg] [abcdefg] [abged]"
            
        Case Is = 983
            Kode.Text = "[abcdfg] [abcdefg] [abgcd]"
            
        Case Is = 984
            Kode.Text = "[abcdfg] [abcdefg] [fbgc]"
            
        Case Is = 985
            Kode.Text = "[abcdfg] [abcdefg] [afgcd]"
            
        Case Is = 986
            Kode.Text = "[abcdfg] [abcdefg] [fgcde]"
            
        Case Is = 987
            Kode.Text = "[abcdfg] [abcdefg] [abc]"
            
        Case Is = 988
            Kode.Text = "[abcdfg] [abcdefg] [abcdefg]"
            
        Case Is = 989
            Kode.Text = "[abcdfg] [abcdefg] [abcdfg]"
            
        Case Is = 990
            Kode.Text = "[abcdfg] [abcdfg] [abcdef]"
            
        Case Is = 991
            Kode.Text = "[abcdfg] [abcdfg] [bc]"
            
        Case Is = 992
            Kode.Text = "[abcdfg] [abcdfg] [abged]"
            
        Case Is = 993
            Kode.Text = "[abcdfg] [abcdfg] [abgcd]"
            
        Case Is = 994
            Kode.Text = "[abcdfg] [abcdfg] [fbgc]"
            
        Case Is = 995
            Kode.Text = "[abcdfg] [abcdfg] [afgcd]"
            
        Case Is = 996
            Kode.Text = "[abcdfg] [abcdfg] [fgcde]"
            
        Case Is = 997
            Kode.Text = "[abcdfg] [abcdfg] [abc]"
            
        Case Is = 998
            Kode.Text = "[abcdfg] [abcdfg] [abcdefg]"
            
        Case Is = 999
            Kode.Text = "[abcdfg] [abcdfg] [abcdfg]"
            
        Case Is = 1000
            Kode.Text = "[bc] [abcdef] [abcdef] [abcdef]"
            
    End Select
    
    
    If H > 1000 Or H < 0 Then
        Hasil.Text = "[ERROR] Num Max Limit: 1000"
        Kode.Text = "[ERROR] Num Max Limit: 1000"
    End If
            
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


