#include <GUIConstants.au3>
#include 'CommMG64.au3' ;or if you save the commMg.dll in the @scripdir use #include @SciptDir & '\commmg.dll'
#include <GuiEdit.au3>
#include <GuiComboBox.au3>
#include <windowsconstants.au3>
#include <buttonconstants.au3>
Local $err
$init = _CommSetPort(3, $err)

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <WindowsConstants.au3>

#Region ### START Koda GUI section ### Form=
$Form1 = GUICreate("", 374, 251, 195, 127)
;~~~~~~~~~~~~~~~~ Colours ~~~~~~~~~~~~~~~~
$Group1 = GUICtrlCreateGroup("Colours", 8, 8, 361, 145)

;~~~~~~~~~~~~~~~~ Red ~~~~~~~~~~~~~~~~
$Button1 = GUICtrlCreateButton("", 16, 24, 75, 25)
GUICtrlSetBkColor(-1, 0xFF0000)
$Button2 = GUICtrlCreateButton("", 16, 56, 75, 25)
GUICtrlSetBkColor(-1, 0xDE3A38)
$Button3 = GUICtrlCreateButton("", 16, 88, 75, 25)
GUICtrlSetBkColor(-1, 0xEA5939)
$Button4 = GUICtrlCreateButton("", 16, 120, 75, 25)
GUICtrlSetBkColor(-1, 0xF7A22E)
$Button5 = GUICtrlCreateButton("", 104, 24, 75, 25)
GUICtrlSetBkColor(-1, 0xEDD739)
$Button6 = GUICtrlCreateButton("", 104, 56, 75, 25)
GUICtrlSetBkColor(-1, 0x00FF00)
$Button7 = GUICtrlCreateButton("", 104, 88, 75, 25)
GUICtrlSetBkColor(-1, 0x00AA00)
$Button8 = GUICtrlCreateButton("", 104, 120, 75, 25)
GUICtrlSetBkColor(-1, 0x366F7E)
$Button9 = GUICtrlCreateButton("", 192, 24, 75, 25)
GUICtrlSetBkColor(-1, 0x295B91)
$Button10 = GUICtrlCreateButton("", 192, 56, 75, 25)
GUICtrlSetBkColor(-1, 0x151D7B)
$Button11 = GUICtrlCreateButton("", 192, 88, 75, 25)
GUICtrlSetBkColor(-1, 0x284BBB)
$Button12 = GUICtrlCreateButton("", 192, 120, 75, 25)
GUICtrlSetBkColor(-1, 0x284EBB)
$Button13 = GUICtrlCreateButton("", 280, 24, 75, 25)
GUICtrlSetBkColor(-1, 0x4F347D)
$Button14 = GUICtrlCreateButton("", 280, 56, 75, 25)
GUICtrlSetBkColor(-1, 0xD0489A)
$Button15 = GUICtrlCreateButton("", 280, 88, 75, 25)
GUICtrlSetBkColor(-1, 0xE476AF)
$Button16 = GUICtrlCreateButton("", 280, 120, 75, 25)
GUICtrlSetBkColor(-1, 0xFFFFFF)

;~~~~~~~~~~~~~~~~ Controls ~~~~~~~~~~~~~~~~
GUICtrlCreateGroup("", -99, -99, 1, 1)
$Group2 = GUICtrlCreateGroup("Controls", 8, 160, 361, 81)
$Button17 = GUICtrlCreateButton("Off", 16, 176, 75, 25)
$Button18 = GUICtrlCreateButton("On", 16, 208, 75, 25)
$Button19 = GUICtrlCreateButton("Strobe", 104, 176, 75, 25)
$Button20 = GUICtrlCreateButton("Fade", 104, 208, 75, 25)
$Button21 = GUICtrlCreateButton("Smooth", 192, 176, 75, 25)
$Button22 = GUICtrlCreateButton("Flash", 192, 208, 75, 25)
$Button23 = GUICtrlCreateButton("Speed", 280, 176, 75, 25)
$Button24 = GUICtrlCreateButton("Dim", 280, 208, 75, 25)
GUICtrlCreateGroup("", -99, -99, 1, 1)

GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
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
			_CommSendString('1') ; ?
		Case $Button9 ;lighter blue?
			_CommSendString('8') ; 
		Case $Button10
			_CommSendString('9') ; 
		Case $Button11
			_CommSendString('a') ; 
		Case $Button12
			_CommSendString('b') ; 
		Case $Button13
			_CommSendString('c') ; 
		Case $Button13
			_CommSendString('c') ; 
		Case $Button14
			_CommSendString('d') ; 
		Case $Button15
			_CommSendString('e') ; 
		Case $Button16
			_CommSendString('<') ; 

		; ~~~~~~~~~~~~~~~~ Controls ~~~~~~~~~~~~~~~~
		Case $Button17 ;Off
			_CommSendString('h')
		Case $Button18 ;On
			_CommSendString(' ') ;?????????
		Case $Button19 ;Strobe
			_CommSendString('i')
		Case $Button20 ;Fade
			_CommSendString('}')
		Case $Button21 ;Smooth
			_CommSendString('y')
		Case $Button22 ;Flash
			_CommSendString(':')
		Case $Button23 ;Speed
			_CommSendString('@')
		Case $Button24 ;Dim
			_CommSendString('0')
	EndSwitch
WEnd
