#include <GUIConstants.au3>
#include 'CommMG64.au3' ;or if you save the commMg.dll in the @scripdir use #include @SciptDir & '\commmg.dll'
#include <GuiEdit.au3>
#include <GuiComboBox.au3>
#include <windowsconstants.au3>
#include <buttonconstants.au3>
Local $err
$init = _CommSetPort(3, $err)
While ( Not $init )
	$init = _CommSetPort(3, $err)
WEnd
ConsoleWrite($init)

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>
Local $aButtons[1][1] = [['']]

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("", 374, 300, 195, 127)
GUISetBkColor(0x77aa77)
;~~~~~~~~~~~~~~~~ input ~~~~~~~~~~~~~~~~
$Input1 = GUICtrlCreateInput('',8,250, 361)
$Dum = GUICtrlCreateDummy()
;~ Dim $accels[1][2] = [["{ENTER}", $Dum]]
;~ GUISetAccelerators($accels)

;~~~~~~~~~~~~~~~~ Colours ~~~~~~~~~~~~~~~~
$Group1 = GUICtrlCreateGroup("Colours", 8, 8, 361, 145)

;~~~~~~~~~~~~~~~~ Red ~~~~~~~~~~~~~~~~
$Button1 = GUICtrlCreateButton("", 16, 24, 75, 25)
GUICtrlSetBkColor(-1, 0xFF0000)
$Button2 = GUICtrlCreateButton("", 16, 56, 75, 25)
GUICtrlSetBkColor(-1, 0xfc900c)
$Button3 = GUICtrlCreateButton("", 16, 88, 75, 25)
GUICtrlSetBkColor(-1, 0xfce65a)
$Button4 = GUICtrlCreateButton("", 16, 120, 75, 25)
GUICtrlSetBkColor(-1, 0xd1fc5a)
$Button5 = GUICtrlCreateButton("", 104, 24, 75, 25)
GUICtrlSetBkColor(-1, 0xEDD739)
$Button6 = GUICtrlCreateButton("", 104, 56, 75, 25)
GUICtrlSetBkColor(-1, 0x5afc78)
$Button7 = GUICtrlCreateButton("", 104, 88, 75, 25)
GUICtrlSetBkColor(-1, 0x7bf904)
$Button8 = GUICtrlCreateButton("", 104, 120, 75, 25)
GUICtrlSetBkColor(-1, 0x02f8fc)
$Button9 = GUICtrlCreateButton("", 192, 24, 75, 25)
GUICtrlSetBkColor(-1, 0x1eaafc)
$Button10 = GUICtrlCreateButton("", 192, 56, 75, 25)
GUICtrlSetBkColor(-1, 0x004EFD)
$Button11 = GUICtrlCreateButton("", 192, 88, 75, 25)
GUICtrlSetBkColor(-1, 0x0787ff)
$Button12 = GUICtrlCreateButton("", 192, 120, 75, 25)
GUICtrlSetBkColor(-1, 0x80a7fc)
$Button13 = GUICtrlCreateButton("", 280, 24, 75, 25)
GUICtrlSetBkColor(-1, 0x9780fc)
$Button14 = GUICtrlCreateButton("", 280, 56, 75, 25)
GUICtrlSetBkColor(-1, 0xD0489A)
$Button15 = GUICtrlCreateButton("", 280, 88, 75, 25)
GUICtrlSetBkColor(-1, 0xE476AF)
$Button16 = GUICtrlCreateButton("", 280, 120, 75, 25)
GUICtrlSetBkColor(-1, 0xFFFFFF)

;~~~~~~~~~~~~~~~~ Controls ~~~~~~~~~~~~~~~~
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Controls", 8, 160, 361, 81)
$Button18 = GUICtrlCreateButton("On", 16, 176, 75, 25)
$Button17 = GUICtrlCreateButton("Off", 16, 208, 75, 25)
$Button22 = GUICtrlCreateButton("Flash", 104, 208, 75, 25)
$Button19 = GUICtrlCreateButton("Strobe", 104, 176, 75, 25)
$Button20 = GUICtrlCreateButton("Fade", 192, 208, 75, 25)
$Button21 = GUICtrlCreateButton("Smooth", 192, 176, 75, 25)
$Button23 = GUICtrlCreateButton("Speed", 280, 176, 75, 25)
$Button24 = GUICtrlCreateButton("Dim", 280, 208, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)

#EndRegion ### END Koda GUI section ###
;~ _CommSendString('0') ; Y
;~ ;~ Exit
;~ For $i = 1 To 137 Step +1
;~       _CommSendString(Chr($i)) ; Y
;~       $ret = InputBox('','')
;~       If $ret Then
;~             ConsoleWrite($ret & ' ' & $i & ' ' & Chr($i) & @CRLF) ; Y
;~       EndIf
;~       ;~ _CommSendString('i') ; Y
;~       ;~ Sleep(250)
;~ Next
GUISetState(@SW_SHOW)

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $Input1
				ConsoleWrite("Enter pressed in Edit1" & @CRLF)
				_CommSendString(GUICtrlRead($Input1))
		Case $Dum
			If ControlGetFocus($Form1) = "Edit1" Then 
				ConsoleWrite("Enter pressed in Edit1" & @CRLF)
				_CommSendString(GUICtrlRead($Input1))
			EndIf
		Case $GUI_EVENT_CLOSE
			Exit
		; ~~~~~~~~~~~~~~~~ Colours ~~~~~~~~~~~~~~~~ 
		Case $Button1 ;Red
			_CommSendString('d') ; Y
		Case $Button2 ;vermilion
			_CommSendString('b') ; Y
		Case $Button3 ; Orange light
			_CommSendString('f') ; Y
		Case $Button4 ;yellow
			_CommSendString('a') ; y
		Case $Button5 ;chartreuse
			_CommSendString('e') ; y
		Case $Button6 ;green
			_CommSendString('t') ; y
		Case $Button7 ;light green
			_CommSendString('r') ; y
		Case $Button8 ;light blue
			_CommSendString('6') ; y
		Case $Button9 ;lighter blue?
			_CommSendString('1') ; y
		Case $Button10 ;blue
			_CommSendString('l') ; y
		Case $Button11 ;purple
			_CommSendString('5') ; y
		Case $Button12
			_CommSendString('j') ; y
		Case $Button13
			_CommSendString('n') ; y
		Case $Button14
			_CommSendString('i') ; y
		Case $Button15 ; Pink
			_CommSendString('m') ; y
		Case $Button16
			_CommSendString('<') ; y

		; ~~~~~~~~~~~~~~~~ Controls ~~~~~~~~~~~~~~~~
		Case $Button17 ;Off
			_CommSendString('h')
		Case $Button18 ;On
			_CommSendString('8')
		Case $Button19 ;Strobe
			_CommSendString('^')
		Case $Button20 ;Fade
			_CommSendString('}')
		Case $Button21 ;Smooth
			_CommSendString('y') ;9
		Case $Button22 ;Flash
			_CommSendString(':')
		Case $Button23 ;Speed
			_CommSendString('@')
		Case $Button24 ;Dim
			_CommSendString('0')
	EndSwitch
WEnd
