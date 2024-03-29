section .data
    prompt db 'Enter a number: ',0
    buffer resb 32

section .text
    global _start

_start:
    ; Print the prompt
    mov eax, 4           ; System call number for write
    mov ebx, 1           ; File descriptor (stdout)
    mov ecx, prompt      ; Address of the prompt string
    mov edx, 15          ; Length of the prompt
    int 0x80             ; Call the kernel

    ; Read user input into buffer
    mov eax,3            ; System call number for read
    mov ebx,0            ; File descriptor (stdin)
    mov ecx,buffer       ; Address of the buffer to store input
    mov edx,32           ; Maximum length of input
    int 0x80             ; Call the kernel

exit:
    mov eax,1               ; System call number for exit
    xor ebx,ebx             ; Exit code (0)
    int 0x80                ; Call the kernel
