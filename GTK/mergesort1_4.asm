jmp main


tam : var #1
vector : var #16
vector_aux : var #16
vector_aux2: var #16
static tam + #0, #16
static vector + #0, #15
static vector + #1, #14
static vector + #2, #13
static vector + #3, #12
static vector + #4, #11
static vector + #5, #10
static vector + #6, #9
static vector + #7, #8
static vector + #8, #7
static vector + #9, #6
static vector + #10, #5
static vector + #11, #4
static vector + #12, #3
static vector + #13, #2
static vector + #14, #1
static vector + #15, #0

Mensagem1: string "Vetor desordenado:"
Mensagem2: string "Vetor ordenado:"

main:
	
	loadn r0,#16 ;verifica se tamanho do vetor é menor que 16
	load r2,tam
	cmp r0,r2
	jle sair_maior
	
	loadn r0,#Mensagem1 ;imprime a mensagem "Vetor desordenado" na tela
	loadn r1,#0
	call printstr
	
	loadn r4,#vector ; carrega em r4 o vetor para impressão
	loadn r1,#40 ; posição de impressão
	call imprime_vetor ;imprime vetor desordenado
	
	loadn r0,#Mensagem2 ;imprime a mensagem "Vetor ordenado" na tela
	loadn r1,#80
	call printstr
	
	;carrega valores para inicialização do programa
	loadn r4,#0		;r4 <= 0 (início)
	load r5,tam 		;r5 <= tamanho do vetor (fim)
	loadn r6,#2		
	dec r5 ; N-1
	
	call recursao_merge

	loadn r1,#120	  ;r1 <= posicao inicial de escrita do vetor
	loadn r4,#vector
	call imprime_vetor ; imprime ordenado 
	halt

recursao_merge:

	cmp r4,r5; inicio>fim (criterio de parada) ; funcionando
	jeg sair_merge_sort

	add r3,r4,r5 ;(inicio + fim)/2
	div r3,r3,r6 ; meio

	push r5 ;salva valor do "fim" na pilha
	mov r5,r3 ;copia r3(meio) para r5(fim)

	loadn r2,#4
	sub r1,r5,r4	;fim-inicio (tamanho do segmento)
	cmp r1,r2		;se r1<=4, chama bubble
	jel	chamada_bubble_esq

	call recursao_merge ;chamada de nova recursão para esquerda
continua_esq:
	pop r5 ;restaura valor anterior do fim

	add r3,r4,r5 ;carrega um novo valo na variavel meio
	div r3,r3,r6

	push r4 ;salva valor do "inicio" na pilha
	mov r4,r3 ;inicio <= meio
	inc r4 ;meio+1

	loadn r2,#4
	sub r1,r5,r4	;fim-inicio (tamanho do segmento)
	cmp r1,r2		;se r1<=4, chama bubble
	jel	chamada_bubble_dir

	call recursao_merge ;chamada de nova recursão para a direita
continua_dir:
	pop r4 ;restaura valor de "inicio" na pilha
	
	call intercala ; r0(vetor), r3(meio), r4 (inicio) e r5 (fim)

	rts

chamada_bubble_esq:
	loadn r0,#vector
	add r0,r0,r4
	inc r1
	
	call bubble_sort
	jmp continua_esq

chamada_bubble_dir:
	loadn r0,#vector
	add r0,r0,r4
	inc r1
	
	call bubble_sort
	jmp continua_dir


intercala:
	
	push r4 ; salva o valor do início na pilha
	push r6 ; guarda o  valor 2 na pilha
	
	loadn r7,#vector_aux ; carrega a primeira posição do vetor_aux
	loadn r0, #vector

	add r3,r4,r5 ;recalcula o meio
	div r3,r3,r6
	
	push r3
	inc r3
	mov r2,r3		; j= meio +1
	pop r3

	mov r1,r4 	; i = inicio	
	
	loop_while1:
	
		cmp r1,r3	;compara i com meio
		jgr loop_while2
		cmp r2,r5 ;compara j com fim
		jgr loop_while2
		push r1 ;empilha i
		push r2 ;empilha j
		add r1,r0,r1	
		loadi r6,r1 ; carrega o conteudo apontado por r1 (v(i))
		add r2,r0,r2
		loadi r4, r2  ; carrega o conteudo apontado por r2 (v(j))
		pop r2
		pop r1	

		cmp r6,r4 	; v(i) > v(j)
		jgr faz_else1
	
	storei r7,r6 ;copia o conteudo de r6 e armazena na memoria apontada por r7
		
	inc r1
	inc r7			

	jmp loop_while1

faz_else1:
		
	storei r7, r4 ; copia o conteudo de r4 e armazena na memoria apontada poe r7
	inc r2 ; incrementa j	
	inc r7 ;incrementa o vector_aux(k)

	jmp loop_while1
	

	loop_while2: ; usado para verificar se r1(i) ainda não chegou ao final 

	cmp r1, r3 ; compara i  com meio
	jgr loop_while3	; falta fazer 
	push r1 ; empilha o valor de i
	add r1, r1, r0	
	loadi r6, r1 ; carrega o conteudo apontado por r1 (v(i))
	storei r7,r6 ;copia o conteudo de r6 e armazena na memoria apontada por r7 
	pop r1 ; recupera o valor de i
	inc r1
	inc r7
	jmp loop_while2

loop_while3: 
	
	cmp r2,r5 ; compara j com fim
	jgr init_for 
	push r2 ; empilha o valor de j
	add r2, r2, r0
	loadi r4, r2 
	storei r7,r4	
	pop r2 ;recupera o valor de j
	inc r2
	inc r7
	jmp loop_while3


init_for:

	pop r6 ;recupera o valor 2
	pop r4 ;recupara o início

	loadn r0,#vector
	loadn r7,#vector_aux 

	mov r1,r4 ;i=ini
		
loop_for:	
	cmp r1,r5  ; r1(i) > r5(final)
	jgr sair_intercala
	push r3 ; protege o valor de meio
	push r2 ; 
	sub r3, r1, r4 ; i-inicio
	add r3,r7,r3 ;aux[i-ini]		
	loadi r2,r3 ; r2 carrega a posição de memória apontado por r3(posição de r7(vetor_aux))
	push r0
	add r0, r0, r1	
	storei r0, r2;
	pop r0
	pop r2
	pop r3
	inc r1 ;i++
    inc r3 ;incrementa a posição do r7 
	jmp loop_for
		
sair_intercala:
	
	rts

sair_merge_sort:
	
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

	;push r0 ; R0 será o vetor
	;push r1 ; R1 tamanho 
	push r2 ; r2 X
	push r3 ; r3 y
	push r4 ; variavel auxiliar	
	push r5 ; valor de vector[x]
	push r6 ; valor de vector[y]
	push r7
	loadn r2, #0
	;load r1, tam
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
	;pop r1
	;pop r0
	rts

;**************************************************
; Subrotina que imprime um numero inteiro na tela
;**************************************************

printnr:
	push r0
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
	pop r3
	pop r2
	pop r1
	pop r0	

	rts							; retorna para quem chamou Printstr
;****************************************
