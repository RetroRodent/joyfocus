; joyfocus 1.0 LazyTech
; A public domain work under the UnLicense. See LICENSE for details.
#Persistent
SetTimer, WatchAxis, 100 ; milliseconds
return

WatchAxis:
GetKeyState, JoyX, JoyX  ; Get position of stick Yaw.
GetKeyState, JoyY, JoyY  ; Get position of stick Pitch.
GetKeyState, JoyZ, JoyZ  ; Get position of Throttle.
YawWatcherPrev := YawWatcher
PitchWatcherPrev := PitchWatcher
ThrottleWatcherPrev := ThrottleWatcher
JoyXf := Floor(JoyX)
JoyYf := Floor(JoyY)
JoyZf := Floor(JoyZ)

if (JoyXf - YawWatcherPrev > 10 || JoyXf - YawWatcherPrev < -10) or (JoyYf - PitchWatcherPrev > 10 || JoyYf - YawWatcherPrev < -10) or (JoyZf - ThrottleWatcherPrev > 10 || JoyZf - ThrottleWatcherPrev < -10)
{
	IfWinExist, Elite - Dangerous (CLIENT)
	{
		YawWatcher := JoyXf
		PitchWatcher := JoyYf
		ThrottleWatcher := JoyZf
		WinActivate
		;ToolTip, %YawWatcherPrev% %YawWatcher%`n%PitchWatcherPrev% %PitchWatcher%`n%ThrottleWatcherPrev% %ThrottleWatcher%
		return
	}
}
else
{
	;ToolTip, Same
	return
}


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
