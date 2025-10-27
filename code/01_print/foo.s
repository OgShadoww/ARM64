	.section	__TEXT,__text,regular,pure_instructions
	.build_version macos, 15, 0	sdk_version 15, 2
	.globl	_main                           ; -- Begin function main
	.p2align	2
_main:                                  ; @main
	.cfi_startproc
; %bb.0:
	sub	sp, sp, #32
	.cfi_def_cfa_offset 32
	mov	w0, #0                          ; =0x0
	str	wzr, [sp, #28]
	str	wzr, [sp, #24]
	mov	x8, #4                          ; =0x4
	str	x8, [sp, #16]
	mov	w8, #3                          ; =0x3
	str	w8, [sp, #12]
	mov	w8, #10                         ; =0xa
	str	w8, [sp, #8]
	add	sp, sp, #32
	ret
	.cfi_endproc
                                        ; -- End function
.subsections_via_symbols
