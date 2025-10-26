    .text
    .globl _main
_main:
    // write(1, msg, 13)
    mov     x0, #1                          // fd = stdout
    adrp    x1, _msg@PAGE                   // page base of _msg
    add     x1, x1, _msg@PAGEOFF            // x1 = &msg
    mov     x2, #13                         // length

    // x16 = 0x02000004  (Darwin class | SYS_write)
    movz    x16, #0x0004
    movk    x16, #0x2000, lsl #16
    svc     #0x80

    // return 0 from main (no exit syscall needed here)
    mov     w0, #0
    ret

    .data
_msg:
    .ascii  "Hello, world\n"

