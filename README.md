# joyfocus

An AutoHotKey script to give the game "Elite : Dangerous" focus when you move your joystick.

Easily modified to work for other games if desired.

## Installation

+ Download and install [AutoHotKey](http://ahkscript.org)
+ Doubleclick `joylist.ahk` to check your devices are detected by AHK.
+ Make modifications to joyfocus.ahk or windows control panel if required (see below)
+ Double click joyfocus.ahk 

or

+ Copy the contents into your AutoHotkey.ahk and run AutoHotKey

## About

There are some very good reasons why a program that doesn't have focus should ignore inputs, we're ignoring those in order to prevent untimely virtual death and debt.

This script runs in the background and checks every 100ms to see if your first input device has been moved by more than 10% on the XY of the stick or if the throttle has been moved. It also checks if you have pressed any button numbered 1 through 19.

If any of these have happened, Elite is given input focus and the joystick movements will be detected by the game.

No inputs are sent to the game from this script and nothing needs to be rebound and no virtual devices need to be installed, though this would probably detect those too if you wanted it to.

## Notes

All of my sticks are detected as "Microsoft PC-joystick driver" by joylist.ahk because I use generic drivers, yours may have more unique names.

AHK isn't 100% accurate at reporting device names or available axis names so we do our best. 
I don't have a throttle-only unit, so if we detect X and Y axis on a device that can't possibly have those, please forgive and ignore that.

You can usually force this script to detect a particular device as the default by setting it as the "Preferred device" in windows.

+ To do that, go to the game controllers control panel, or press WIN+R, type joy.cpl and press Enter.
+ Click "Advanced..." 
+ Select the device from the drop down box.

It should now be reported as device 1 by joylist.ahk and movements detected with joyfocus.ahk

To change any of these checks, exit the script with your detected device number from joylist.ahk 
This would monitor Yaw on device 2 and Throttle on device 5:

`GetKeyState, JoyX, 2JoyX`

`GetKeyState, JoyZ, 5JoyZ`

## History

v1.0 
+ Initial release

v1.1 
+ Added joylist.ahk for users with devices that are not detected as the system default for whatever reason.
+ Corrected typo in Pitch axis check
+ Added readme and informational comments

## Credits

CMDR LazyTech (/u/RetroRodent)

The AutoHotKey help files.

Suggestions by /u/Corscan on Reddit

[markdown-editor](http://jbt.github.io/markdown-editor/)

