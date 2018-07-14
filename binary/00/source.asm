    segment .data
flag    db  "<redacted>", 0
msg     db  "It's easy just look harder :)", 0
msg_len equ $-msg

    segment .text
    global _start
_start:
    mov eax, 0x04
    mov ebx, 1
    mov ecx, msg
    mov edx, msg_len
    int 0x80
    mov eax, 0x01
    xor ebx, ebx
    int 0x80
