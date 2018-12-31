;EV_RXFLAG Equ 2H
;EV_TXEMPTY                           equ 4h
;EV_CTS                               equ 8h
;EV_DSR                               equ 10h
;EV_RLSD                              equ 20h
;EV_BREAK                             equ 40h
;EV_ERR                               equ 80h
;EV_RING                              equ 100h
;EV_PERR                              equ 200h
;EV_RX80FULL                          equ 400h
;EV_EVENT1                            equ 800h
;EV_EVENT2                            equ 1000h

;http://msdn.microsoft.com/en-us/library/windows/desktop/aa363428(v=vs.85).aspx
.Const
WM_FINISH Equ WM_USER + 100H
.Data?

.Data
costy DD 0
hEventStart DD 0
hThread DD 0
eu DD 0
acom DB "com5 ", 0
hCom DD 0
retEvent 	DD 0
ThreadID DD 0
variabila DD 0
buf DB "                                            ", 0
bytesread DD 0
buf1 DB 10 Dup (0)
buf1nr DD 0
numar DD 0
buf2 DB "                       ", 0
char Byte 0
nr DD 0
este_1 DB "este_1", 0
este_0 DB "este_0", 0
hInstance DD 0
himage DD 0
himage1 DD 0
himage2 DD 0
pincts DB "Pin CTS to GROUND !!! ", 0
pino DB "Pin is NORMAL FUNCTION !!! ", 0
sr DB "Serial CTS CP2102 TEST!!!", 0
.Code

Window1Procedure Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM

	.If uMsg == WM_CREATE
		Invoke SetWindowText, hWnd, Addr sr
Invoke GetDlgItem, hWnd, IDC_WINDOW1_IMAGE1
Mov himage, Eax
Invoke GetDlgItem, hWnd, IDC_WINDOW1_IMAGE2
Mov himage1, Eax
Invoke GetDlgItem, hWnd, IDC_WINDOW1_IMAGE3
Mov himage2, Eax

		Mov Eax, hWnd
		Mov eu, Eax








		.ElseIf uMsg == WM_FINISH
Invoke SetDlgItemInt, hWnd, IDC_WINDOW1_EDIT1, retEvent, 0
.If retEvent == 8
Invoke SetBackColor, himage, 255

.ElseIf retEvent == 16
Invoke SetBackColor, himage1, 255

.ElseIf retEvent == 32
Invoke SetBackColor, himage2, 255

.EndIf
Invoke Sleep, 300

Invoke SetBackColor, himage, -1
Invoke SetBackColor, himage1, -1
Invoke SetBackColor, himage2, -1






	.ElseIf uMsg == WM_COMMAND

.If wParam == IDC_WINDOW1_BUTTON1
	    Invoke GetDlgItemText, hWnd, IDC_WINDOW1_EDIT2, Addr acom, 6
		Invoke CreateFile, Addr acom, GENERIC_READ Or GENERIC_WRITE, 0, NULL, OPEN_EXISTING, 0, NULL
		Mov hCom, Eax
        Invoke SetCommMask, hCom, 255


		Invoke CreateThread, NULL, NULL, Offset ThreadProc, \
                             NULL, NORMAL_PRIORITY_CLASS, \
                             Addr ThreadID
		Mov hThread, Eax

	.EndIf






	.ElseIf uMsg == WM_CLOSE
		Invoke IsModal, hWnd
		.If Eax
			Invoke EndModal, hWnd, IDCANCEL
			Mov Eax, TRUE ;Return TRUE
			Ret
		.EndIf
	.EndIf
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Procedure EndP
ThreadProc Proc Private Uses Ecx
Invoke WaitForSingleObject, hEventStart, INFINITE
	Invoke WaitCommEvent, hCom, Addr retEvent, NULL

   Invoke PostMessage, eu, WM_FINISH, NULL, NULL


    Jmp ThreadProc

ThreadProc EndP



Window1Button1 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Button1 EndP

Window1Edit2 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Edit2 EndP
