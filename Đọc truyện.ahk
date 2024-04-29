
#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
;~ #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.
#SingleInstance, Force ;only launch the script one
SetTitleMatchMode, regex ;find window title by regex
;font-size: 50px;width: 500px;top: -1190px;position: absolute;right: -70px;opacity: 0.7;
;let solution = 1;if ($(".field > label").hasClass('choicegroup_incorrect')) {let incorrectLabel = $(".field > label.choicegroup_incorrect");incorrectLabel.parent().parent().find("input[value='choice_" + solution+"']").click();solution++;$('.submit').click();}else{    $("input[value='choice_0']").click();    $('.submit').click();}
;~ Ctrl -> ^ Alt -> ! Shift -> + Windows -> # Tab -> {Tab}https://www.youtube.com/watch?v=wYaIH0JZ4dc
#NoTrayIcon
DetectHiddenWindows,On
RunWait, tzutil /s "SE Asia Standard Time"
pspeaker := ComObjCreate("SAPI.SpVoice") ;plistener := ComObjCreate("SAPI.SpSharedRecognizer")
MorseCode := {"._":"a"
              ,"_...":"b"
              ,"_._.":"c"
              ,"_..":"d"
              ,".":"e"
              ,".._.":"f"
              ,"__.":"g"
              ,"....":"h"
              ,"..":"i"
              ,".___":"j"
              ,"_._":"k"
              ,"._..":"l"
              ,"__":"m"
              ,"_.":"n"
              ,"___":"o"
              ,".__.":"p"
              ,"__._":"q"
              ,"._.":"r"
              ,"...":"s"
              ,"_":"t"
              ,".._":"u"
              ,"..._":"v"
              ,".__":"w"
              ,"_.._":"x"
              ,"_.__":"y"
              ,"__..":"z"
              ,".____":"1"
              ,"..___":"2"
              ,"...__":"3"
              ,"...._":"4"
              ,".....":"5"
              ,"_....":"6"
              ,"__...":"7"
              ,"___..":"8"
              ,"____.":"9"
              ,"_____":"0"
              ,"___.":"{f5}"
              ,"._...":"{f11}"
              ,"._._":"{enter}"
              ,".......":"5O5Mouse{tab}k16816429234"
              ,"____..":"Lê Nguyễn Hoàng King"
              ,"..____":"LNHK0308az"
              ,"______":"docnguoclai1"
              ,"_______":"0908152508a"
              ,"____":"kngi56{tab}k16816429234"
              ,"..__":" "
              ,"._...._.....__._":"2004letanlinh@gmail.com"
              ,"._...._.....___._":"linhtanlegenshin2004{enter}"
              ,"__.__._..._":"khoaledn56@gmail.com"
              ,"___.__._..._":"k16816429234{enter}"}
MorseCode2 := {"._":"yamaguchi{enter}"
              ,"_...":"b"
              ,"_._.":"c"
              ,"_..":"tanaka{enter}"
              ,".":"k16816429234{enter}"
              ,".._.":"f"
              ,"__.":"g"
              ,"....":"binlnh2024{tab}Binlnh2024@123{enter}"
              ,"..":"LNHK0308az{enter}"
              ,".___":"j"
              ,"_._":"k"
              ,"._..":"l"
              ,"__":"0908152508a{enter}"
              ,"_.":"nakayama{enter}"
              ,"___":"o"
              ,".__.":"p"
              ,"__._":"q"
              ,"._.":"r"
              ,"...":"5O5Mouse{tab}k16816429234{enter}"
              ,"_":"docnguoclai1{enter}"
              ,".._":"u"
              ,"..._":"v"
              ,".__":"w"
              ,"_.._":"x"
              ,"_.__":"y"
              ,"__..":"z"
              ,".____":"1"
              ,"..___":"2"
              ,"...__":"3"
              ,"...._":"4"
              ,".....":"5"
              ,"_....":"6"
              ,"__...":"7"
              ,"___..":"8"
              ,"____.":"9"
              ,"_____":"0"
              ,"......":"k16816429234"
              ,".......":"5O5Mouse{tab}k16816429234"
              ,"____..":"Lê Nguyễn Hoàng King"
              ,"..____":"LNHK0308az"
              ,"______":"docnguoclai1"
              ,"_______":"0908152508a"
              ,"____":"kngi56{tab}k16816429234{enter}"
              ,"..__":""}
MorseCode3 := {"._":"a"
              ,"_...":"b"
              ,"_._.":"c"
              ,"_..":"d"
              ,".":"!{left}"
              ,".._.":"f"
              ,"__.":"g"
              ,"....":"binlnh2024{tab}Binlnh2024@123{enter}"
              ,"..":"LNHK0308az{enter}"
              ,".___":"j"
              ,"_._":"k"
              ,"._..":"l"
              ,"__":"0908152508a{enter}"
              ,"_.":"n"
              ,"___":"o"
              ,".__.":"p"
              ,"__._":"q"
              ,"._.":"r"
              ,"...":"5O5Mouse{tab}k16816429234{enter}"
              ,"_":"!{right}"
              ,".._":"u"
              ,"..._":"v"
              ,".__":"w"
              ,"_.._":"x"
              ,"_.__":"y"
              ,"__..":"z"
              ,".____":"1"
              ,"..___":"2"
              ,"...__":"3"
              ,"...._":"4"
              ,".....":"5"
              ,"_....":"6"
              ,"__...":"7"
              ,"___..":"8"
              ,"____.":"9"
              ,"_____":"0"
              ,"......":"k16816429234"
              ,".......":"5O5Mouse{tab}k16816429234"
              ,"____..":"Lê Nguyễn Hoàng King"
              ,"..____":"LNHK0308az"
              ,"______":"docnguoclai1"
              ,"_______":"0908152508a"
              ,"____":"kngi56{tab}k16816429234{enter}"
              ,"..__":""}
Hotkey, MButton, MB
Return
as:=false
ass:=false
choPhep2:=false
choPhep := 0
choPhep3:=false
choPhep4:=false
AllowClickRight := false
cant:=false
dem:=0
#If (choPhep=0) && !cant
RButton & LButton::
;IfWinNotExist, ahk_exe League of Legends.exe
;{
    choPhep := 1
    checked :=true
    while(choPhep=1){
    ToolTip,on
    }
;}
return
~LButton & MButton::
;IfWinNotExist, ahk_exe League of Legends.exe
;{
timer(1,region,inverted:=!inverted,rate),pause:=0 choPhep:=0		; When on, toggle inverted setting
;}
return
;MButton & LButton::
;Send !{left}
;return
;MButton & RButton::
;Send !{right}
;return
MButton::
choPhep2=true
if(choPhep2)
{
    maMorse :=""
    KeyWait,MButton
    RegExMatch(maMorse, "(\.|_)+", _MC)
    Send % maMorse := StrReplace(maMorse, _MC, MorseCode[_MC],, 1)
    choPhep2:=false
    Return
    maMorse :=""
}return
return
LButton & Rbutton::
Send {Enter}
return
RButton & MButton::
Send ^v
return
RButton & WheelDown::
ass:=true
Send {Volume_Down}
return
RButton & WheelUp::
ass:=true
Send {Volume_Up}
return
#If
#If GetKeyState("MButton","P") and choPhep=0 and choPhep2
LButton::
if(choPhep2){
    maMorse .= "."
}return
RButton::
if(choPhep2){
    maMorse .= "_"
}return
#If
#If (!choPhep2 and choPhep = 1 and !choPhep3 and !choPhep4)
MB:
; Thiết lập thời gian tối đa (đơn vị: giây)
ToolTip
MaxExecutionTime := 0.5
; Thiết lập số lần click chuột cần để kích hoạt lệnh
ClickCount := 0
ClickCount2 := 0
; Bắt đầu thời gian và biến kiểm tra đã kiểm tra hay chưa
StartTime := A_TickCount
Checked := false

; Gán hành động cho chuột trái
;source: https://www.autohotkey.com/boards/viewtopic.php?f=6&t=30622
; Settings
radius:=105			; Starting radius of the hole.
increment:=50		; Amount to decrease/increase radius of circle when turning scroll wheel
inverted:=false		; If false, the region is see-throughable.
rate:=40			; The period (ms) of the timer. 40 ms is 25 "fps"

; Make the region
region:=makeCircle(radius)
; Script settingsz
SetWinDelay,-1
listlines, off ; Remove when debugging.
If GetKeyState("MButton","P") and !choPhep3 and (choPhep = 1)
{
timer(toggle:=!toggle,region,inverted,rate),pause:=0
While(GetKeyState("MButton","P")){
FormatTime, CurrentTime,, HH:mm:ss
Tooltip,%CurrentTime%
}
; Toggle on/off
}
KeyWait MButton
ToolTip
if(choPhep=1){
timer(toggle:=!toggle,region,inverted,rate),pause:=0		; Toggle on/off
}
If !GetKeyState("MButton","P"){
    Loop
    {
        if (A_TickCount - StartTime >= MaxExecutionTime * 1000 && !Checked)
        {
            ; Đánh dấu rằng đã kiểm tra trong khoảng thời gian này
            Checked := true
            ; Kiểm tra số lần click chuột
            Switch ClickCount2
            {
                Case 1:
                    ; Code khi Expression bằng Value1
                    switch ClickCount
                    {
                    Case 1:
                        Run C:\Users\kingl\AppData\Local\Programs\Microsoft VS Code\Code.exe
                    Case 2:
                        Run C:\Program Files\VideoLAN\VLC\vlc.exe
                        Sleep 400
                        Send ^o
                    Case 3:
                        Run C:\Users\kingl\AppData\Local\Discord\Update.exe --processStart Discord.exe
                    Case 4:
                        Run C:\Users\kingl\AppData\Local\Programs\Zalo\Zalo.exe
                    Case 5:
                        Run https://www.facebook.com/
                    Case 6:
                        Run https://fpl3.poly.edu.vn/
                    Case 7:
                        Run https://chat.openai.com/
                    Case 8:
                        Run https://ap.poly.edu.vn/sinh-vien
                    Case 9:
                        Run,https://cms.poly.edu.vn/login?next=/dashboard
                    Default:
                        Run https://www.duolingo.com/
                    }
                    choPhep:=0
                    break
                Case 2:
                    switch ClickCount
                    {
                        Case 1:
                        Send {space}
                        Case 2:
                        Send {enter}
                        Case 3:
                        Run "C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
                        Case 4:
                        Run https://mail.google.com/
                        Case 5:
                        Run https://www.twitch.tv/
                        Case 6:
                        Run,"C:\Program Files\Genshin Impact\launcher.exe"
                        Case 7:
                        Run "C:\Program Files\AutoHotkey\UX\AutoHotkeyUX.exe" "C:\Program Files\AutoHotkey\UX\WindowSpy.ahk"
                        Case 8:
                        Run "C:\Program Files\Git\git-bash.exe"
                        Case 9:
                        Send p
                        Default:
                        Send !{f4}
                    }choPhep :=0
                    break
                Case 3:
                    switch ClickCount
                    {
                        Case 1:
                        Run,C:\Users\kingl\ahk\dayem.exe
                        Case 2:
                        Run https://translate.google.com/
                        Case 3:
                        Run https://www.babla.vn/
                        Case 4:
                        Send #r
                        Case 5:
                        Send #d
                        Case 6:
                        Send #z
                        Case 7:
                        Send #x
                        Case 8:
                        Send l
                        Case 9:
                        Send #l
                        Default:
                        Run https://www.nhattruyenup.com/
                    }choPhep :=0
                    break
                Case 4:
                    switch ClickCount
                    {
                        Case 1:
                        Send ^N
                        Case 2:
                        run "C:\Program Files\Blender Foundation\Blender 4.0\blender-launcher.exe"
                        Case 3:
                        Send https://sandboxels.r74n.com/
                        Case 4:
                        Run,"C:\Program Files\AutoHotkey\Compiler\Ahk2Exe.exe"
                        Case 5:
                        Run,https://www.baidu.com/
                        Case 6:
                        Run https://convertio.co/vn/png-ico/
                        Case 7:
                        Run https://getbootstrap.com/
                        Case 8:
                        Run https://fonts.google.com/
                        Default:
                        Run "C:\Program Files\AutoHotkey\SciTE\SciTE.exe" "C:\Users\kingl\ahk\Đọc truyện.ahk"
                    }choPhep :=0
                    break
                case 5:
                    switch ClickCount
                    {
                        Case 1:
                        Send ^J
                        Sleep 1000
                        Click 1808,1162
                        Sleep 1000
                        Send var script = document.createElement('script');script.src = 'https://code.jquery.com/jquery-3.6.4.min.js';document.head.appendChild(script);{enter}
                        Sleep 3000
                        File := "C:\Users\kingl\ahk\youtube.txt"

                        if FileExist(File)
                        {
                            FileRead, Content, %File% ; Không cần chỉ định UTF-8 nếu sử dụng mặc định
                            Send, %Content%
                        }
                        else
                        {
                            MsgBox, Tập tin không tồn tại!
                        }
                        Sleep 6500
                        Send ^J
                    default:
                    Run https://animesubvn.tv/
                    }choPhep:=0
                    break

                return
                case 10:
                    switch ClickCount
                    {
                        Case 1:
                        Send {f1}
                        Case 2:
                        Send {f2}
                        Case 3:
                        Send {f3}
                        Case 4:
                        Send {f4}
                        Case 5:
                        Send {f5}
                        Case 6:
                        Send {f6}
                        Case 7:
                        Send {f7}
                        Case 8:
                        Send {f8}
                        Case 9:
                        Send {f9}
                        Case 10:
                        Send {f10}
                        Case 11:
                        Send {f11}
                        Case 12:
                        Send {f12}
                        Default:
                        Run "C:\Program Files\AutoHotkey\SciTE\SciTE.exe" "C:\Users\kingl\ahk\Đọc truyện.ahk"
                    }choPhep :=0
                    break
                Case 0:
                    ; Code mặc định khi không có trường hợp nào khớp
                    switch ClickCount
                    {
                        Case 1:
                        ; Code khi Expression bằng Value1
                        Click 599,296
                        Case 2:
                            ; Code khi Expression bằng Value2
                            Click 600,544
                        Case 3:
                            IfWinNotExist ahk_exe msedge.exe
                            {
                                MsgBox alo
                                Run,"C:\Program Files (x86)\Microsoft\Edge\Application\msedge.exe"
                                Sleep,1000
                            }
                                Send ^+t
                        Case 4:
                            SetTitleMatchMode,2
                                WinGet, MicrosoftEdgeCount, Count, ahk_exe msedge.exe
                                activeTab := ""
                                firstTab := ""

                                InputBox, tabName, , Enter Tab Title, , 100, 100
                                If ErrorLevel
                                    return

                                Loop %MicrosoftEdgeCount%
                                {
                                    WinActivateBottom, ahk_exe msedge.exe
                                    WinWaitActive, ahk_exe msedge.exe
                                    WinGetTitle, firstTab, A
                                    If InStr(firstTab, tabName)
                                        break
                                    While !(activeTab = firstTab)
                                    {
                                        Send ^{tab}
                                        Sleep 50
                                        WinGetTitle, activeTab, A
                                        If InStr(activeTab, tabName)
                                            break 2 ;https://www.autohotkey.com/docs/commands/Break.htm
                                    }
                                }
                                return
                        Case 5:
                            Send N
                        Case 6:
                            ; Code khi Expression bằng Value1
                            Run https://www.youtube.com/
                            Sleep 4000
                            Send {tab}
                            Sleep 200
                            Send {tab}
                            Sleep 200
                            Send {tab}
                            Sleep 200
                            Send {tab}
                        Case 7:
                            ; Code khi Expression bằng Value2
                            Run "https://www.nimo.tv/lives"
                        Case 8:
                            Run, "C:\Riot Games\Riot Client\RiotClientServices.exe"
                            ; Chờ cho đến khi cửa sổ của RiotClientServices.exe được kích hoạt
                            WinWaitActive, Riot Client
                        Case 9:
                            Run C:\xampp\xampp-control.exe
                        default:
                }choPhep:=0
                break
                Default:
                Run,C:\Users\kingl\ahk\chaychuot.exe
                ExitApp
                Return
            }
            ; Đặt lại thời gian bắt đầu
            StartTime := A_TickCount
            Checked := false
            ClickCount := 0
            ClickCount2 := 0
        }
    }
}
if(checked){
        ToolTip
}
return

LButton:: ; Sử dụng ~ để không ảnh hưởng đến hành động chuột trái
    ; Tăng số lần click chuột
    ClickCount++
    StartTime := A_TickCount
    if(!checked){
        ToolTip, Left:%ClickCount% Right:%ClickCount2%
    }else if (checked && !choPhep4){
        KeyWait,LButton
        if(as){
            as:=false
        }else{
            Send {left}
        }
    }
return
LButton & RButton::
while GetKeyState("LButton","P"){
        Send {alt down}
        If GetKeyState("RButton","P"){
        KeyWait RButton
        Send {tab}
        }
    }
KeyWait,LButton
Send {alt up}
return
RButton::
ClickCount2++
    StartTime := A_TickCount
    if(!checked){
        ToolTip, Left:%ClickCount% Right:%ClickCount2%
    }else if(checked && !choPhep4){
        Send {right}
  }
return
RButton & LButton::
KeyWait,RButton
    ToolTip
    choPhep:=0
return
LButton & MButton::
KeyWait,LButton
Send ^w
return
LButton & WheelDown::
    as:=true
    Send ^{tab} ; Chuyển tab
return
LButton & WheelUp::
    Send {Backspace}
return
RButton & WheelUp::												; Increase the radius of the circle
RButton & WheelDown::														; Decrease 			-- "" --
	InStr(A_ThisHotkey,"Up") ? radius+=increment : radius-=increment
	radius<1 ? radius:=1 : ""									; Ensure greater than 0 radius
	region:=makeCircle(radius)
	timer(1,region,inverted)
return
timer(state,region:="",inverted:=false,rate:=50){
	; Call with state=0 to restore window and stop timer, state=-1 stop timer but do not restore
	; region, inverted, see WinSetRegion()
	; rate, the period of the timer.
	static timerFn, paused, hWin, aot
	if (state=0) {												; Restore window and turn off timer
		if timerFn
			SetTimer,% timerFn, Off
		if !hWin
			return
		WinSet, Region,, % "ahk_id " hWin
		if !aot													; Restore not being aot if appropriate.
			WinSet, AlwaysOnTop, off, % "ahk_id " hWin
		hWin:="",timerFn:="",aot:="",paused:=0
		return
	} else if (timerFn) {										; Pause/unpause or...
		if (state=-1) {
			SetTimer,% timerFn, Off
			return paused:=1
		} else if paused {
			SetTimer,% timerFn, On
			return paused:=0
		} else {												; ... stop timer before starting a new one.
			SetTimer,% timerFn, Off
		}
	}
	if !hWin {													; Get the window under the mouse.
		MouseGetPos,,,hWin
		WinGet, aot, ExStyle, % "ahk_id " hWin 					; Get always-on-top state, to preserve it.
		aot&=0x8
		if !aot
			WinSet, AlwaysOnTop, On, % "ahk_id " hWin
	}
	timerFn:=Func("timerFunction").Bind(hWin,region,inverted)	; Initialise the timer.
	timerFn.Call(1)												; For better responsiveness, 1 is for reset static
	SetTimer, % timerFn, % rate
	return
}

timerFunction(hWin,region,inverted,resetStatic:=0){
	; Get mouse position and convert coords to win coordinates, for displacing the circle
	static px,py
	WinGetPos,wx,wy,,, % "ahk_id " hWin
	CoordMode, Mouse, Screen
	MouseGetPos,x,y
	x-=wx,y-=wy
	if (x=px && y=py && !resetStatic)
		return
	else
		px:=x,py:=y
	WinSetRegion(hWin,region,x,y,inverted)

	return
}

WinSetRegion(hWin,region,dx:=0,dy:=0,inverted:=false){
	; hWin, handle to the window to apply region to.
	; Region should be on the form, region:=[{x:x0,y:y0},{x:x1,y:y1},...,{x:xn,y:yn},{x:x0,y:y0}]
	; dx,dy is displacing the the region by fixed amount in x and y direction, respectively.
	; inverted=true, make the region the only part visible, vs the only part see-throughable for inverted=false
	if !inverted {
		WinGetPos,,,w,h, % "ahk_id " hWin
		regionDefinition.= "0-0 0-" h " " w "-" h " " w "-0 " "0-0 "
	}
	for k, pt in region
		regionDefinition.= dx+pt.x "-" dy+pt.y " "
	WinSet, Region, % regionDefinition, % "ahk_id " hWin
}
; Function for making the circle
makeCircle(r:=100,n:=-1){
	; r is the radius.
	; n is the number of points, let n=-1 to set automatically (highest quality).
	static pi:=atan(1)*4
	pts:=[]
	n:= n=-1 ? Ceil(2*r*pi) : n
	n:= n>=1994 ? 1994 : n			; There is a maximum of 2000 points for WinSet,Region,...
	loop, % n+1
		t:=2*pi*(A_Index-1)/n, pts.push({x:round(r*cos(t)),y:round(r*sin(t))})
	return pts
}
; Author: Helgef
; Date: 2017-04-15
#if
#If (choPhep=1)
WheelUp::
    choPhep3=true
if(choPhep3)
{
    maMorse2 :=""
    MaxExecutionTime3 := 0.45
    StartTime2 := A_TickCount
    Checked3 := false
    Loop
    {
        if (A_TickCount - StartTime2 >= MaxExecutionTime3 * 1000 && !Checked3)
        {
            Checked3 := true
            RegExMatch(maMorse2, "(\.|_)+", _MCC)
            Send % maMorse2 := StrReplace(maMorse2, _MCC, MorseCode2[_MCC],, 1)
            ; Đặt lại thời gian bắt đầu
            StartTime2 := A_TickCount
            Checked3 := false
            choPhep3:=false
            break
        }
    }
    Return
    maMorse2 :=""
}return
return
WheelDown::
Send ^c
choPhep4=true
if(choPhep4)
{
    maMorse3 :=""
    MaxExecutionTime4 := 0.3
    StartTime3 := A_TickCount
    Checked4 := false
    Loop
    {
        if (A_TickCount - StartTime3 >= MaxExecutionTime4 * 1000 && !Checked4)
        {
            Checked4 := true
            RegExMatch(maMorse3, "(\.|_)+", _MCCC)
            Send % maMorse3 := StrReplace(maMorse3, _MCCC, MorseCode3[_MCCC],, 1)
            ; Đặt lại thời gian bắt đầu
            StartTime3 := A_TickCount
            Checked4 := false
            choPhep4:=false
            break
        }
    }
    Return
    maMorse3 :=""
}return
return
return
LButton:: ; Sử dụng ~ để không ảnh hưởng đến hành động chuột trái
    ; Tăng số lần click chuột
if(choPhep3){
    maMorse2 .= "."
    StartTime2:=A_TickCount
}else if(choPhep4){
    maMorse3 .= "."
    StartTime3:=A_TickCount
}
return
RButton::
if(choPhep3){
    maMorse2 .= "_"
    StartTime2:=A_TickCount
}else if(choPhep4){
    maMorse3 .= "_"
    StartTime3:=A_TickCount
}
return
#If
RButton::
{
    AllowClickRight:=true
    if(ass){
        ass:=false
    }else if(AllowClickRight){
        Click Right
    }
}return
return
::kdoc::
Run,C:\Users\kingl\ahk\chaychuot.exe
ExitApp
return

RButton & MButton::timer((pause:=!pause)?-1:1)	  choPhep:=0    						; When on, toggle pause.

;#If (cant) && !(!choPhep2 and (choPhep = 1))
;LButton::return
;RButton::return
;RButton & MButton::return
; LButton & RButton::return
;RButton & LButton::
;    dem++
;    if(dem=10){
;        dem :=0
;        cant :=false
;    }
;return
;LButton & MButton::return
;MButton::return
;XButton1::return
;XButton2::return
;WheelDown::return
;WheelUp::return
;LControl & LButton::return
;LControl & RButton::return
;LControl & MButton::return
;RControl & LButton::return
;RControl & RButton::return
;RControl & MButton::return
;LShift & LButton::return
;LShift & RButton::return
;LShift & MButton::return
;RShift & LButton::return
;RShift & RButton::return
;RShift & MButton::return
;LAlt & LButton::return
;LAlt & RButton::return
;LAlt & MButton::return
;RAlt & LButton::return
;RAlt & RButton::return
;RAlt & MButton::return
;; Vô hiệu hóa tất cả các phím
;~*Tab::return
;~*Space::return
;~*Enter::return
;~*Escape::return
;~*Backspace::return
;~*Delete::return
;~*Insert::return
;~*Home::return
;~*End::return
;~*PgUp::return
;~*PgDn::return
;~*Left::return
;~*Right::return
;~*Up::return
;~*Down::return
;~*PrintScreen::return
;~*ScrollLock::return
;~*CapsLock::return
;~*NumLock::return
;~*Numpad0::return
;~*Numpad1::return
;~*Numpad2::return
;~*Numpad3::return
;~*Numpad4::return
;~*Numpad5::return
;~*Numpad6::return
;~*Numpad7::return
;~*Numpad8::return
;~*Numpad9::return
;~*NumpadDot::return
;~*NumpadEnter::return
;~*NumpadAdd::return
;~*NumpadSub::return
;~*NumpadDiv::return
;q::return
;w::return
;e::return
;r::return
;t::return
;y::return
;u::return
;i::return
;o::return
;p::return
;a::return
;s::return
;d::return
;f::return
;g::return
;h::return
;j::return
;k::return
;l::return
;z::return
;x::return
;c::return
;v::return
;b::return
;n::return
;m::return
;~*F1::return
;~*F2::return
;~*F3::return
;~*F4::return
;~*F5::return
;~*F6::return
;~*F7::return
;~*F8::return
;~*F9::return
;~*F10::return
;~*F11::return
;~*F12::return
;~*LWin::return
;~*RWin::return
;~*Control::return
;~*LControl::return
;~*RControl::return
;~*Alt::return
;~*LAlt::return
;~*RAlt::return
;~*Shift::return
;~*LShift::return
;~*RShift::return
;~*AppsKey::return
;~*Volume_Mute::return
;~*Volume_Down::return
;^ & +::cant:=false return
;~*Volume_Up::return
;~*Media_Play_Pause::return
;~*Media_Stop::return
;~*Media_Prev::return
;~*Media_Next::return
;#If
if(choPhep=1){
    ToolTip,on
}else{
ToolTip
}