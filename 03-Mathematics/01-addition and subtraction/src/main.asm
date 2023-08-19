section .data
    num1 dd 42
    num2 dd 10

section .text
    global _start

_start:
    ; Addition
    mov eax, [num1]     ; Load the value of num1 into EAX register
    add eax, [num2]     ; Add the value of num2 to EAX register

    ; Store the result back into memory
    mov [result], eax   ; Store the result in a variable called 'result'

    ; Subtraction
    mov ebx, [num1]     ; Load the value of num1 into EBX register
    sub ebx, [num2]     ; Subtract the value of num2 from EBX register

    exit:
    mov eax,1           ; System call number for exit
    xor ebx,ebx         ; Exit code (0)
    int 0x80            ; Call the kernel

section .bss
    result resd 1       ; Reserve space for result variable (4 bytes)
