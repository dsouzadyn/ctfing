    segment .data
flag    db  "<redacted>", 0
msg     db  "Come on! it's the same binary ffs", 0
msg_len: equ $-msg
    segment .text
    global main
main:
    mov eax, 0x04
    mov ebx, 1
    lea ecx, [msg]
    lea edx, [msg_len]
    int 0x80
    mov eax, 0x01
    xor ebx, ebx
    int 0x80
