INCLUDE Irvine32.inc

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
mov edx,0
    mov edx, offset Reply   ; Load the address of the Reply string into edx
    call WriteString        ; Display the Reply string
    call Crlf  
    call dumpregs
    
    call ExitProcess
main ENDP

END main    