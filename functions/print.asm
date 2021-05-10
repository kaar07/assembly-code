section .data:
message db "Mars it is", 0Ah

section .text:
global _start

_start:
mov eax,message
call stringlen

mov edx,eax
mov ecx,message
mov ebx,1
mov eax,4
int 80h

mov ebx,0
mov eax,1
int 80h

stringlen:
push ebx
mov ebx,eax

nextchar:
cmp byte[eax],0
jz finished
inc eax
jmp nextchar

finished:
sub eax,ebx
pop ebx
ret

