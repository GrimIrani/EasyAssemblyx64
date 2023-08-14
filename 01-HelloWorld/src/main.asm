section .data
    message db '0123456789abcdef',0

section .text
    global _start

_start:
    ; Print the message
    mov eax, 4           ; System call number for write
    mov ebx, 1           ; File descriptor (stdout)
    mov ecx, message     ; Address of the message string
    mov edx, 16          ; Length of the message
    int 0x80             ; Call the kernel

exit:
    mov eax, 1           ; System call number for exit
    xor ebx, ebx         ; Exit code (0)
    int 0x80             ; Call the kernel
