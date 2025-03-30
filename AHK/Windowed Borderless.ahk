#Requires AutoHotkey v2.0

;This script positions the selected window to fill the entire screen (assuming size of the window matches monitor)

;This is the shortcut key for ALT+Q
!q::
{
	WinGetPos ,, &Width,, "A"
	WinGetClientPos ,, &ClientWidth,, "A"
	
	RightBorder := -(Width - ClientWidth) / 2
	
	WinMove RightBorder, -31,,, "A"
}