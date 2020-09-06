	.file	"calc.c"
	.text
	.comm	_a, 1, 0
	.comm	_b, 1, 0
	.comm	_c, 4, 2
	.comm	_d, 4, 2
	.comm	_e, 4, 2
	.comm	_f, 4, 2
	.comm	_g, 8, 3
	.comm	_h, 8, 3
	.comm	_i, 12, 4
	.comm	_j, 12, 4
	.def	___main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
LC0:
	.ascii "New message!\0"
	.text
	.globl	_main
	.def	_main;	.scl	2;	.type	32;	.endef
_main:
LFB13:
	.cfi_startproc
	pushl	%ebp
	.cfi_def_cfa_offset 8
	.cfi_offset 5, -8
	movl	%esp, %ebp
	.cfi_def_cfa_register 5
	andl	$-16, %esp
	subl	$16, %esp
	call	___main
	movl	$LC0, (%esp)
	call	_puts
	movl	$0, %eax
	leave
	.cfi_restore 5
	.cfi_def_cfa 4, 4
	ret
	.cfi_endproc
LFE13:
	.ident	"GCC: (MinGW.org GCC-8.2.0-5) 8.2.0"
	.def	_puts;	.scl	2;	.type	32;	.endef
