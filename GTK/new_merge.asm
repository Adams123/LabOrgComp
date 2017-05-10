jmp main


tam : var #1
vector : var #8
vector_aux : var #8 
vector_aux2: var #8
static tam + #0, #8
static vector + #0, #5
static vector + #1, #3
static vector + #2, #1
static vector + #3, #4
static vector + #4, #6
static vector + #5, #2
static vector + #6, #7
static vector + #7, #15
;static vector + #8, #14
;static vector + #9, #13
;static vector + #10, #12
;static vector + #11, #16
;static vector + #12, #11
;static vector + #13, #10
;static vector + #14, #9
;static vector + #15, #8

Mensagem1: string "Vetor desordenado:"
Mensagem2: string "Vetor ordenado:"

main:
	
	loadn r0,#8 ;verifica se tamanho do vetor é menor que 16
	load r2,tam
	cmp r0,r2
	jle sair_maior
	
	loadn r0,#Mensagem1 ;imprime a mensagem "Vetor desordenado" na tela
	loadn r1,#0
	call printstr
	
	loadn r0,#vector 
	loadn r1,#40
	call imprime_vetor ;imprime vetor desordenado
	
	loadn r0,#Mensagem2 ;imprime a mensagem "Vetor ordenado" na tela
	loadn r1,#80
	call printstr
	
	call merge_sort
	
	loadn r1,#120	  ;r1 <= posicao inicial de escrita do vetor
	loadn r0,#vector
	call imprime_vetor ; imprime ordenado 
	halt

merge_sort:
	loadn r0,#vector	;vetor
	load r1,tam		;direita
	loadn r3,#0			;esquerda
	breakp
merge_sort_r:

	push r4
	push r5
	sub r4,r1,r3		;r4=r1-r3 (aux = final - inicio)
	loadn r5,#1			;r5 = 1 (aux2)
	cmp r4,r5			;if(r4>r5) return
	jle	sair_merge
	
	pop r5
	pop r4
	
	mov r4,r3			;r4=r1 (inicio_esquerda=esquerda)
	
	add	r5,r3,r1		;esquerda_fim=(esquerda+direita)/2
	push r4
	loadn r4,#2
	div r5,r5,r4
	pop r4
	
	push r4				;salva esquerda_inicio na pilha para recursão
	push r5				;salva esquerda_fim na pilha para recursão
	mov r3,r4			;esquerda=esquerda_inicio
	mov r1,r5			;direita=esquerda_fim
	
	call merge_sort_r
	
	pop r5				;restaura os valores de esquerda_inicio e esquerda_fim da recursão anterior
	pop r4
	
	push r6
	push r7
	mov r6,r5			;direita_inicio=esquerda_fim
	mov r7,r1			;direita_fim=direita
	
	call merge_sort_r
	
	pop r7
	pop r6
	
	call merging
	
	rts
	
sair_merge:
	pop r5
	pop r4
	rts
	

merging:
	;r4=esquerda_inicio
	;r5=esquerda_fim
	;r6=direita_inicio
	;r7=direita_fim
	push r0				;empilha vetor original para não modificarmos
	push r1				;empilha direita e esquerda para liberar registradores
	push r3
	;nesse ponto, apenas r4 a r7 estão sendo usados
	loadn r0, #vector_aux
	sub r2,r5,r4		;tamanho da parte da esquerda
	sub r3,r7,r6		;tamanho da parte da direita
	
	
	pop r0
	pop r3
	pop r2
	rts
	
sair_maior:

	loadn r0,#'0'
	loadn r1,#0
	outchar r0,r1
	halt

imprime_vetor:

	push r0 ; numero a ser impresso
	push r1 ; posição da impressão
	push r2 ; contador
	push r3 ; tamanho do vetor
	push r4 ; r4 endereço do vetor
	load r3,tam
	loadn r2, #0
	loadn r4, #vector
	
	loop_imprime:
			
		cmp r3,r2 	; r3(tam) == r2(contador)
		jeq sair_imprime_vetor

		loadi r0,r4 ; carrega em r0 o conteudo apontado por r4

		call printnr 

		inc r1
		inc r2
		inc r4
		
		cmp r3, r2	; r3(tam) == r2(contador)
		jeq sair_imprime_vetor

		loadn r5, #',' 
		outchar r5, r1 ; imprime a virgula na posica r1
		inc r1
		
		jmp loop_imprime
		


sair_imprime_vetor:
	
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts


bubble_sort:

	push r0 ; R0 será o vetor
	push r1 ; R1 tamanho 
	push r2 ; r2 X
	push r3 ; r3 y
	push r4 ; variavel auxiliar	
	push r5 ; valor de vector[x]
	push r6 ; valor de vector[y]
	push r7

	loadn r0,#vector 
	loadn r2, #0
	load r1, tam
	loadn r4, #1 ; variavel auxiliar 

for_x:
	
	add r3, r2, r4		;r3(y) = r2(x) + 1
	cmp r2,r1		
	jle for_y			;r2(x) < r1(tam)
	jmp sair	
	
for_y:	
	
	cmp r3,r1	
	jeg incrementa_x	;r3(y) >= r1(tam)
	call compara
	inc r3			;incrementa r3(y)
	jmp for_y

	
incrementa_x: 

	inc r2
	jmp for_x

compara:
	
	push r1
	push r4 
	push r7
	add r4, r0, r2		; r4 é o endereço de r0 + x(r2)
	loadi r5,r4 		; r5 tem o conteudo de r4
	add r7, r0, r3 	; r7 é o endereço de r0 + y(r3)
	loadi r6,r7 		; r6 tem o conteudo de r7
	cmp r5, r6 
	jgr troca			; r5(vector[x]) > r6(vector[y])
	pop r7
	pop r4
	pop r1
	rts

troca: 
		
	mov r1, r5 		; r1(aux) = r5(vector[x])
	storei r4,r6 		; o endereço apontado por r4 recebe o valor de r6(vetor[y])
	storei r7,r1 		; o endereço apontado por r7 recebe o valor de r1(aux)
	loadi r6,r7 		; r6 tem o conteudo de r7
	pop r7
	pop r4
	pop r1
	;loadn r1, #0	
	rts	

sair:

	pop r7	
	pop r6	
	pop r5
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts

;**************************************************
; Subrotina que imprime um numero inteiro na tela
;**************************************************

printnr:
	push r0
	;push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	loadn r3, #10		; r3 = 10
	loadn r4, #0		; r4 = 0
	loadn r5, #48		; r5 = 48
	mov r7, sp		; r7 = sp
	jmp calc_resto

calc_resto:
	
	mod r2, r0, r3		; r2 (rest) = r0 (num) mod r3 (10)
	div r0, r0, r3		; r0 = r0 (num) div r3 (10)
	add r2, r2, r5		; adiciona 48 a r2 (rest) para exibir em ascii
	push r2			; empilha r2 (rest)
	cmp r0, r4		; criterio de parada > se r0 (num) == r4 (0)
	jeq imprime_numero
	jmp calc_resto	
	

imprime_numero:

	pop r2			; desempilha r2
	outchar r2, r1		; imprime r2 na posicao r1 (pos)
	mov r6, sp		; r6 = sp
	cmp r7, r6		; r7 == r6?
	jeq desempilha_reg	
	inc r1			; incrementa r1 (pos)
	jmp imprime_numero

desempilha_reg:

	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	;pop r1
	pop r0	
	rts
	
	
;**************************************************
; Subrotina que imprime uma string na tela
; Parametros: 
; r0 - endereco da string; 
; r1 - posicao na tela a ser impressa a string
;**************************************************
printstr: ; Imprime uma string apontada por r0, ate encontrar o '\0' 
	; Parametros: 
	; r0 - endereco da string; 
	; r1 - posicao na tela a ser impressa a string
	push 	r0
	push 	r1
	push 	r2
	push 	r3
	push	r4
	push	r5
	push	r6
	push	r7
	
	loadn 	r2, #'\0'			; r2 = 0  e eh usado como var auxiliar.  
	
loop_p_string:

	loadi 	r3, r0			; r3 = str[r0]
	cmp 	r3, r2			; compara se str[r0] == zero
	jeq 	sai_loop		; saida do loop caso '\0'

	outchar	r3, r1			; imprime o conteudo de r3 na posicao r1. Neste caso 
					; imprime o ASCII de str[r0].
	inc 	r1			; incrementa posicao para imprimir
	inc 	r0			; incrementa ponteiro da string
	
	jmp 	loop_p_string		; retorna para o inicio do loop_percorre

sai_loop:
	; desempilha registradores empilhados para retornar valores originais
	pop	r7	
	pop	r6
	pop	r5
	pop	r4	
	pop 	r3
	pop 	r2
	pop 	r1
	pop 	r0	

	rts							; retorna para quem chamou Printstr
;****************************************
