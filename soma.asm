; Compilar o programa: nasm -f elf64 soma.asm -> Transforma o programa para linguagem de máquina
; Linkeditar -> Transformar o programa em linguagem de máquina para um executável
; ld -s -o soma soma.o
section .data

section .text

global _start

_start:
  mov eax, 0x1
  mov ebx, 0x0 ; Sistema quer saber o valor e retorno ->
               ; Por isso foi passado o valor 0 em hexadecimal,
               ; Para representar a saída do programa
               ; Isso equivale a palavra "Câmbio"
               ; Usada nas conversações com Walkie Talkies
  int 0x80     ; Manda o SO processar a informação
               ; Essas três linhas sempre devem ser usadas para encerrar um programa