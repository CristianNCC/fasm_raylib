format ELF64

section '.text' executable
public _start

extrn _exit
extrn InitWindow
extrn WindowShouldClose
extrn CloseWindow
extrn BeginDrawing
extrn EndDrawing

_start:
	mov rdi, 800
	mov rsi, 600
	mov rdx, title
	call InitWindow

.gameloop:
	call WindowShouldClose
 	test rax, rax
 	jnz .over
 	call BeginDrawing
 	call EndDrawing
 	jmp .gameloop

.over:
	call CloseWindow
	mov rdi, 0
	call _exit

section '.data' writeable
title: db "Raylib from FASM", 0

section '.note.GNU-stack'
