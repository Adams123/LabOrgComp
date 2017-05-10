jmp main
;PERGUNTAS PRO SIMOES: COMO GERAR O NUMERO ALEATORIO SEM PISCAR
;PQ TA APAGANDO COM A TELA1
;
; declara e preenche tela linha por linha (40 caracteres):
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
tela1Linha29 : string "              .....         vidas: I I I"

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
tela2Linha29 : string "                            vidas: I I I"

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
tela3Linha29 : string "                            vidas: I I I"

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
tela4Linha29 : string "                            vidas: I I I"

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

inc_rand: var #1

rand: var #7
num_alien: var #1
vida_menos: var #1
num_vidas: var #1
contador: var #1
num_rand : var #1
nivel: var #1
pontos: var #1
pontos_nivel: var #1

static vida_menos + #0, #1201
static c_nave + #0, #'x'	; caracter da nave
static c_alien + #0, #'A'	; caracter do alien

static num_vidas + #0, #3	; vidas do jogo
static inc_rand + #0, #0
static num_rand + #0, #0
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

static num_alien + #0, #0 ;aliens desejados -1. deve ser <=39, se for >39 VAI DAR PAU
static contador + #0, #0
static nivel + #0, #0
static pontos + #0, #0
static pontos_nivel + #0, #5

passounivel1: string "Parabens, voce passou o nivel           "
passounivel2: string "Mas... sera que voce passa o proximo    "

main:

Inicio_jogo:
	
	loadn r1, #1201    
	store vida_menos,r1 ; é necessária para volta a diminuir as vidas na posicao 1199
	loadn r1, #3
	store num_vidas, r1 ; carrega três vidas novamente 
	
	loadn r1, #tela1Linha0
	loadn r2, #0
	call ImprimeTela
	
	loop:
		loadn r1, #10	;valor para o mod
		mod r1, r0, r1
		cmp r1, r2
		ceq MoveNave		
		
		loadn r1, #100	;a cada x ciclos chama movealien
		mod r1, r0, r1
		cmp r1, r2
		ceq MoveAlien		
		call VerificaColisao
		
		loadn r1, #100 ;deve ser igual à quantidade de ciclos de chamada de movealien
		mod r1,r0,r1
		cmp r1, r2
		ceq inc_contador
		
		;call inc_rand ;TA FAZENDO PISCAR
		call Delay
		inc r0
	jmp loop
	halt


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
	load r0, num_rand
	inc r0 ; para incrementar o num_rand
	store num_rand, r0
	pop r0
	breakp
	rts
	
VerificaColisao:

	push r0
	push r1
	push r2
   	push r3
	push r4
	
 	load r3, contador
	load r4, num_alien
	load r0, pos_nave
	
	loadn r1, #pos_alien
	add r1,r1,r3
	loadi r1,r1
	
	loadn r2, #pos_ant_alien
	add r2,r2,r3
	loadi r2,r2
	
	loadn r2, #1159
	cmp r1, r2
	jgr perdeu_vida

		
	cmp r0, r1 ; nao houve colisao e nao chegou no fim 
	jne return_verifica_colisao
	
	;nave pegou o alien
	
	load r4, pontos
	inc r4
	store pontos, r4
	load r3, pontos_nivel
	cmp r3,r4
	ceq passou
	
	call reset_alien	
	
	
return_verifica_colisao:
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
	rts	
	
reset_alien:
	call apaga_alien
	call new_alien
	rts

passou:
	push r0
	push r1
	push r2
	push r3
	push r4
	push r5
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
	loadn r1, #tela2Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 2
	jmp continua_nivel
	
nivel2:
	loadn r1, #tela3Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 3
	jmp continua_nivel

nivel3:
	loadn r1, #tela4Linha0
	loadn r2, #0
	call ImprimeTela	;muda para o cenário 3
	loadn r1, #39
	store num_alien, r1
	
continua_nivel:
	loadn r0, #0
	store pontos, r0	;zera pontos
	
	call seta_posicoes
	
	pop r7
	pop r6
	pop r5
	pop r4
	pop r3
	pop r2
	pop r1
	pop r0
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

	load r0, contador
	loadn r1, #pos_alien
	add r1, r1, r0

	loadn r2, #20 ;trocar por posicao aleatoria
	
	add r3, r4, r2
	
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

perdeu_vida:
	push r0
	push r1
	push r2
	push r3
	loadn r1, #0
	store nivel, r1
	
	load r1,vida_menos ; valor para apagar vida(desse valor será subtraido 2 para comecar na posicao 1199)
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
	call reset_alien
	jmp return_verifica_colisao	

perdeu:

	push r0	
	push r1
	push r2
	
	loadn r1, #jogar_novamente 	
	loadn r2, #0 ; para adaptar a funcao ImprimeStr
	loadn r0,#528
	call ImprimeStr	
	
	call seta_posicoes
	
	pop r2
	pop r1
	pop r0

espera_letra: ; fica no loop até que uma tecla seja digitada 

	loadn r1, #'y' ; Nao precisa dar push nem r1 e r2 já que é carregado na main 
	loadn r7, #'n'	
	inchar r2  ; 

  case_perdeu1:
	cmp r2,r1
	jne case_perdeu2
	jmp Inicio_jogo

  case_perdeu2:
	cmp r2,r7
	jne espera_letra
	halt
		
seta_posicoes:
	push r0
	push r1
	push r2
	push r3
	push r4
	
	loadn r0, #0
	load r1, num_alien
	loadn r2, #pos_alien
	loadn r3, #pos_ant_alien
	loadn r4, #1
	storei r2,r0
	storei r3,r0
	inc r0
loop_pos:
	add r2,r2,r4
	add r3,r3,r4
	
	storei r2,r0
	storei r3,r0
	inc r0
	cmp r0,r1
	jle loop_pos
	
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
	;r1 = post atual
	;r2 = post anterior
	
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
apaga_nivel_alien:
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
	
	add r4,r0,r2 ; endereco + pos anterior do alien
	div r5,r2,r3 ; correcao de \0
	add r4,r4,r5 ; r4=endereco[pos_ant_alien] + correcao \0
	
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
	loadn r6,#20 ;trocar por valor aleatorio
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
	
	apaga_nivel_nave:
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
	
	add r4,r0,r1 ; endereco + pos anterior da nave
	div r5,r1,r3 ; correcao de \0
	add r4,r4,r5 ; r4=endereco[pos_ant_nave] + correcao \0
	
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

Delay_tela:
						;Utiliza push e pop para nao afetar os Ristradores do programa principal
	push R0
	push R1
	
	loadn R1, #4000  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	loadn R0, #6000	; b
   Delay_volta: 
	dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	jnz Delay_volta	
	dec R1
	jnz Delay_volta2
	
	pop R1
	pop R0
	
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
						;Utiliza push e pop para nao afetar os Ristradores do programa principal
	push R0
	push R1
	
	loadn R1, #1  ; a
   Delay_volta2:				;Quebrou o contador acima em duas partes (dois loops de decremento)
	loadn R0, #3000	; b
   Delay_volta: 
	dec R0					; (4*a + 6)b = 1000000  == 1 seg  em um clock de 1MHz
	jnz Delay_volta	
	dec R1
	jnz Delay_volta2
	
	pop R1
	pop R0
	
	rts							;return

;-------------------------------

ImprimeTela: 	;  Rotina de Impressao de Cenario na Tela Inteira
		;  r1 = endereco onde comeca a primeira linha do Cenario
		;  r2 = cor do Cenario para ser impresso

	push r0	; protege o r3 na pilha para ser usado na subrotina
	push r1	; protege o r1 na pilha para preservar seu valor
	push r2	; protege o r1 na pilha para preservar seu valor
	push r3	; protege o r3 na pilha para ser usado na subrotina
	push r4	; protege o r4 na pilha para ser usado na subrotina
	push r5	; protege o r4 na pilha para ser usado na subrotina

	loadn r0, #0  	; posicao inicial tem que ser o comeco da tela!
	loadn r3, #40  	; Incremento da posicao da tela!
	loadn r4, #41  	; incremento do ponteiro das linhas da tela
	loadn r5, #1200 ; Limite da tela!
	
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
	loadn r0, #440
	loadn r1, #passounivel2
	call ImprimeStr
	
	call Delay_tela
	
	pop r2
	pop r1
	pop r0
	rts
	