VERSION 5.00
Begin VB.Form Form1 
   BackColor       =   &H80000007&
   BorderStyle     =   0  'None
   ClientHeight    =   66660
   ClientLeft      =   -3180
   ClientTop       =   -1800
   ClientWidth     =   77775
   Icon            =   "Form1.frx":0000
   LinkTopic       =   "Form1"
   ScaleHeight     =   66660
   ScaleWidth      =   77775
   ShowInTaskbar   =   0   'False
   StartUpPosition =   2  'ÆÁÄ»ÖÐÐÄ
   Begin VB.Timer Timer1 
      Left            =   480
      Top             =   12480
   End
   Begin VB.CommandButton Command1 
      Appearance      =   0  'Flat
      BackColor       =   &H00000000&
      BeginProperty Font 
         Name            =   "Î¢ÈíÑÅºÚ"
         Size            =   12
         Charset         =   134
         Weight          =   400
         Underline       =   0   'False
         Italic          =   0   'False
         Strikethrough   =   0   'False
      EndProperty
      Height          =   13164
      Left            =   -100
      MaskColor       =   &H00FFFFFF&
      Style           =   1  'Graphical
      TabIndex        =   0
      TabStop         =   0   'False
      Top             =   -120
      Width           =   23244
   End
   Begin VB.CommandButton Command2 
      BackColor       =   &H00000000&
      Cancel          =   -1  'True
      Height          =   13164
      Left            =   -100
      MaskColor       =   &H00000000&
      Style           =   1  'Graphical
      TabIndex        =   1
      TabStop         =   0   'False
      Top             =   -100
      Width           =   23244
   End
   Begin VB.Shape Shape1 
      BackColor       =   &H00FF8080&
      Height          =   495
      Left            =   0
      Shape           =   1  'Square
      Top             =   -120
      Width           =   77775
   End
End
Attribute VB_Name = "Form1"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Private Declare Function ShowCursor Lib "user32" (ByVal bShow As Long) As Long

Private Sub Command1_Click()
ShowCursor 1
Timer1.Enabled = True
Command1.Visible = False
Command2.Visible = True
'Timer1.Enabled = False
Timer1.Enabled = True
'timer2.Interval = 3000
Form3.Visible = True
Form2.Visible = False
End Sub

Private Sub Command2_Click()
Shell "c://Users/hitevision/Desktop/¸ß¿¼2018.exe"
'Shell "d://¸ß¿¼2018.exe"
End
End Sub

Private Sub Form_Load()
ShowCursor 0
Timer1.Interval = 3000
Form2.Visible = True
Form3.Visible = False
Command1.Visible = True
Command2.Visible = False
Timer1.Enabled = False
'timer2.Enabled = False
Shell "taskkill /IM ¸ß¿¼2018.exe"
End Sub

Private Sub Timer1_Timer()
Command1.Visible = True
Command2.Visible = False
Form3.Visible = False
Form2.Visible = True
End Sub

