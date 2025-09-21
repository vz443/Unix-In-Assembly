; Sep 21 2025
; A reimplementation of echo in x86-64 nasm assembly
; Written only using the Intel 64 and IA-32 Architectures Software Developer's Manual

global _start 

section .bss
	buffer resb 128




section .text

_start:
	mov rax, 0
	mov rdi, 0
	mov rsi, buffer
	mov rdx, 128
	syscall

	mov rdi, 1
	mov rsi, buffer
	mov rdx, rax
	mov rax, 1
	syscall

	mov rax, 60
	xor rdi, rdi
	syscall

	
