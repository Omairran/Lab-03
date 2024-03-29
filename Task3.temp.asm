INCLUDE c:\Users\Umair_rana\.vscode\extensions\istareatscreens.masm-runner-0.4.5\native\irvine\Irvine32.inc
INCLUDELIB Irvine32.lib

.data
mbyte BYTE 5h,12

.code
main PROC
    mov eax,0
    call dumpregs

    mov al, mbyte+1
    call writebin
    call Crlf

    mov ah, mbyte
    call writebin
    call crlf
    call dumpregs
    exit
main ENDP

END main