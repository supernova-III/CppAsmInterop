global hello_world
extern putstr
extern OutputDebugStringA

section .text
hello_world:
    ; WOW!!! LEARN WINDOWS CALLING CONVENTIONS
    sub     rsp, 28h
    mov     rcx, message
    call    OutputDebugStringA
    add     rsp, 28h
    ret

section .data
message: db "Hello, World", 10

