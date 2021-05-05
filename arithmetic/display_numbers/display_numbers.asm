

section .data
number db '4',0xa,'7',0xa,'1',0xa
len equ $ - number

section .text
global _start

_start:
mov edx,len
mov ecx,number
mov ebx,1
mov eax,4
int 0x80

mov ebx,0
mov eax,1

int 0x80
