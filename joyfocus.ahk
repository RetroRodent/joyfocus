; joyfocus 1.1 LazyTech
; A public domain work under the UnLicense. See LICENSE for details.
#Persistent
SetTimer, WatchAxis, 100 ; milliseconds
return

; If this doesn't work with your stick/throttle/gamepad/edtracker, use 
; the joylist.ahk script to find out what numbers AHK thinks your devices
; are on. 
; Please check the README at https://github.com/RetroRodent/joyfocus before using.

; To change any of these checks, insert your detected device number from joylist.ahk
; This would monitor Yaw on device 2 and Throttle on device 5
; GetKeyState, JoyX, 2JoyX
; GetKeyState, JoyZ, 5JoyZ
WatchAxis:
GetKeyState, JoyX, JoyX  ; Get position of stick Roll.
GetKeyState, JoyY, JoyY  ; Get position of stick Pitch.
GetKeyState, JoyZ, JoyZ  ; Get position of Throttle.
RollWatcherPrev := RollWatcher
PitchWatcherPrev := PitchWatcher
ThrottleWatcherPrev := ThrottleWatcher
JoyXf := Floor(JoyX)
JoyYf := Floor(JoyY)
JoyZf := Floor(JoyZ)


if (JoyXf - RollWatcherPrev > 10 || JoyXf - RollWatcherPrev < -10) or (JoyYf - PitchWatcherPrev > 10 || JoyYf - PitchWatcherPrev < -10) or (JoyZf - ThrottleWatcherPrev > 10 || JoyZf - ThrottleWatcherPrev < -10)
{
	IfWinExist, Elite - Dangerous (CLIENT)
	{
		RollWatcher := JoyXf
		PitchWatcher := JoyYf
		ThrottleWatcher := JoyZf
		WinActivate
		;ToolTip, %RollWatcherPrev% %RollWatcher%`n%PitchWatcherPrev% %PitchWatcher%`n%ThrottleWatcherPrev% %ThrottleWatcher%
		return
	}
}
else
{
	;ToolTip, Same
	return
}

; To check buttons on a different device, insert your detected device number from joylist.ahk
; This would monitor button 5 on device 2:
; 2Joy5::
Joy1::
Joy2::
Joy3::
Joy4::
Joy5::
Joy6::
Joy7::
Joy8::
Joy9::
Joy10::
Joy11::
Joy12::
Joy13::
Joy14::
Joy15::
Joy16::
Joy17::
Joy18::
Joy19::
IfWinExist, Elite - Dangerous (CLIENT)
{
	WinActivate
	; ToolTip, Click
	return
}
else
{
	return
}
