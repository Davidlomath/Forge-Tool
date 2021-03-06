;This script assumes you use the default keybinds in Eldewrito
;Have to be using a keyboard for it to work
;Forge Tool V0.2b
;Author Dava96
;----------------------------------------------------------------------
;Changelog V0.1 
;Made Scripts More efficent
;Added Gui
;Added Buttons, Help, Kill, About
;----------------------------------------------------------------------
;Changelog V0.2
;Added the rebinder tool
;Added Weapon lower Tool
;Fixed bug where delete wouldn't stop when suspending script
;Added Screenshot Presets to the numpad 0-4
;Taken Preview Screenshots Included in the Root folder
;Commented Code
;Added New Gui
;Added drop down menu, text labels
;Added Object Counter
;Added Useful Links
;----------------------------------------------------------------------
;To Do List
;Fix Weapon Lower
;Add a better way to show controls (Maybe Image?)
;General Rule sets for game types  e.g infection 15 human spawns
;Enable usage on multiple setups - HARD
;Add 2 more Presets (LSD version)
;-------------------------------------------------------------               
;----------------------------------------------------------------------

;Legacy Gui
;----------------------------------------------------------------------

;Gui,Add,Button,x98 y2 w49 h26 gKButton,Kill			;Killbutton		 
;Gui,Add,Button,x1 y2 w49 h26 gHButton,Help			;HelpButton
;Gui,Add,Button,x50 y2 w49 h26 gAButton,About			;About Button
;Gui,Add,Text,x6 y33 w148 h16,ElDewrito | Forge Tool V0.1 ;Text
;Gui,Show,x855 y350 w148 h57 , 
;Return
;GuiClose:
;ExitApp
;Return

;----------------------------------------------------------------------
;Legacy Gui end

;NEW Gui
;----------------------------------------------------------------------



Gui,Add,Button,x5 y3 w40 h20 gHButton,Help
Gui,Add,Button,x50 y3 w40 h20 gAButton,About
Gui,Add,Text,x165 y106 w90 h20,Forge Tool | V0.3
Gui,Add,DropDownList,x150 y3 w100 h125 vDDL gSetTxt, Object on map||Diamondback|Guardian|High Ground|Icebox|Narrows|Reactor|Sandtrap|Standoff|The Pit|Valhalla|Flatgrass
Gui,Add,Text,x165 y85 w120 h20 vTxt, Object Count
Gui,Add,Text,x5 y70 w120 h20 gReddit, Reddit.com/r/HaloOnline
Gui,Add,Text,x5 y90 w120 h20 gVault, Halovau.lt - Maps, Mods
Gui,Add,Text,x5 y106 w100 h20 gVaultD, Halovau.lt Discord
Gui,Add,Text,x5 y50 w125 h20, Useful Links
Gui,Add,Button,x95 y3 w40 h20 gKButton,Kill
Gui,Add,DropDownList,x5 y27 w100 h125 vDDL2 gSetRes, Resolutions||1920x1080|1768x992|1680x1050|1600x1024|1600x900|1440x900|1366x768|1360x768|1280x1024|1280x960|1280x800|1280x768|1280x720|1176x664|1152x864|1024x768|800x600|720x576|720x480|640x480
Gui,Show,x585 y319 w251 h125 ,
return



{
	Reddit:
	
	run https://www.reddit.com/r/HaloOnline/
	return
	
	Vault:
	run http://halovau.lt/
	return
	
	VaultD:
	run https://discord.gg/HzEga4p
	return 
}

SetTxt:
Gui, Submit, NoHide
If (DDL = "Diamondback")
{
	GuiControl, , Txt, Obj Count 289
}
Else If (DDL = "Guardian")
{
	GuiControl, , Txt, Obj Count 442
}
Else If (DDL = "High Ground")
{
	GuiControl, , Txt, Obj Count 208
}
Else If (DDL = "Icebox")
{
	GuiControl, , Txt, Obj Count 203
}
Else If (DDL = "Narrows")
{
	GuiControl, , Txt, Obj Count 210
}
Else If (DDL = "Reactor")
{
	GuiControl, , Txt, Obj Count 438
}
Else If (DDL = "Sandtrap")
{
	GuiControl, , Txt, Obj Count 221
}
Else If (DDL = "Standoff")
{
	GuiControl, , Txt, Obj Count 310
}
Else If (DDL = "The Pit")
{
	GuiControl, , Txt, Obj Count 321
}
Else If (DDL = "Valhalla")
{
	GuiControl, , Txt, Obj Count 354
}
Else If (DDL = "Flatgrass")
{
	GuiControl, , Txt, Obj Count 450+
}


SetRes:
Gui, Submit, NoHide
If (DDL2 = "1920x1080")
{
	MouseMove, 126, 1025
}
Else if (DDL2  = "1768x992")
{
	MouseMove, 126, 1025
}
Else if (DDL2 = "1680x1050")
{
	MouseMove, 273, 974
}
Else if (DDL2 = "1600x1024")
{
	MouseMove, 273, 974
}
Else if (DDL2 = "1600x900")
{
	MouseMove, 201, 1027
}
Else if (DDL2 = "1440x900")
{
	MouseMove, 273, 974
}
Else if (DDL2 = "1366x768")
{
	MouseMove, 126, 1025
}
Else if (DDL2 = "1360x768")
{
	MouseMove, 126, 1025
}
Else if (DDL2 = "1280x1024")
{
	MouseMove, 412, 880
}
Else if (DDL2 = "1280x960")
{
	MouseMove, 379, 904
}
Else if (DDL2 = "1280x800")
{
	MouseMove, 273, 974
}
Else if (DDL2 = "1280x768")
{
	MouseMove, 256, 990
}
Else if (DDL2 = "1280x720")
{
	MouseMove, 126, 1025
}
Else if (DDL2 = "1176x664")
{
	MouseMove, 126, 1025
}
Else if (DDL2 = "1152x864")
{
	MouseMove, 379, 904
}
Else if (DDL2 = "1024x768")
{
	MouseMove, 379, 904
}
Else if (DDL2 = "800x600")
{
	MouseMove, 379, 904
}
Else if (DDL2 = "720x576")
{
	MouseMove, 397, 885
}
Else if (DDL2 = "720x480")
{
	MouseMove, 286, 950
}
Else if (DDL2 = "640x480")
{
	MouseMove, 340, 904
	
}
Return
GuiClose:
ExitApp
Return



;----------------------------------------------------------------------
;Gui End 
;Labels
;----------------------------------------------------------------------

KButton:
MsgBox,4,ElDewrito | Forge Tool,Are you sure you want to kill the application?
IfMsgBox, Yes  
{
	ExitApp
}
IfMsgBox,No
{
	Return
}
return
AButton:
Msgbox,4,ElDewrito | Forge Tool, Made by Dava96, Still a working in progress. Would you take a look at my forge page? (Halovau.lt)
IfMsgBox, Yes
{
	run http://halovau.lt/forge.php?uid=72
}
IfMsgBox,No
{
	Return
}
return
HButton:
Msgbox,0,ElDewrito | Forge Tool, Controls: Capslock to Suspend/Activate. Ctrl + S to Save. Ctrl + R for a New round. Ctrl + F for Auto Delete and Ctrl + G to stop. For the Auto deletion to work you please press Ctrl + B. This tool will assume you are in the correct mode when using the binds.
return


{
	;Useful links
	;http://halovau.lt/ - Mods, Maps and User generated content
	;https://www.reddit.com/r/HaloOnline/ - General Stuff
	;https://www.reddit.com/r/HaloOnline/wiki/index#wiki - Unsure of something?
	
}

{
	;Mousemove values
	;1920x1080 - 126, 1025
	;1768x992 - 126, 1025
	;1680x1050 - 273, 974
	;1600x1024 - 273, 974
	;1600x900 - 201, 1027
	;1440x900 - 273, 974
	;1366x768 - 126, 1025
	;1360x768 - 126, 1025
	;1280x1024 - 412, 880
	;1280x960 - 379, 904
	;1280x800 - 273, 974
	;1280x768 - 256, 990
	;1280x720 - 126, 1025
	;1176x664 - 126, 1025
	;1152x864 - 379, 904
	;1024x768 - 379, 904
	;800x600 - 379, 904
	;720x576 - 397, 885
	;720x480 - 286, 950
	;640x480 - 340, 904
}

{
	;Suspending the script
	Capslock::
	Suspend 
	$stop := 1
	if (A_IsSuspended) 
		MsgBox,0,ElDewrito | Forge Tool,Script Suspended,1
	else
		MsgBox,0,ElDewrito | Forge Tool,Script Active,1
	Return
}

{
	;Auto Saver
	ctrl & s::
	Send {Escape}
	Sleep 200
	GoSub, SetRes
	sleep 200
	Click
	sleep 100
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	Send {Space}
	sleep 100
	Send {Space}
	sleep 3000
	Send {B}
	sleep 2500
	return
}

cycle := "odd"

;Round Restarter
^r::
if (cycle = "odd")
{
		;every first cycle
	Send {Escape}
	Sleep 200
	GoSub, SetRes
	sleep 200
	Click
	sleep 100
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 20
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	Send {a}
	sleep 30
	send {Right down}
	sleep 100
	send {right Up}
	sleep 75
	Send {a}
	sleep 3000
	cycle := "even"
}
else
{
		;2nd Cycle
	Send {Escape}
	Sleep 200
	GoSub, SetRes
	sleep 200
	Click
	sleep 100
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50	
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 50
	send {Down Down}
	sleep 50
	send {Down Up}
	sleep 30
	Send {a}
	sleep 30
	send {Left down}
	sleep 100
	send {Left Up}
	sleep 75
	Send {a}
	sleep 3000
	cycle := "odd"
}
Return

;Auto Delete tool
^F::
$stop := 0	
Loop, 
{ 
    	Send F
	sleep 30
	Send F
	sleep 30
	Send F
	sleep 30
	if ($stop)
	{
		return
	}
}

{
	;Stop the Auto delete tool
	^g:: 
	MsgBox,0,ElDewrito | Forge Tool,Deleting Stopped!,1
	$stop := 1
	return
}

{
	
	
	;Weapon Lower - Needs fixing
	^l::
	send {R Down} {G Down} {Space Down} {LControl Down} {Down Down} {E Down}
	Sleep 3000
	send {R Up} {G Up} {Space Up} {LControl Up} {Down Up} {E Up}
	Return
}

{
	;Commands/Binds
	^B::
	MsgBox,4,ElDewrito | Forge Tool,You have opened the rebind tool, Pressing Yes will change the Down arrow and F key binds. After running this you can use the Auto delete tool.
	IfMsgBox, Yes
	{
		
		Send {F1}
		sleep 10
		Send, Bind F Game.DeleteForgeItem
		Send {Enter}
		sleep 10
		Send {F1}
		sleep 10
		Send, Bind Down Arrow 
		Send {Enter}
		
	}
	IfMsgBox,No
	{
		Return
	}
	
	return 
	
}

{
	;Screenshot presets
	;0 Reset
	Numpad0::
	Send {F1}
	sleep 10
	Send HUD 0
	send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.bloom 0
	sleep 10 
	Send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.DepthOfField 0
	Sleep 10
	send {Enter}
	sleep 10
	Send {F1}
	sleep 10
	Send Graphics.Saturation 1
	Sleep 10
	send {Enter}
	send Preset: Default
	sleep 10
	Send {Enter}
	Return
	
	;1 Juciy
	Numpad1::
	Send {F1}
	sleep 10
	Send HUD 1
	send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.bloom 0.2
	sleep 10 
	Send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.DepthOfField 0.015
	Sleep 10
	send {Enter}
	sleep 10
	Send {F1}
	sleep 10
	Send Graphics.Saturation 1.4
	Sleep 10
	send {Enter}
	send Preset: Juicy
	sleep 10
	Send {Enter}
	Return
	
	;2 blackwhite
	Numpad2::
	Send {F1}
	sleep 10
	Send HUD 1
	send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.bloom 0.2
	sleep 10 
	Send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.DepthOfField 0.015
	Sleep 10
	send {Enter}
	sleep 10
	Send {F1}
	sleep 10
	Send Graphics.Saturation 0
	Sleep 10
	send {Enter}
	send Preset: BlackWhite
	sleep 10
	Send {Enter}
	Return
	
	;3 Closeups
	Numpad3::
	Send {F1}
	sleep 10
	Send HUD 1
	send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.bloom 1.7
	sleep 10 
	Send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.DepthOfField 0.15
	Sleep 10
	send {Enter}
	sleep 10
	Send {F1}
	sleep 10
	Send Graphics.Saturation 1.2
	Sleep 10
	send {Enter}
	send Preset: Closeups
	sleep 10
	Send {Enter}
	return
	
	;4 Alternate Juicy
	numpad4::
	Send {F1}
	sleep 10
	Send HUD 1
	send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.bloom 1.7
	sleep 10 
	Send {Enter}
	sleep 10
	send {F1}
	sleep 10
	Send Graphics.DepthOfField 0.015
	Sleep 10
	send {Enter}
	sleep 10
	Send {F1}
	sleep 10
	Send Graphics.Saturation 1.4
	Sleep 10
	send {Enter}
	sleep 10
	send Preset: Alternate Juicy
	sleep 10
	Send {Enter}
	Return
	
	;Defaults
	;----------------------------------------------------------------------
	;										 Short versions
	;Camera.HideHUD 0 							 Hud 
	;Graphics.Bloom	0.000000	The atmosphere bloom Bloom	
	;Graphics.BlueHue	1.000000	The blue hue
	;Graphics.DepthOfField	0.000000	DepthOfField    DoF
	;Graphics.GreenHue	1.000000	The green hue
	;Graphics.Letterbox	0	A cinematic letterbox.
	;Graphics.RedHue	1.000000	The red hue
	;Graphics.Saturation	1.000000	The saturation  Saturation
	;----------------------------------------------------------------------
	
}
 ;*[Source Forge Tool]    

{
	;Diamondback = 289
	;Edge = Unknown
	;Guardian = 442
	;High Ground = 208
	;Icebox = 203
	;Narrows = 210
	;Reactor = 438
	;Sandtrap = 221
	;Standoff = 310
	;The pit = 321 
	;valhalla = 354
	
	
}
