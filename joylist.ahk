; Based on Joystick Test Script by www.autohotkey.com
; joyfocus 1.1 LazyTech

EveryDevice := Object()

Loop 16  ; Query each joystick number to find out which ones exist.
{
	GetKeyState, JoyName, %A_Index%JoyName
	GetKeyState, JoyButtons, %A_Index%JoyButtons
	GetKeyState, JoyInfo, %A_Index%JoyInfo
	GetKeyState, JoyX, %A_Index%JoyX
	GetKeyState, JoyY, %A_Index%JoyY
	if JoyName <>
	{
		JoystickNumber := A_Index
		if JoyX
		{
			JoyInfoX := "X axis`n"
		}
		if JoyY
		{
			JoyInfoY := "Y axis`n"
		}
		IfInString, JoyInfo, Z
		{
			JoyInfoZ := "Z axis`n"
		}
		IfInString, JoyInfo, R
		{
			JoyInfoR := "R axis`n"
		}
		IfInString, JoyInfo, U
		{
			JoyInfoU := "U axis`n"
		}
		IfInString, JoyInfo, V
		{
			JoyInfoV := "V axis`n"
		}
		IfInString, JoyInfo, P
		{
			IfInString, JoyInfo, D
			{
				JoyInfoP := " and a digital POV hat"
			}
			else
			{
				JoyInfoP := " and an analog POV hat"
			}
		}
		
		EveryDevice[A_Index] := JoyName " with " JoyButtons " buttons" JoyInfoP ". `nWe've detected the following analog axis : `n`n" JoyInfoX JoyInfoY JoyInfoZ JoyInfoR JoyInfoU JoyInfoV
		;break
	}
}
if JoystickNumber <= 0
{
	MsgBox The system does not appear to have any joysticks.
	ExitApp
}

#SingleInstance

for index, element in EveryDevice
{
    MsgBox % "Device " . index . " is " . element
}
return
