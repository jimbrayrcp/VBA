VERSION 5.00
Begin {C62A69F0-16DC-11CE-9E98-00AA00574A4F} frmDisableClose 
   Caption         =   "QueryClose Demo"
   ClientHeight    =   1905
   ClientLeft      =   45
   ClientTop       =   330
   ClientWidth     =   4455
   OleObjectBlob   =   "frmDisableClose.frx":0000
   StartUpPosition =   1  'CenterOwner
End
Attribute VB_Name = "frmDisableClose"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False
Option Explicit

Private Sub cmdOK_Click()
    Unload Me
    Application.EnableCancelKey = xlInterrupt
End Sub

Private Sub UserForm_QueryClose _
  (Cancel As Integer, CloseMode As Integer)
    If CloseMode = vbFormControlMenu Then
        MsgBox "Click the OK button to close the form."
        Cancel = True
    End If
End Sub


