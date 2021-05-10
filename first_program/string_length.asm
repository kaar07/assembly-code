section .data
my_message db 'Kaarthik',0Ah

section .text
global _start
_start:
mov ebx,my_message
mov eax,ebx
nextchar:
cmp byte[eax],0
jz finished
inc eax
jmp nextchar

finished:
sub eax,ebx
mov edx,eax
mov ecx,my_message
mov ebx,1
mov eax,4
int 80h

mov ebx,0
mov eax,1
int 80h
