INCLUDE Irvine32.inc
INCLUDELIB Irvine32.lib

.data
mbyte BYTE 5h,12

.code
main PROC
    mov eax,0
    call dumpregs

    mov al, mbyte+1
    call writeint
    call Crlf

    mov ah, mbyte
    call writeint
    call crlf
    call dumpregs
    exit
main ENDP

END main