	.globl __start
	.globl ___argv
	.globl _environ

	.text

__start:
	enter [],0
	addr 8(fp),_environ(pc)
	movd 4(fp),___argv(pc)
	jsr _main
	movd r0,tos
	exit []
	jsr _exit

	.data
_environ:
	.long 0
