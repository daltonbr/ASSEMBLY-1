SECTION	.data

n: db 4



SECTION .text

global _start


_start:

mov al,[n]
cmp al,0
je quasefinal
cmp al,1
je quasefinal
mov al,1
mov bl,0
mov cl,1

loop:

mov dl,al
add al,bl
mov bl,dl
inc cl
cmp cl,[n]
je quasemaisfinal
jmp loop

quasefinal:

mov ebx,[n]
jmp final

quasemaisfinal:

mov bl,al

final:

mov eax,1
int 0x80
