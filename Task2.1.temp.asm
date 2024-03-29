INCLUDE c:\Users\Umair_rana\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc

.data
mbyte BYTE 05,12,100
Align 2
mword WORD 50h, 60h
mdouble DWORD 0A0908070h
greetings BYTE "Hi There",0
Response TEXTEQU <'Hi, Thanks.'>
Reply BYTE Response


.code
main PROC
    mov eax,0
    mov eax, lengthof greetings
    call writeint
    call crlf

    mov eax, sizeof greetings
    call writeint
    call crlf

    mov edx, offset greetings
    call writestring
    
    call dumpregs
    
    call ExitProcess
main ENDP

END main    