.Const

.Data?

.Data
lpFilename DB "com1 ", 0
hport DD 0
cuprins DB "Error!!!!", 0
titlu DB "Port not exist!!!", 0
titlu1 DB "Port ready for use!!!", 0
ce_scriu DB "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa", 0
loc DD 0
sr DB "Serial TX CP2102 TEST!!!", 0
.Code

Window1Procedure Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	.If uMsg == WM_CREATE
Invoke SetWindowText, hWnd, Addr sr
	.ElseIf uMsg == WM_COMMAND
		.If wParam == IDC_WINDOW1_BUTTON1
			Invoke GetDlgItemText, hWnd, IDC_WINDOW1_EDIT1, Addr lpFilename, 6
            Invoke CreateFile, Addr lpFilename, GENERIC_WRITE, 0, NULL, OPEN_EXISTING, FILE_ATTRIBUTE_NORMAL, NULL
            Mov hport, Eax
            .If hport == -1
            	Invoke MessageBox, hWnd, Addr titlu, Addr cuprins, 0
            	.Else
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke WriteFile, hport, Addr ce_scriu, 100, Addr loc, 0
               Invoke CloseHandle, hport
               Invoke MessageBox, hWnd, Addr titlu1, Addr lpFilename, 0
               .EndIf


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

Window1Edit1 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Edit1 EndP

Window1Static1 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Static1 EndP

Window1Button1 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
	Xor Eax, Eax	;Return FALSE
	Ret
Window1Button1 EndP

;Window1Edit2 Proc hWnd:HWND, uMsg:ULONG, wParam:WPARAM, lParam:LPARAM
;	Xor Eax, Eax	;Return FALSE
;	Ret
;Window1Edit2 EndP
