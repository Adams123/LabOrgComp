
; Trabalho de Prática em Organização de Computadores Digitais 

;	Integrantes:
;	Adams Vietro C da Silva - 6791943
;	Rogiel dos Santos Silva - 8061793
;	Maiser José ALves Oliva - 6309717


jmp main

; Declara e preenche tela linha por linha (40 caracteres):


tela1Linha0  : string "                                        "
tela1Linha1  : string "                                        "
tela1Linha2  : string "                                        "
tela1Linha3  : string "                                        "
tela1Linha4  : string "    \\  |  /                             "
tela1Linha5  : string "      OOO                               "
tela1Linha6  : string "   - OOOOO -                            "
tela1Linha7  : string "      OOO                               "
tela1Linha8  : string "    /  |  \\             @@@@            "
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
tela1Linha29 : string " Pontos:00/00               Vidas: I I I"

tela2Linha0  : string "                                        "
tela2Linha1  : string "                                        "
tela2Linha2  : string "                                        "
tela2Linha3  : string "                                        "
tela2Linha4  : string "                                        "
tela2Linha5  : string "           _______________              "
tela2Linha6  : string "          /               \\             "
tela2Linha7  : string "         /                 \\            "
tela2Linha8  : string "        / /\\             /\\ \\           "
tela2Linha9  : string "       / /  \\           /  \\ \\          "
tela2Linha10 : string "      / /    \\         /    \\ \\         "
tela2Linha11 : string "     /  \\    /         \\    /  \\        "
tela2Linha12 : string "    /    \\  /           \\  /    \\       "
tela2Linha13 : string "   /      \\/             \\/      \\      "
tela2Linha14 : string "   |                              |     "
tela2Linha15 : string "   |                              |     "
tela2Linha16 : string "   |                              |     "
tela2Linha17 : string "   \\      /\\      /\\      /\\      /     "
tela2Linha18 : string "    \\    /  \\    /  \\    /  \\    /      "
tela2Linha19 : string "     \\  /    \\  /    \\  /    \\  /       "
tela2Linha20 : string "      \\/      \\/      \\/      \\/        "
tela2Linha21 : string "                                        "
tela2Linha22 : string "                                        "
tela2Linha23 : string "                                        "
tela2Linha24 : string "                                        "
tela2Linha25 : string "                                        "
tela2Linha26 : string "                                        "
tela2Linha27 : string "                                        "
tela2Linha28 : string "                                        "
tela2Linha29 : string " Pontos:00/00               Vidas: I I I"

tela3Linha0  : string "                                        "
tela3Linha1  : string "                                        "
tela3Linha2  : string "                                        "
tela3Linha3  : string "                                        "
tela3Linha4  : string "                                        "
tela3Linha5  : string "       ____                    ____     "
tela3Linha6  : string "      |    |                  |    |    "
tela3Linha7  : string "      |    |                  |    |    "
tela3Linha8  : string "      |____|                  |____|    "
tela3Linha9  : string "                                        "
tela3Linha10 : string "                                        "
tela3Linha11 : string "                                        "
tela3Linha12 : string "                                        "
tela3Linha13 : string "                                        "
tela3Linha14 : string "                                        "
tela3Linha15 : string "                                        "
tela3Linha16 : string "                                        "
tela3Linha17 : string "                                        "
tela3Linha18 : string "     \\                           /      "
tela3Linha19 : string "      \\                         /       "
tela3Linha20 : string "       \\                       /        "
tela3Linha21 : string "        \\                     /         "
tela3Linha22 : string "         \\___________________/          "
tela3Linha23 : string "                                        "
tela3Linha24 : string "                                        "
tela3Linha25 : string "                                        "
tela3Linha26 : string "                                        "
tela3Linha27 : string "                                        "
tela3Linha28 : string "                                        "
tela3Linha29 : string " Pontos:00/00               Vidas: I I I"

tela4Linha0  : string "                                        "
tela4Linha1  : string "                                        "
tela4Linha2  : string "                                        "
tela4Linha3  : string "          ____________________          "
tela4Linha4  : string "         /                    \\         "
tela4Linha5  : string "        /                      \\        "
tela4Linha6  : string "       |   ___            ___   |       "
tela4Linha7  : string "       |  |   |          |   |  |       "
tela4Linha8  : string "       |  |___|          |___|  |       "
tela4Linha9  : string "       |                        |       "
tela4Linha10 : string "       |         /||\\           |       "
tela4Linha11 : string "       |        /_||_\\          |       "
tela4Linha12 : string "        \\                      /        "
tela4Linha13 : string "         \\                    /         "
tela4Linha14 : string "          \\                  /          "
tela4Linha15 : string "          |\\________________/|          "
tela4Linha16 : string "          |  |_|_|_|_|_|_|_| |          "
tela4Linha17 : string "          |  |_|_|_|_|_|_|_| |          "
tela4Linha18 : string "           \\________________/          "
tela4Linha19 : string "                                         "
tela4Linha20 : string "                                        "
tela4Linha21 : string "                                        "
tela4Linha22 : string "                                        "
tela4Linha23 : string "                                        "
tela4Linha24 : string "                                        "
tela4Linha25 : string "                                        "
tela4Linha26 : string "                                        "
tela4Linha27 : string "                                        "
tela4Linha28 : string "                                        "
tela4Linha29 : string " Pontos:00/00               Vidas: I I I"


tela5Linha0  : string "                                        " ; Para apagar a dela inteira se o jogado quiser jogar novamente
tela5Linha1  : string "                                        "
tela5Linha2  : string "    Colocar o nome do jogo              "
tela5Linha3  : string "                                        "
tela5Linha4  : string "                                        "
tela5Linha5  : string "                                        "
tela5Linha6  : string "                                        "
tela5Linha7  : string "                                        "
tela5Linha8  : string "                                        "
tela5Linha9  : string "                                        "
tela5Linha10 : string "                                        "
tela5Linha11 : string "                 FACIL                  "
tela5Linha12 : string "                                        "
tela5Linha13 : string "                                        "
tela5Linha14 : string "                 DIFICIL                "
tela5Linha15 : string "                                        "
tela5Linha16 : string "                                        "
tela5Linha17 : string "                                        "
tela5Linha18 : string "                                        "
tela5Linha19 : string "                                        "
tela5Linha20 : string "                                        "
tela5Linha21 : string "                                        "
tela5Linha22 : string "                                        "
tela5Linha23 : string "                                        "
tela5Linha24 : string "                                        "
tela5Linha25 : string "                                        "
tela5Linha26 : string "                                        "
tela5Linha27 : string "j - Jogar                               "
tela5Linha28 : string "f/d - Seleciona facil ou dificil        "
tela5Linha29 : string "                                        "


tela6Linha0  : string "                 :  :                   "
tela6Linha1  : string "      :  :     :      :                 "
tela6Linha2  : string "   :       : :          :               "
tela6Linha3  : string " :        : ** :                        "
tela6Linha4  : string "       :         :                      "
tela6Linha5  : string "     :             :                    "
tela6Linha6  : string "    :                :                  "
tela6Linha7  : string "                                        "
tela6Linha8  : string "                                        "
tela6Linha9  : string "                                        "
tela6Linha10 : string "                                        "
tela6Linha11 : string "                                        "
tela6Linha12 : string "                                        "
tela6Linha13 : string "                                        "
tela6Linha14 : string "                                        "
tela6Linha15 : string "      PARABENS VOCE GANHOU!!!           "
tela6Linha16 : string "                                        "
tela6Linha17 : string "                                        "
tela6Linha18 : string "                                        "
tela6Linha19 : string "                                        "
tela6Linha20 : string "                                        "
tela6Linha21 : string "                         :  :           "
tela6Linha22 : string "               :  :     :      :        "
tela6Linha23 : string "            :       : :         :       "
tela6Linha24 : string "          :        : ** :               "
tela6Linha25 : string "                 :         :            "
tela6Linha26 : string "               :             :          "
tela6Linha27 : string "             :                 :        "
tela6Linha28 : string "                                        "
tela6Linha29 : string "                                        "

tela7Linha0  : string "                                        "
tela7Linha1  : string "                                        "
tela7Linha2  : string "                                        "
tela7Linha3  : string "                                        "
tela7Linha4  : string "                                        "
tela7Linha5  : string "                                        "
tela7Linha6  : string "                                        "
tela7Linha7  : string "                                        "
tela7Linha8  : string "                                        "
tela7Linha9  : string "                                        "
tela7Linha10 : string "                                        "
tela7Linha11 : string "                                        "
tela7Linha12 : string "                                        "
tela7Linha13 : string "                                        "
tela7Linha14 : string "                                        "
tela7Linha15 : string "                                        "
tela7Linha16 : string "                                        "
tela7Linha17 : string "                                        "
tela7Linha18 : string "                                        "
tela7Linha19 : string "                                        "
tela7Linha20 : string "                                        "
tela7Linha21 : string "                                        "
tela7Linha22 : string "                                        "
tela7Linha23 : string "                                        "
tela7Linha24 : string "                                        "
tela7Linha25 : string "                                        "
tela7Linha26 : string "                                        "
tela7Linha27 : string "                                        "
tela7Linha28 : string "                                        "
tela7Linha29 : string "                                        "

jogar_novamente  : string "DESEJA JOGAR DE NOVO y/n ?"
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


rand: var #7
num_alien: var #1
vida_menos: var #1
num_vidas: var #1
contador: var #1
num_rand : var #1
nivel: var #1
pontos: var #1
pontos_nivel: var #1
vetor_rand: var #10
pos_vetor_rand: var #1
limite_sup: var #10
limite_inf: var #1



static limite_sup + #0, #990	;limite superior da área de movimento da nave
static limite_inf + #0, #1120	;limite inferior da área de movimento da nave

static vida_menos + #0, #1201 ;posicao de decremento da vida
static c_nave + #0, #'x'	; caracter da nave
static c_alien + #0, #'A'	; caracter do alien

static num_vidas + #0, #3	; vidas do jogo
static num_rand + #0, #0	;numero aleatorio sempre modificado durante a excecução
static pos_nave + #0, #1100	;posicao da nave
static pos_ant_nave + #0, #1100 ;posicao anterior da nave

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

static num_alien + #0, #4 ;aliens desejados -1. deve ser <=39, se for >39 VAI DAR PAU
static contador + #0, #0  ;contador global de qual alien esta sendo processado
static nivel + #0, #0	  ;indicador de qual nive o jogador esta
static pontos + #0, #0	  ;pontos que o jogador fez
static pontos_nivel + #0, #5 ;pontos necessarios para avancar de nivel (apenas nivel 0, o resto é pré-definido na função passou)
static pos_vetor_rand + #0, #0 ;posicao que esta no vetor de numeros aleatorios

static vetor_rand + #0, #1
static vetor_rand + #1, #3
static vetor_rand + #2, #7
static vetor_rand + #3, #13
static vetor_rand + #4, #19
static vetor_rand + #5, #27
static vetor_rand + #6, #37
static vetor_rand + #7, #22
static vetor_rand + #8, #16
static vetor_rand + #9, #34

passounivel1: string "Parabens, voce passou o nivel           "
passounivel2: string "Mas... sera que voce passa o proximo    "
passounivel3: string "VISH VISH VISH VISH VISH VISH VISH VISH "

main:

	
Inicio_jogo:
	call dificuldade
	call reseta_jogo
	
	loop:
		loadn r1, #1	;valor para o mod
		mod r1,r0,r1
		cmp r1,r2
		ceq MoveNave		
		
		loadn r1, #6	;a cada x ciclos chama movealien
		mod r1, r0, r1
		cmp r1, r2
		ceq MoveAlien		
		
		call VerificaColisao
		
		loadn r1, #10
		mod r1,r0,r1
		cmp r1, r2
		ceq inc_contador
		
		
		call inc_rand
		
		call Delay
		inc r0
	jmp loop
	halt

dificuldade:

	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	loadn r1, #tela5Linha0
	loadn r2, #0
	call ImprimeTela

	loadn r3, #'x'    ; localizador para seleção 		
	loadn r4, #455
	loadn r5, #575
	loadn r6, #' '
	outchar r3,r4 	; imprimi inicialmente
	loadn r7, #0 ; flag para identificar o nivel (fácil ou Dificil)

loop_dificul:
  

inchar r0

case1_dificul:

	
	loadn r2, #'f'	
	cmp r2, r0	; case tecla for 'f' para escolher facil
	jne case2_dificul	
	outchar r6,r5
	outchar r3,r4 
	loadn r7, #0
	
     	
 case2_dificul:

	loadn r2, #'d'	
	cmp r2,r0	; case tecla for d para selecionar dificil
	jne confirma_dificul
	outchar r6,r4
	outchar r3,r5
	loadn r7, #1
	

confirma_dificul:

	loadn r2, #'j'	
	cmp r2,r0	;case tecla for j vai para o jogol
	jne loop_dificul
	
	


ir_jogo:

	loadn r1, #1

dificuldade_case1:

	cmp r1, r7
	jeq dificuldade_case2	
	loadn r0, #910 ; tamanho superior da tela 
	store limite_sup, r0
	loadn r0, #0 ; numero de aliens  
	store num_alien, r0
	jmp sair_dificul ;; sai para retorna para main 
	
dificuldade_case2:

  	loadn r0, #990 ; diminui a movimentação do x na parte superior  
	store limite_sup, r0
	loadn r0, #2 ; numero de aliens  
	store num_alien, r0

sair_dificul:

	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
 	rts 



inc_contador:
	push r3
	push r4
	
	load r3,contador
	load r4,num_alien
	
	cmp r3,r4 ;verifica se chegou no ultimo alien
	jeq zera_contador ;se chegou, zera contador e salva
	
	inc r3 ;se nao chegou, incrementa e salva
	store contador, r3
	
	pop r4
	pop r3
	rts
	
zera_contador:

	push r0
	loadn r0, #0
	store contador, r0
	pop r0
	
	pop r4
	pop r3

	rts

inc_rand: 
	push r0	
	push r1
	push r2
	
	
	load r1, pos_vetor_rand
	loadn r2, #vetor_rand
	
	add r2,r2,r1
	loadi r2,r2 ;valor no vetor de rands na pos r2

	inc r1
	loadn r0, #10 ;faz modulo 10 para não estourar e pegar valor fora do vetor de rands
	mod r1,r1,r0
	store pos_vetor_rand, r1
	load r0, num_rand
	add r0, r0, r2 ;incremeta o valor do vetor de rands na variavel r0
	loadn r1, #40
	mod r0, r0, r1 ;r0 mod 40 (random mod 40)
	store num_rand, r0
	
	pop r2
	pop r1
	pop r0
	rts

VerificaColisao:
	push r0
	push r1
	push r2
   	push r3
	push r4
	push r5
	push r6
	push r7
	
 	loadn r5, #0		;contador de qual alien esta verificando
	load r4, num_alien
	load r0, pos_nave
loop_colisao:
	loadn r1, #pos_alien
	add r1,r1,r5
	loadi r1,r1
	
	loadn r2, #1159		;verifica se o alien chegou no fim da tela
	cmp r1, r2
	jgr perdeu_vida
return_perdeu_vida:
	cmp r0, r1 ; não houve colisão e não chegou no fim 
	jne compara_colisao
	
	;nave pegou o alien
	
	load r7, pontos	;aumenta um ponto
	inc r7
	store pontos, r7
	call imprime_pontuacao 

	load r3, pontos_nivel	;verifica se avançou de nivel
	cmp r3,r7
	ceq passou
	
	call reset_alien
compara_colisao:
	inc r5		;verifica se ja verificou todos os aliens
	cmp r5,r4
	jel loop_colisao
	
return_verifica_colisao:
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts		

reset_alien:
	loadn r1, #pos_alien
	add r1,r1,r5
	loadi r1,r1
	
	loadn r2, #pos_ant_alien
	add r2,r2,r5
	loadi r2,r2

	;call inc_rand
	
	call apaga_alien
	call new_alien
	rts

passou:
	
	push r0
	push r1
	push r2
	push r3
	push r4
	push r6
	push r7
	
	call tela_avancou_nivel
	
	load r0, nivel
	inc r0
	store nivel, r0 ;avancou de nivel
	
	loadn r3, #3
	store num_vidas, r3
	loadn r3, #1201
	store vida_menos, r3
	
	loadn r3, #1
	cmp r3, r0
	jeq nivel1
	loadn r3, #2
	cmp r3, r0
	jeq nivel2
	jmp nivel3
nivel1:

	loadn r0, #2
	load r1, num_alien
	add r0, r1, r0
	store num_alien,r0 ; imprimi dois aliens a mais
	loadn r1, #tela2Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 2
	
	loadn r1,#13			;quantidade de pontos pra passar o nivel 2
	store pontos_nivel,r1
	call imprime_pontos_nivel
	
	jmp continua_nivel
	
nivel2:
	loadn r0, #2
	load r1, num_alien
	add r0, r1, r0
	store num_alien,r0 ; imprimi dois aliens a mais
	loadn r1, #tela3Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 3
	
	loadn r1,#18			;quantidade de pontos pra passar o nivel 3
	store pontos_nivel,r1
	call imprime_pontos_nivel
	jmp continua_nivel

nivel3:
	loadn r0, #2
	load r1, num_alien
	add r0, r1, r0
	store num_alien,r0 ; imprimi dois aliens a mais
	loadn r1, #25		;quantidade de pontos pra passar o nivel 4
	store pontos_nivel, r1
	
	loadn r1, #tela4Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 3
	
	call imprime_pontos_nivel


continua_nivel:

	loadn r0, #0
	store pontos, r0	;zera pontos
		
	call seta_posicoes
	
	load r5, num_alien
	dec r5
	
	pop r7
	pop r6
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts


new_alien:
;apenas coloca uma nova posicao para o alien que foi pego
;o alien a ser mudado está em r5
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7

	
	loadn r1, #pos_alien
	add r1, r1, r5
	
	loadn r2, #40
	call inc_rand
	load r3, num_rand
	
	mod r3,r3,r2
	;add r3, r4, r2
	
	storei r1, r3 
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts

reseta_jogo:

	loadn r1, #1201    
	store vida_menos,r1 ; é necessária para volta a diminuir as vidas na posição 1199
	loadn r1, #3
	store num_vidas, r1 ; carrega três vidas novamente 
	
	loadn r1, #tela1Linha0
	loadn r2, #0
	call ImprimeTela
	
	loadn r0, #0
	store nivel, r0
	store pontos, r0
	store contador, r0
	store pos_vetor_rand, r0
	store num_rand, r0
	loadn r0, #8
	store pontos_nivel, r0
	
	
	call imprime_pontos_nivel
	call seta_posicoes
		
	rts
	
perdeu_vida:
	
	push r0
	push r1
	push r2
	push r3
	
	load r1,vida_menos ; valor para apagar vida(desse valor será subtraido 2 para começar na posição 1199)
	loadn r2, #2
	loadn r3, #' '
	sub r1, r1, r2
	outchar r3,r1
	store vida_menos,r1		
	load r0, num_vidas
	dec r0
	store num_vidas,r0
	pop r3
	pop r2
	pop r1
	pop r0
	
	jz perdeu
	call reset_alien ;r5 continua com o alien que tem q resetar
	jmp return_perdeu_vida

perdeu:

	push r0	
	push r1
	push r2
	
	loadn r1, #jogar_novamente 	
	loadn r2, #0 ; para adaptar a função ImprimeStr
	loadn r0,#528
	call ImprimeStr	
	
	store pontos, r2
	store contador, r2
	
	call seta_posicoes
	
	pop r2
	pop r1
	pop r0

espera_letra: ; fica no loop até que uma tecla seja digitada 

	loadn r1, #'y' ; Não precisa dar push nem r1 e r2 já que é carregado na main 
	loadn r7, #'n'	
	inchar r2  ; 

  case_perdeu1: ;vai jogar de novo
	cmp r2,r1
	jne case_perdeu2
	jmp Inicio_jogo

  case_perdeu2: ;nao vai jogar de novo
	cmp r2,r7
	jne espera_letra
	halt
		
seta_posicoes:
;inicializa posicoes dos vetores pos_alien e pos_ant_alien
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
	push r6
	push r7
	
	loadn r0, #0
	loadn r6, #40
loop_pos:
	load r5, num_rand
	mod r7,r5,r6 ;posicao que os aliens irao ser setados
	
	load r1, num_alien
	loadn r2, #pos_alien
	add r2,r2,r0
	storei r2,r7 ;guarda a posicao atual do alien 0
	
	loadn r3, #pos_ant_alien
	add r3,r3,r0
	storei r3,r7 ;guarda a pos anterior do alien 0
	
	call inc_rand ;incrementa o vetor de posicoes aleatorias
	
	inc r0
	cmp r0,r1 ;verifica se inicializou o vetor ate num_alien
	jel loop_pos
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
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
	call desenha_alien
	call apaga_alien
	
	pop r2
	pop r1 
	pop r0
	
	rts

atualiza_aliens:
	
	
	push r0
	push r3
	push r4
	
	load r0, contador
	loadn r3, #pos_ant_alien
	add r3,r3,r0
	storei r3, r1
	
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
apaga_nivel_alien: ;verifica qual nivel esta
	loadn r0, #0
	load r3, nivel
	cmp r0, r3
	jeq apaga_alien_tela1
	inc r0
	cmp r0, r3
	jeq apaga_alien_tela2
	inc r0
	cmp r0, r3
	jeq apaga_alien_tela3
	jmp apaga_alien_tela4
	
apaga_alien_tela1:
	loadn r0, #tela1Linha0
	jmp continua_alien_apaga
apaga_alien_tela2:
	loadn r0, #tela2Linha0
	jmp continua_alien_apaga
apaga_alien_tela3:
	loadn r0, #tela3Linha0
	jmp continua_alien_apaga
apaga_alien_tela4:
	loadn r0, #tela4Linha0

continua_alien_apaga:
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
	add r1,r1,r0 ;r1 = pos atual + 40
	load r5,contador
	
	loadn r4, #pos_alien
	add r4,r4,r5
	storei r4, r1 ; pos_alien[contador] = posicao nova
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r0
	rts

zera_pos_alien:
	load r6, num_rand
	loadn r7, #40
	mod r6,r6,r7
	
	storei r4,r6 ;r4 (pos_alien[contador]) = posicao aleatoria
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r0
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
	
	apaga_nivel_nave: ;verifica qual nivel esta
	loadn r0, #0 
	load r3, nivel
	cmp r0, r3
	jeq apaga_nave_tela1
	inc r0
	cmp r0, r3
	jeq apaga_nave_tela2
	inc r0
	cmp r0, r3
	jeq apaga_nave_tela3
	jmp apaga_nave_tela4
	
apaga_nave_tela1:
	loadn r0, #tela1Linha0
	jmp continua_nave_apaga
apaga_nave_tela2:
	loadn r0, #tela2Linha0
	jmp continua_nave_apaga
apaga_nave_tela3:
	loadn r0, #tela3Linha0
	jmp continua_nave_apaga
apaga_nave_tela4:
	loadn r0, #tela4Linha0

continua_nave_apaga:
	
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
	cmp r1, r0	; se nao for pressionada nenhuma tecla, retorna 255
	jeq return_calcula_nave		; se nao pressionou nenhuma tecla, vai pro fim!
	call DelayTecla
   case1:
	loadn r2, #'w'	
	cmp r2, r0	; case tecla for 'W'
	jne case2
	
	load r3, pos_nave
	load r4, pos_ant_nave
	loadn r5, #40
	
	load r7, limite_sup
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
	load r5, limite_inf
	
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
	sub r3, r4, r5  	;pos_nave = pos_ant_nave - 1 ; nave vai pra esquerda!
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
	add r3, r4, r5  	;pos_nave = pos_ant_nave + 1 ; nave vai pra direita!
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

Delay_tela:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	Push R0
	Push R1
	
	Loadn R1, #500  ; a
   Delaytela_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #3000	; b
   Delaytela_volta: 
	Dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	JNZ Delaytela_volta	
	Dec R1
	JNZ Delaytela_volta2
	
	Pop R1
	Pop R0
	
	RTS	
	
imprime_pontos_nivel:
	push r0
	push r1
	push r2
	push r3
	
	loadn r2, #10
	load r0, pontos_nivel
	div r3, r0, r2 ;pega primeiro digito
	loadn r1, #48
	add r3,r3,r1
	loadn r1, #1171
	outchar r3, r1
	loadn r1,#48
	mod r3,r0,r2
	add r3,r3,r1
	loadn r1, #1172
	outchar r3,r1
	
	pop r3
	pop r2
	pop r1
	pop r0
	rts
imprime_pontuacao:
	push r0
	push r1
	push r2
	push r3
	
	loadn r2, #10
	load r0, pontos 
	div r3, r0, r2 ;pega primeiro digito
	loadn r1, #48
	add r3,r3,r1
	loadn r1, #1168
	outchar r3, r1
	loadn r1,#48
	mod r3,r0,r2
	add r3,r3,r1
	loadn r1, #1169
	outchar r3,r1
	
	pop r3
	pop r2
	pop r1
	pop r0
	rts
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
	
	Loadn R1, #9  ; a
  Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #900	; b
   Delay_volta: 
	Dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	JNZ Delay_volta	
	Dec R1
	JNZ Delay_volta2
	
	Pop R1
	Pop R0
	
	RTS							;return

	
DelayTecla:
						;Utiliza Push e Pop para nao afetar os Ristradores do programa principal
	Push R0
	Push R1
	
	Loadn R1, #4  ; a
  DelayTecla_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	Loadn R0, #1000	; b
   DelayTecla_volta: 
	Dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	JNZ DelayTecla_volta	
	Dec R1
	JNZ DelayTecla_volta2
	
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
		add r0, r0, r3  	;incrementaposicao para a segunda linha na tela -->  r0 = R0 + 40
		add r1, r1, r4  	;incrementa o ponteiro para o comeco da proxima linha na memoria (40 + 1 porcausa do /0 !!) --> r1 = r1 + 41
		cmp r0, r5			; Compara r0 com 1200
		jne ImprimeTela_Loop	; Enquanto r0 < 1200

	pop r5	; Resgata os valores dos registradores utilizados na Subrotina da Pilha
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts
				
;---------------------

ImprimeStr:	;Rotina de Impresao de Mensagens:    r0 = Posicao da tela que o primeiro caractere da mensagem sera' impresso;  r1 = endereco onde comeca a mensagem; r2 = cor da mensagem.   Obs: a mensagem sera' impressa ate' encontrar "/0"
	push r0	;protege o r0 na pilha para preservar seu valor
	push r1	;protege o r1 na pilha para preservar seu valor
	push r2	;protege o r1 na pilha para preservar seu valor
	push r3	;protege o r3 na pilha para ser usado na subrotina
	push r4	;protege o r4 na pilha para ser usado na subrotina
	
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
	
	
tela_avancou_nivel:
;apenas a tela de "parabens, voce avancou bla bla bla"
	push r0
	push r1
	push r2
	loadn r0, #400
	loadn r1, #passounivel1
	loadn r2, #256
	call ImprimeStr
	load r0, nivel
	inc r0
	loadn r1, #48
	add r0,r0,r1
	loadn r1, #430
	add r0,r0,r2
	outchar r0, r1
	
	load r1, nivel
	loadn r0, #3
	cmp r1,r0
	jeq tela_nivel_3
	
	loadn r0, #440
	loadn r1, #passounivel2
	call ImprimeStr
	
	call Delay_tela
	
	pop r2
	pop r1
	pop r0
	rts

tela_nivel_3:; especial para o nivel 3
	loadn r0, #440
	loadn r1, #passounivel3
	call ImprimeStr
	
tela_nive_4:

	loadn r1, #tela6Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário Parabéns
	call Delay_tela
	pop r2
	pop r1
	pop r0
	
	loadn r1, #jogar_novamente 	
	loadn r2, #0 ; para adaptar a função ImprimeStr
	loadn r0,#528
	call ImprimeStr
jmp espera_letra ; caso o jogado queira jogar novamente  

	
