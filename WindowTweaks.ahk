#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance force

ThisTitle := "Window Tweaks"
Version := "1.0"
WindowTitle := ThisTitle " V" Version

MsgBox, , %WindowTitle%, %A_ScriptName% started... (Alt+i for info), 2

!i:: ; ------------------------------------ info box
MsgBox, 64, %WindowTitle%,
(
Alt+w - Make active window to stay on top
Alt+q - Stop making active window stay on top

Alt+t - Make active window transparent
Alt+r - Make active window opaque

Alt+i - Info box (this)
Alt+x - Exit script
)
return

!x:: ; ------------------------------------ exit script
MsgBox, 17, %WindowTitle%, Exit %A_ScriptName%?,
IfMsgBox, OK
	ExitApp
MsgBox, , %WindowTitle%, Script continuing, 1
return

!w:: ; ------------------------------------ pin
Winset, AlwaysOnTop, On, A 
return

!q:: ; ------------------------------------ unpin
Winset, AlwaysOnTop, Off, A 
return

!t:: ; ------------------------------------ transparent
WinSet, Transparent, 150, A
return

!r:: ; ------------------------------------ opaque
WinSet, Transparent, 255, A
WinSet, Transparent, Off, A
return

