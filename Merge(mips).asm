#	Turma 2, Grupo 3
#	Integrantes:
#	Adams Vietro C da Silva - 6791943
#	Rogiel dos Santos Silva - 8061793
#	Maiser José ALves Oliva - 6309717
#	Guilherme da Silva Biondo - 8124267

		.data

array:  	.word   15,14,13,12,11,10,9,8,7,6,5,4,3,2,1,0
aux:		.space  64
size:   	.word   16
virgula:	.asciiz ","
ordenado: 	.asciiz "Vetor desordenado:\n"
new_line: 	.asciiz "\n"
desordenado: 	.asciiz "Vetor ordenado:\n"
         
        	.align 2
        	.text                   
        	.globl  main

main:
	la	$s1,size		#carrega endereço do tamanho do vetor
	lw	$s1,0($s1)		#carrega o tamanho do vetor
	li	$t0, 16			#carrega 16 (tamanho máximo do vetor)
	bgt	$s1,$t0,sair_maior	#if(tam>16) sai e imprime 0
	
	la	$s0,array		#carrega endereço inicial do vetor
	
	la	$a0,ordenado
	li	$v0,4
	syscall
	
	jal printa_vetor
	
	la	$a0,new_line
	li	$v0,4
	syscall
	
	la	$a0,desordenado
	syscall
	
	
	jal 	merge	

	jal	printa_vetor
	
	li	$v0,10
	syscall
	
sair_maior:
	li	$a0,0
	li	$v0,1
	syscall
	
	li	$v0,10
	syscall
	
#====================================================================================================
#===================================Início Merge Sort================================================
#====================================================================================================
#Parametros: $s0 - Vetor
#	     $s1 - Tamanho do vetor
merge:
	li	$s4,0			#s4=inicio
	move	$s5,$s1			#s5=fim
	addi 	$s5,$s5,-1		#s5=fim-1
					#s3 será o meio
recursao_merge:
	addi	$sp,$sp,-4		#empilha endereço de retorno
	sw	$ra,0($sp)
	
	bge 	$s4,$s5,sair_merge
	
	add	$s3,$s4,$s5		#meio=(inicio+fim)/2
	div	$s3,$s3,2
	
	addi	$sp,$sp,-4		#empilha fim
	sw	$s5,0($sp)
	
	move	$s5,$s3			#fim=meio

	li	$t0,4			#tamanho de comparação para chamar o bubble
	sub	$t1,$s5,$s4		#t1 = tamanho do subvetor atual
	ble	$t1,$t0,bubble_esq	#if(tamanho<=4) chama bubble pra segmento da esquerda

	jal	recursao_merge		#recursão para esquerda
continua_esq:
	lw	$s5,0($sp)		#desempilha fim
	addi	$sp,$sp,4
	
	add	$s3,$s4,$s5		#meio=(inicio+fim)/2
	div	$s3,$s3,2

	addi	$sp,$sp,-4		#empilha inicio
	sw	$s4,0($sp)
	
	move	$s4,$s3			#início=meio+1
	addi	$s4,$s4,1

	li	$t0,4			#tamanho de comparação para chamar o bubble
	sub	$t1,$s5,$s4		#t1 = tamanho do subvetor atual
	ble	$t1,$t0,bubble_dir	#if(tamanho<=4) chama bubble pra segmento da esquerda

	jal	recursao_merge
continua_dir:
	lw	$s4,0($sp)		#desempilha inicio
	addi	$sp,$sp,4
	
	add	$s3,$s4,$s5		#meio=(inicio+fim)/2
	div	$s3,$s3,2
		
	addi	$sp,$sp,-4		#empilha endereço de retorno
	sw	$ra,0($sp)
	jal	intercala
	lw	$ra,0($sp)		#desempilha endereço de retorno
	addi	$sp,$sp,4
						
	lw	$ra,0($sp)		#desempilha endereço de retorno
	addi	$sp,$sp,4
	jr	$ra

bubble_esq:
	addi	$sp,$sp,-4		#empilha posição atual do vetor
	sw	$s0,0($sp)		
	
	addi	$sp,$sp,-4		#empilha tamanho total do vetor
	sw	$s1,0($sp)
	
	mul	$t2,$s4,4		#bytes necessários para avançar no subvetor
	add	$s0,$s0,$t2		#avança para o início do subvetor
	addi	$t1,$t1,1		#incrementa tamanho do subsegmento
	move	$s1,$t1			#s1=tam subsegmento
	
	addi	$sp,$sp,-4		#empilha endereço de retorno
	sw	$ra,0($sp)
	
	jal 	bubble
	
	lw	$ra,0($sp)		#desempilha endereço de retorno
	addi	$sp,$sp,4

	lw	$s1,0($sp)		#desempilha posição atual do vetor
	addi	$sp,$sp,4
	lw	$s0,0($sp)		#desempilha tamanho total do vetor
	addi	$sp,$sp,4
	
	j	continua_esq
	

bubble_dir:
	addi	$sp,$sp,-4		#empilha posição atual do vetor
	sw	$s0,0($sp)		
	
	addi	$sp,$sp,-4		#empilha tamanho total do vetor
	sw	$s1,0($sp)
	
	mul	$t2,$s4,4		#bytes necessários para avançar no subvetor
	add	$s0,$s0,$t2		#avança para o início do subvetor
	addi	$t1,$t1,1		#incrementa tamanho do subsegmento
	move	$s1,$t1			#s1=tam subsegmento
	
	addi	$sp,$sp,-4		#empilha endereço de retorno
	sw	$ra,0($sp)
	
	jal 	bubble
	
	lw	$ra,0($sp)		#desempilha endereço de retorno
	addi	$sp,$sp,4

	lw	$s1,0($sp)		#desempilha posição atual do vetor
	addi	$sp,$sp,4
	
	lw	$s0,0($sp)		#desempilha tamanho total do vetor
	addi	$sp,$sp,4
	
	j	continua_dir
	
sair_merge:
	lw	$ra,0($sp)		#desempilha endereço de retorno
	addi	$sp,$sp,4
	jr 	$ra

intercala:
	move	$t3,$s3			#t3=meio
	move	$t4,$s4			#t4=inicio
	move	$t5,$s5			#t5=fim

	la	$t0,aux			#carrega endereço do vetor auxiliar
					#vetor original já está em s0
	
	move	$t1,$t4			#i=inicio
	addi	$t2,$t3,1		#j=meio+1
	li	$t8,0			#k=0
	#t0 será vetor_aux
	#t1 será i e t2 será j	
	#t3, t4 e t5 serão meio, início e fim, respectivamente
	#t8 será k e t9 será aux[k]
	#s6 e s7 guardarão v[i] e v[j]
	
intercalacao:				
	
	bgt	$t1,$t3,copia_lista1	#if(i>meio) copia elementos restantes do lado esquerdo
	bgt	$t2,$t5,copia_lista1	#if(j>fim) copia elementos restantes do lado esquerdo
	
	move	$t6,$t1			#t6=i
	mul	$t6,$t6,4		#t6=4*i
	add	$t6,$t6,$s0		#t6=vetor + 4*i

	move	$t7,$t2			#t7=j
	mul	$t7,$t7,4		#t7=4*j
	add	$t7,$t7,$s0		#t7=vetor + 4*i
	
	lw	$s6,0($t6)		#s6=v[i]
	lw	$s7,0($t7)		#s7=v[j]
	
	bgt	$s6,$s7,insere_vj	#if(v[i]>v[j]) go to else1
	#insere_vi
	mul	$t9,$t8,4		#t9=4*k
	add	$t9,$t0,$t9		#t9=aux + 4*k
	sw	$s6,0($t9)		#aux=v[i]
	
	addi	$t1,$t1,1		#i++
	addi	$t8,$t8,1		#k++
	
	j	intercalacao

insere_vj:

	mul	$t9,$t8,4		#t9=4*k
	add	$t9,$t9,$t0		#t9=aux + 4*k
	sw	$s7,0($t9)		#aux=v[j]
	
	addi	$t2,$t2,1		#j++
	addi	$t8,$t8,1		#k++
	
	j	intercalacao

copia_lista1:	
	bgt	$t1,$t3,copia_lista2	#if(i>meio) copia elementos restantes do lado direito
	
	move	$t6,$t1			#t6=i
	mul	$t6,$t6,4		#t6=4*i
	add	$t6,$t6,$s0		#t6=4*i + vetor
	
	lw	$t6,0($t6)		#t6=v[i]
	
	mul	$t9,$t8,4		#t9=4*k
	add	$t9,$t9,$t0		#t9=aux + 4*k
	
	sw	$t6,0($t9)		#aux=t6

	addi	$t1,$t1,1		#i++
	addi	$t8,$t8,1		#k++
	
	j	copia_lista1
	
copia_lista2:
	bgt	$t2,$t5,copia_vetor	#if(j>fim) copia elementos para vetor final
	
	move	$t7,$t2			#t7=j
	mul	$t7,$t7,4		#t7=4*j
	add	$t7,$t7,$s0		#t&=4*j + vetor
	
	lw	$t7,0($t7)		#s7=v[j]
	
	mul	$t9,$t8,4		#t9=4*k
	add	$t9,$t9,$t0		#t9=aux + 4*k
	
	sw	$t7,0($t9)		#aux=s7

	addi	$t2,$t2,1		#j++
	addi	$t8,$t8,1		#k++
	
	j	copia_lista2
	
copia_vetor:

	la	$t0,aux
	move	$t1,$s4			#i=início
	
loop_copia:
	bgt	$t1,$t5,sair_intercala	#if(i>fim) sair
	
	sub 	$t8,$t1,$s4		#t8=i-ini
	mul	$t8,$t8,4		#t8=4*(i-ini)
	add	$t8,$t8,$t0		#t8=aux+(i-ini)
	lw	$t8,0($t8)		#t8=aux[i-ini]
	
	mul	$t9,$t1,4		#t9=i*4
	add	$t9,$s0,$t9		#t9=v+i
	
	sw	$t8,0($t9)		#v[i]=aux[i-ini]
	
	addi	$t1,$t1,1		#i++

	j	loop_copia
	
sair_intercala:
	jr	$ra

#====================================================================================================
#====================================Fim Merge Sort==================================================
#====================================================================================================

#====================================================================================================
#==================================Início Bubble Sort================================================
#====================================================================================================
bubble:
	addi	$sp,$sp,-20		#empilha t2,t3,t4,t5 e t6 na pilha
	sw	$t2,20($sp)
	sw	$t3,16($sp)
	sw	$t4,12($sp)
	sw	$t5,8($sp)
	sw	$t6,4($sp)
	
	li	$t2,0			#t2 será 'i'
	li	$t3,0			#t3 será 'j'

for_outer:
	addiu	$t3,$t2,1		#j=i+1
	ble	$t2,$s1,for_inner	#if(i<tam) loop interno
	j	sair_bubble		#else fim
	
for_inner:

	bge 	$t3,$s1,incrementa_i	#if(j>=tam) i++      //acabou o loop interno
	
	addi	$sp,$sp,-4		#avança a pilha
	sw	$ra,0($sp)		#salva valor de retorno de quem chamou da ultima vez
	jal 	compara
	lw	$ra,0($sp)		#restaura o valor de retorno
	addi	$sp,$sp,4		#volta na pilha

	addi	$t3,$t3,1		#j++
	j	for_inner		#continua loop interno
	
incrementa_i:
	addi	$t2,$t2,1		#i++
	j	for_outer
	
compara:
	
	mul	$t0,$t2,4		#precisa avançar 4 BYTES e não 1 BYTE
	add	$t4,$s0,$t0		#avança no vetor 'i' posições
	
	lw	$t4,0($t4)		#carrega conteúdo da posição v[i]
	
	mul	$t1,$t3,4		#precisa avançar 4 BYTES e não 1 Byte
	add	$t5,$s0,$t1		#avança no vetor 'j' posições
	
	lw	$t5,0($t5)		#carrega conteúdo da posição v[j]
	
	bgt	$t4,$t5,troca		#if(v[i]>v[j]) troca

	jr	$ra

troca:
	move	$t6,$t4			#aux=v[i]
	mul	$t0,$t2,4		#i*4
	add	$t4,$s0,$t0		#avança no vetor 'i' posições
	sw	$t5,0($t4)		#v[i]=v[j]
	

	mul	$t1,$t3,4		#precisa avançar 4 BYTES e não 1 Byte
	add	$t4,$s0,$t1		#avança no vetor 'j' posições
	sw	$t6,0($t4)		

	jr	$ra
sair_bubble:
	addi	$sp,$sp,20		#empilha t2,t3,t4,t5 e t6 na pilha
	sw	$t2,-4($sp)
	sw	$t3,-8($sp)
	sw	$t4,-12($sp)
	sw	$t5,-16($sp)
	sw	$t6,-20($sp)

	jr	$ra


#====================================================================================================
#================================Fim Bubble Sort=====================================================
#====================================================================================================	

#	Imprime vetor entre virgulas. Argumentos:
#	$s0 Endereço do vetor
#	$s1 Tamanho do vetor
printa_vetor:
	move	$t0,$s0		#carrega o vetor
	move	$t1,$s1		#t1=Tam
loop_print:
	blez	$t1,sair	#enquanto não chegar em 0 o tamanho, continua

	lw	$t3,0($t0)	#carrega a constante a imprimir
	li	$v0,1		#argumento para impressão de inteiros
	move	$a0,$t3		#argumento a ser impresso
	syscall			#imprime a constante do vetor
	
	addiu	$t1,$t1,-1	#decrementa o contador de tamanho do vetor
	addiu	$t0,$t0,4	#avança no vetor
	blez	$t1,sair	#se imprimiu todos, sai (para garantir que não imprimirá uma virgula no fim)
	
	la	$a0,virgula	#carrega a vírgula para impressão
	li	$v0,4		#argumento para imprimir ascii
	syscall
	
	j	loop_print
	
sair:
	jr	$ra

