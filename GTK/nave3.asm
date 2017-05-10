jmp main

; Declara e preenche tela linha por linha (40 caracteres):
tela1Linha0  : string "                                        "
tela1Linha1  : string "                                        "
tela1Linha2  : string "                                        "
tela1Linha3  : string "                                        "
tela1Linha4  : string "    | |  |                              "
tela1Linha5  : string "      OOO                               "
tela1Linha6  : string "   - OOOOO -                            "
tela1Linha7  : string "      OOO                               "
tela1Linha8  : string "    |  |  |             @@@@            "
tela1Linha9  : string "                      @@@@@@@@@@        "
tela1Linha10 : string "                       @@@@@@@@@@@@     "
tela1Linha11 : string "                         @@@            "
tela1Linha12 : string "                                        "
tela1Linha13 : string "                                        "
tela1Linha14 : string "                                        "
tela1Linha15 : string "                                        "
tela1Linha16 : string "                                        "
tela1Linha17 : string "                     :  :               "
tela1Linha18 : string "          :  :     :      :             "
tela1Linha19 : string "       :       : :          :           "
tela1Linha20 : string "     :        : ** :         :          "
tela1Linha21 : string "            :    ..   :                 "
tela1Linha22 : string "          :       ..    :               "
tela1Linha23 : string "         :         ..     :             "
tela1Linha24 : string "         :         ..      :            "
tela1Linha25 : string "          :       ...     :             "
tela1Linha26 : string "                 ...                    "
tela1Linha27 : string "                ...                     "
tela1Linha28 : string "               ....                     "
tela1Linha29 : string "              .....         vidas: I I I"


tela_topo: var #1
tela_baixo: var #1
tela_dir: var #1
tela_esq: var #1

c_nave: var #1
pos_nave: var #1	
pos_ant_nave: var #1

c_alien: var #1
pos_alien: var #40
pos_ant_alien: var #40

inc_rand: var #1
inc_rand_alien: var #1

rand: var #7
rand_alien: var #7
num_alien: var #1

num_vidas: var #1
contador: var #1

static c_nave + #0, #'x'	; caracter da nave
static c_alien + #0, #'A'	; caracter do alien

static num_vidas + #0, #3	; vidas do jogo
static inc_rand + #0, #0

static pos_nave + #0, #1100
static pos_ant_nave + #0, #1100

static pos_alien + #0, #0
static pos_ant_alien + #0, #0
static pos_alien + #1, #1
static pos_ant_alien + #1, #1
static pos_alien + #2, #2
static pos_ant_alien + #2, #2
static pos_alien + #3, #3
static pos_ant_alien + #3, #3
static pos_alien + #4, #4
static pos_ant_alien + #4, #4
static pos_alien + #5, #5
static pos_ant_alien + #5, #5
static pos_alien + #6, #6
static pos_ant_alien + #6, #6
static pos_alien + #7, #7
static pos_ant_alien + #7, #7
static pos_alien + #8, #8
static pos_ant_alien + #8, #8
static pos_alien + #9, #9
static pos_ant_alien + #9, #9
static pos_alien + #10, #10
static pos_ant_alien + #10, #10
static pos_alien + #11, #11
static pos_ant_alien + #11, #11
static pos_alien + #12, #12
static pos_ant_alien + #12, #12
static pos_alien + #13, #13
static pos_ant_alien + #13, #13
static pos_alien + #14, #14
static pos_ant_alien + #14, #14
static pos_alien + #15, #15
static pos_ant_alien + #15, #15
static pos_alien + #16, #16
static pos_ant_alien + #16, #16
static pos_alien + #17, #17
static pos_ant_alien + #17, #17
static pos_alien + #18, #18
static pos_ant_alien + #18, #18
static pos_alien + #19, #19
static pos_ant_alien + #19, #19
static pos_alien + #20, #20
static pos_ant_alien + #20, #20
static pos_alien + #21, #21
static pos_ant_alien + #21, #21
static pos_alien + #22, #22
static pos_ant_alien + #22, #22
static pos_alien + #23, #23
static pos_ant_alien + #23, #23
static pos_alien + #24, #24
static pos_ant_alien + #24, #24
static pos_alien + #25, #25
static pos_ant_alien + #25, #25
static pos_alien + #26, #26
static pos_ant_alien + #26, #26
static pos_alien + #27, #27
static pos_ant_alien + #27, #27
static pos_alien + #28, #28
static pos_ant_alien + #28, #28
static pos_alien + #29, #29
static pos_ant_alien + #29, #29
static pos_alien + #30, #30
static pos_ant_alien + #30, #30
static pos_alien + #31, #31
static pos_ant_alien + #31, #31
static pos_alien + #32, #32
static pos_ant_alien + #32, #32
static pos_alien + #33, #33
static pos_ant_alien + #33, #33
static pos_alien + #34, #34
static pos_ant_alien + #34, #34
static pos_alien + #35, #35
static pos_ant_alien + #35, #35
static pos_alien + #36, #36
static pos_ant_alien + #36, #36
static pos_alien + #37, #37
static pos_ant_alien + #37, #37
static pos_alien + #38, #38
static pos_ant_alien + #38, #38
static pos_alien + #39, #39
static pos_ant_alien + #39, #39

static num_alien + #0, #10
static contador + #0, #0


static rand + #0, #40
static rand + #1, #40
static rand + #2, #40
static rand + #3, #40
static rand + #4, #40
static rand + #5, #40
static rand + #6, #40


static rand_alien + #0, #20
static rand_alien + #1, #10
static rand_alien + #2, #15
static rand_alien + #3, #39
static rand_alien + #4, #35
static rand_alien + #5, #18
static rand_alien + #6, #29


main:
	loadn r1, #tela1Linha0
	loadn r2, #0
	call ImprimeTela
	
	store inc_rand, r2 		; zera inc_rand
	store inc_rand_alien, r2 	; zera inc_rand_alien
	
	loop:
		loadn r1, #10	;valor para o mod
		mod r1, r0, r1
		cmp r1, r2
		ceq MoveNave		
		
		loadn r1, #400	;valor para mod
		mod r1, r0, r1
		cmp r1, r2
		ceq MoveAlien		
		
		call VerificaColisao

		call Delay
		inc r0
	jmp loop
	halt

VerificaColisao:
	push r0
	push r1
	push r2
	
	load r0, pos_nave
	load r1, pos_alien

	loadn r2, #1159
	cmp r1, r2
	jgr perdeu_vida

	cmp r0, r1
	jne return_verifica_colisao

	call reset_alien


return_verifica_colisao:
	pop r2
	pop r1
	pop r0
	rts

reset_alien:
	call apaga_alien
	call new_alien
	rts

new_alien:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r0, #0
	loadn r1, #rand_alien
	load r2, inc_rand_alien
	loadn r6, #7 	; limite do vetor rand
	
	add r1, r1, r2 	; r1 = endereco de r1(rand) na posicao r2
	loadi r3, r1	; r3 = valor de r1 na posicao r2	

	add r5, r0, r3	; soma o valor randomico (r3) com a posicao atual do alien
	
	
	store pos_alien, r5
	inc r2

	cmp r6, r2
	ceq zera_rand
	
	store inc_rand_alien, r2
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

return_verifica_colisao:

	pop r2
	pop r1
	pop r0
	rts

perdeu_vida:
	push r0
	
	load r0, num_vidas
	dec r0
	store num_vidas, r0
	pop r0
	
	jz perdeu
	call reset_alien
	jmp return_verifica_colisao	

perdeu:
	breakp	

MoveNave:
	call desenha_nave
	call recalcula_nave
	call apaga_nave
	rts

MoveAlien:
	
	push r0
	push r1
	push r2
	
	load r0, contador
	loadn r1, #pos_alien
	add r1, r0, r1
	loadi r1, r1
	
	loadn r2, #pos_ant_alien
	add r2, r0, r2
	loadi r2,r2
	
	call recalcula_alien
	call apaga_alien
	call desenha_alien
	
	pop r2
	pop r1 
	pop r0
	
	rts

atualiza_aliens:
	;r1 = post atual
	;r2 = post anterior
	
	push r0
	push r3
	push r4
	
	load r0, contador
	loadn r3, #pos_ant_alien
	add r3,r3,r0
	storei r1, r3
	
	pop r4
	pop r3
	pop r0
	rts
	
desenha_alien:
	;r1 (parametro) = pos_alien a ser desenhada
	push r0
	
	load r0, c_alien
	outchar r0, r1
	
	pop r0
	rts

apaga_alien:

	;recebe r1 como pos_atual e r2 como pos_anterior
	push r0
	push r3
	push r4
	push r5
	
	loadn r0, #tela1Linha0
	loadn r3, #40
	
	cmp r1, r2
	jeq return_apaga_alien
	
	add r4,r0,r2 ; endereço + pos anterior do alien
	div r5,r2,r3 ; correção de \0
	add r4,r4,r5 ; r4=endereco[pos_ant_alien] + correção \0
	
	loadi r4,r4
	
	outchar r4, r2
	call atualiza_aliens

return_apaga_alien:
	pop r5
	pop r4
	pop r3
	pop r0
	rts

recalcula_alien:
	push r0
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadn r0, #40
	add r3, r1, r0 ;r3 = pos atual + 40
	
	load r5,contador
	loadn r4, #pos_alien
	add r4,r4,r5
	
	storei r4, r3 ; pos_alien[contador] = r3

	
	loadn r5, #1159
	cmp r1, r5
	jeg zera_pos_alien
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r0
	rts

zera_pos_alien:
	loadn r6,#20
	storei r4,r6
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r0
	rts
		
zera_rand:
	loadn r2, #0
	rts

desenha_nave:
	push r0
	push r1
	
	load r0, c_nave
	load r1, pos_nave
	outchar r0, r1
	
	pop r1
	pop r0
	rts

apaga_nave:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	
	loadn r0, #tela1Linha0
	load r1, pos_ant_nave
	load r2, pos_nave
	loadn r3, #40
	
	cmp r1, r2
	jeq return_apaga_nave
	
	add r4,r0,r1 ; endereço + pos anterior da nave
	div r5,r1,r3 ; correção de \0
	add r4,r4,r5 ; r4=endereco[pos_ant_nave] + correção \0
	
	loadi r4,r4
	
	outchar r4, r1
	store pos_ant_nave, r2

return_apaga_nave:
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

recalcula_nave:
	push r0		;tecla pressionada
	push r1		;constante 255 para comparacao
	push r2		;registrador de tecla de movimentacao
	push r3		
	push r4
	push r5
	push r6
	push r7
	
	loadn r1, #255
	inchar r0	; Le tecla que esta sendo precionada no momento
	
	;call Delay
	
	
	cmp r1, r0	; se nao for pressionada nenhuma tecla, retorna 255
	jeq return_calcula_nave		; se nao pressionou nenhuma tecla, vai pro fim!
	
   case1:
	loadn r2, #'w'	
	cmp r2, r0	; case tecla for 'W'
	jne case2
	
	load r3, pos_nave
	load r4, pos_ant_nave
	loadn r5, #40
	
	loadn r7, #1000
	cmp r3,r7
	jle return_calcula_nave
	
	sub r3, r4, r5  	;pos_nave = pos_ant_nave - 40 ; nave sobe!
	store pos_nave, r3
	store pos_ant_nave, r4
     	
   case2:	
	loadn r2, #'s'	
	cmp r2, r0	; case tecla for 'S'
	jne case3

	load r3, pos_nave
	load r4, pos_ant_nave
	loadn r5, #1109
	
	cmp r3,r5
	jeg return_calcula_nave
	
	loadn r5, #40
	add r3, r4, r5  	;pos_nave = pos_ant_nave + 40 ; nave desce!
	store pos_nave, r3
	store pos_ant_nave, r4	

   case3:
	loadn r2, #'a'	
	cmp r2, r0	; case tecla for 'A'
	jne case4

	load r3, pos_nave
	load r4, pos_ant_nave
	loadn r5, #40
	loadn r6, #0
	
	mod r5, r3, r5
	cmp r5, r6
	jeq return_calcula_nave
	
	loadn r5, #1
	sub r3, r4, r5  	;pos_nave = pos_ant_nave - 1 ; nave esquerda!
	store pos_nave, r3
	store pos_ant_nave, r4	

    case4:
	loadn r2, #'d'	
	cmp r2, r0	; case tecla for 'D'
	jne return_calcula_nave

	load r3, pos_nave
	load r4, pos_ant_nave
	
	load r3, pos_nave
	load r4, pos_ant_nave
	loadn r5, #40
	loadn r6, #39
	
	mod r5, r3, r5
	cmp r5, r6
	jeq return_calcula_nave
	
	loadn r5, #1
	add r3, r4, r5  	;pos_nave = pos_ant_nave + 1 ; nave direita!
	store pos_nave, r3
	store pos_ant_nave, r4
	
return_calcula_nave:	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts		; se nao precionou nenhuma tecla, nao movimenta a nave!!

;----------------------------------

;loop:
;	if (mod(c/10) == 0
;	if (mod(c/5) == 0
;	{ ApagaAlien
;	  RecalculaAlien
;	  DesenhaAlien
;	}
;	if (mod(c/2) == 0	
;	delay
;	c++
;	goto loop

Delay:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	Push R0
	Push R1
	
	Loadn R1, #1  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #3000	; b
   Delay_volta: 
	Dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	JNZ Delay_volta	
	Dec R1
	JNZ Delay_volta2
	
	Pop R1
	Pop R0
	
	RTS							;return

;-------------------------------

ImprimeTela: 	;  Rotina de Impresao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r4 na pilha para ser usado na subrotina

	loadn R0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn R3, #40  	; Incremento da posicao da tela!
	loadn R4, #41  	; incremento do ponteiro das linhas da tela
	loadn R5, #1200 ; Limite da tela!
	
   ImprimeTela_Loop:
		call ImprimeStr
		add r0, r0, r3  	; incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	; incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5		; Compara r0 com 1200
		jne ImprimeTela_Loop	; Enquanto r0 < 1200

	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

ImprimeStr:	;  Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	; protege o r0 na pilha para preservar seu valor
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	
	loadn r3, #'\0'	; Criterio de parada

ImprimeStrLoop:	
	loadi r4, r1
	cmp r4, r3
	jeq ImprimeStrSai
	add r4, r2, r4
	outchar r4, r0
	inc r0
	inc r1
	jmp ImprimeStrLoop
	
ImprimeStrSai:	
	pop r4	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r3
	pop r2
	pop r1
	pop r0
	rts
