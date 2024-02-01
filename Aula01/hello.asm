section .data ; Constantes
  msg db 'Hello World!', 0xA ; Criou um apontameto para o local na memória - 0xA equivale ao \n -> Pular uma linha
  tam equ $- msg ; Linha que diz para o assembly o tamnho da minha mensagem -> Obrigatório

; section .bss -> É aqui que fica nossas "variáveis"

section .text ; É aqui que inicia noss programa

global _start ; É um ponteiro chamado _start -> Obrigatório existir. É onde todo programa em Assembly inicia

_start:
  mov eax, 0x4 ; Registradores -> Sintax: Destino, Origem -> (Equivalente) eax = 0x4 
               ; Essa linha significa: Estou enviando alguma coisa para a saída padrão
  mov ebx, 0x1 ; eax está sempre com ebx. Também significa que está enviando alguma coisa para a saída padrão
  mov ecx, msg ; ecx recebe a mensagem
  mov edx, tam ; edx recebe o tamanho da minha mensagem
  int 0x80

saida:
  mov eax, 0x1
  mov ebx, 0x0
  int 0x80