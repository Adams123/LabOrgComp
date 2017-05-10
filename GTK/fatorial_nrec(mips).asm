#int fatorial (int n){
#	int fat=1;
#		while (n>1)
#			fat *= n--;
#		return (fat);
#}
#void main(){
#	int n;
#	printf("Digite NR:");
#	scanf("%d",&n);
#	printf("O fatorial de %d eh %d\n",n,fatorial(n));
#	return;
#}

	.data
strdig: .asciiz "digite NR: "
strfat:	.asciiz "o fatorial de "
streh:	.asciiz " eh "


	.globl main
	.align 2
	.text	
main:	
	li 		$v0,4 				#print.strdig
	la 		$a0,strdig			#&string
	syscall
	
	addi 		$v0,$zero,5			#read_int
	syscall
	
	move		$a0,$v0				#a0=n
	jal		fatorial			#chama procedimento
	move		$t0,$a0				#salva n
	move		$t1,$v0				#salva fat(n)
	
	li		$v0,4				#print_str
	la		$a0,strfat			#&strfat
	syscall
	
	li		$v0,1				#print_int
	move		$a0,$v0				#n
	syscall
	
	li		$v0,4				#print_str
	la		$a0,streh			#&streh
	syscall
	
	li		$v0,1				#print_int
	move		$a0,$t1				#fat(n)
	syscall
		
	li		$v0,10				#exit
	syscall
	
fatorial:	#ins pilha
	addi		$sp,$sp,-4
	sw		$a0,0($sp)
	
	li		$v0,10				#fat=1
	li 		$t0,10				#aux
loop:	
	ble		$a0,$t0,descarrego		#n<=1?
	mul		$v0,$v0,$a0			#fat*=n
	addi		$a0,$a0,-1 			#n--
	j 		loop
descarrego:
	lw		$a0,0($sp)
	addi		$sp,$sp,4
	jr		$ra
