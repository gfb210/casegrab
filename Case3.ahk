; ###### Pre-Loop Set Up  ########
^t::
Male=M           ; Defines Male as M
Female=F         ; Defines Female as F
Goal = 0xE89900  ; Goal Screen  Color 
WinWait, Case List.ods - OpenOffice.org Calc, ; Waits till Case List Is Open
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc, ; Activates Case Window
WinWaitActive, Case List.ods - OpenOffice.org Calc, ; Waits till Case List is open
MouseClick, left,  60,  195  ; Clicks First Cell in case list
Sleep, 100
count=%A_Index%  ; Establishes count as the loop count
clipboard =      ; Clears ClipBoard
Loop
{
clipboard =     ; Clears Clipboard inside of loop
                ; Check for Sex / Content Check ##### -1 #######

Run https://www.grcourt.org/CourtPayments/loadCase.do?caseSequence="%A_Index% ; Opens case sequence A index which is the loop number
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, ; Waits till Court Page is loaded
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, ; Waits till Court Page is loaded
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, ; Waits till Court Page is loaded
Sleep, 500
;  ######### Page Load Check #########
PixelGetColor, color, 437, 116     ; Checks Pixel color at 437, 116 and store that value to color
IfEqual, color, %goal%         ; Checks if color and Goal color are equal 
	continue                   ; If they are, continue
else						   ; If they aren't 
	Send {F5}				   ; Refresh 
Sleep, 1000
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, ; Waits till Case List Is Open
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, ; Waits till Case List Is Active
Sleep, 500
SendEvent {Click 818, 267, down}{click 845, 267, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
ClipWait ; Waits Till Clipboard has data 
Clipboardz = %clipboard% ; Stores %clipboard% into variable Clipboardz
If Clipboardz = %Male% || %Female% ; Checks if clipboardz is equal to M or F
	continue
else 
	break
Sleep, 100   
; NAME GRAB ####### 1 #######
SendEvent {Click 349, 232, down}{click 910, 232, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 100
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
Sleep, 500
; ADDRESS/Race/Sex/Height GRAB ####### 2 #######
SendEvent {Click 347, 261, down}{click 900, 274, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
; DOB/Weight/Hair/Eyes ####### 3 #######
SendEvent {Click 347, 305, down}{click 915, 305, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
; Attorney/Firm/Attorney Phone/Judge ####### 4 #######
SendEvent {Click 347, 335, down}{click 915, 335, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
; Offense Date/Date Closed/Offense Description/Disposition/Disposition Date ####### 5 #######
SendEvent {Click 347, 398, down}{click 915, 398, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
; Fines/Jail Days/Probation/Balance Due ####### 6 #######
SendEvent {Click 347, 460, down}{click 915, 460, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
Sleep, 100
Send, {Right}
Send, {Right}
Send, {Right}
Send, {Right}
WinWait, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
IfWinNotActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox, , WinActivate, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
WinWaitActive, 61st District Court Payments - Grand Rapids`, Michigan - Mozilla Firefox,
; Bench Warrant Issued ####### 7 #######
SendEvent {Click 347, 489, down}{click 477, 489, up}
Sleep, 100
Send, {CTRLDOWN}c{CTRLUP}
Sleep, 100
WinWait, Case List.ods - OpenOffice.org Calc,
IfWinNotActive, Case List.ods - OpenOffice.org Calc, , WinActivate, Case List.ods - OpenOffice.org Calc,
WinWaitActive, Case List.ods - OpenOffice.org Calc,
Sleep, 500
Send, {CTRLDOWN}v{CTRLUP}
; Next Line Prep ######## 8 #########
Sleep, 100
Send, {Down}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
Send, {Left}
}
Escape::
ExitApp
Return

;##### first civil case = 511791########
