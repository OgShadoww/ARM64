  .global _main

  .text 
_main:
  mov x0, #1
  adrp    x1, _msg@PAGE
  add     x1, x1, _msg@PAGEOFF
  mov     x2, #13
  mov x16, #64
  svc #0

  mov x0, #0
  mov x16, #1 
  svc #0

  .data
_msg:
  .ascii "Hello, world\n"
