# ¡ngel Armando ¡vila Chavira 	IS697755
# Cristhian Franco Reynoso    	IS697163


#  ______                                           __              __  __                                  
# /\__  _\                                         /\ \            /\ \/\ \                           __    
# \/_/\ \/   ___   _ __   _ __    __    ____       \_\ \     __    \ \ \_\ \     __      ___     ___ /\_\   
#    \ \ \  / __`\/\`'__\/\`'__\/'__`\ /',__\      /'_` \  /'__`\   \ \  _  \  /'__`\  /' _ `\  / __`\/\ \  
#     \ \ \/\ \_\ \ \ \/ \ \ \//\  __//\__, `\    /\ \_\ \/\  __/    \ \ \ \ \/\ \_\.\_/\ \/\ \/\ \_\ \ \ \ 
#      \ \_\ \____/\ \_\  \ \_\\ \____\/\____/    \ \___,_\ \____\    \ \_\ \_\ \__/.\_\ \_\ \_\ \____/\ \_\
#       \/_/\/___/  \/_/   \/_/ \/____/\/___/      \/__,_ /\/____/     \/_/\/_/\/__/\/_/\/_/\/_/\/___/  \/_/
#                                                                                                          


.text
Main:
	addi $s0, $zero, 3		# Numero de discos
	nop
	nop
	add  $t0, $zero, $s0		# Temporal para llenado
	addi $a1, $zero, 0x1001		# a1 torre de inicio
	nop
	nop
	sll  $a1, $a1, 16
	nop
	nop
	add  $a2, $a1, 0x4		# a2 torre auxiliar
	nop
	nop
	add  $a3, $a2, 0x4		# a3 torre destino
	addi $s1, $zero, 1		# Variable para comparar si n = 1
	
# ===================== Llenado de discos =====================
Init:
	sw   $t0, 0($a1)	# Guardamos el disco en la torre de inicio
	nop
	nop
	addi $t0, $t0, -1	# BP: Restamos uno al numero de discos
	nop
	addi $a1, $a1, 32	# Avanzamos 4 en memoria	
	bne  $t0, $zero, Init	# Hasta que sean 0 discos, seguimos metiendolos en la torre de inicio
	nop
	nop
	nop
	jal  Hannoi
	nop
	nop
	j    Exit
	nop
	nop
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////	
Hannoi:
	beq  $s0, $s1, Mover	# Si n = 1, movemos discos
	nop
	nop
	addi $sp, $sp,-8 	# Restamos el sp
	nop
	nop
	sw   $ra, 4($sp) 	# Guardamos la direccion de retornos
	nop
	nop
	sw   $s0, 0($sp) 	# Guardamos n
	nop
	nop
	addi $s0, $s0, -1	# Restamos n
	
# ===================== Primeros swaps =====================
	add  $t2, $a2, $zero	# Swap de torre auxiliar con la de destinonop
	nop
	add  $a2, $a3, $zero
	add  $a3, $t2, $zero
	
	jal Hannoi		# Volvemos a llamar Hannoi
	nop
	nop
	
	add  $t2, $a2, $zero	# Swap de torre auxiliar con la de destino
	nop
	add  $a2, $a3, $zero
	add  $a3, $t2, $zero
	
	# Mover
	lw   $t5, -32($a1)	# Carga el disco del tope de la torre de origen
	nop
	nop
	sw   $zero, -32($a1)	# Y lo borramos (pop)
	nop
	nop
	
	sw   $t5, 0($a3)	# Guardamos el disco en la torre de destino
	nop
	nop
	
	addi $a3, $a3, 32	# BP: Modificamos los apuntadores de las torres
	addi $a1, $a1, -32
	# /Mover
		
# ===================== Segundos swaps =====================
	add $t2, $a2, $zero	# Swap de torre de inicio con la auxiliar
	nop
	add $a2, $a1, $zero
	add $a1, $t2, $zero
	
	jal  Hannoi
	nop
	nop
	
	add $t2, $a2, $zero	# Swap de torre de inicio con la auxiliar
	nop
	add $a2, $a1, $zero
	add $a1, $t2, $zero
# ===================== Carga de datos del sp =====================
	lw   $ra, 4($sp)	# Carga el return address anterior
	nop
	nop
	lw   $s0, 0($sp)	# Carga la cantidad de discos anteriores
	nop
	nop
	addi $sp, $sp, 8	# Le regresamos lo que hab√≠amos restado al sp
	
	jr $ra
	nop
	nop
	
# //////////////////////////////////////////////////////////////////////////////////////////////////////////////////////

Mover:	
	lw   $t5, -32($a1)	# Carga el disco del tope de la torre de origen
	nop
	nop
	sw   $zero, -32($a1)	# Y lo borramos (pop)
	nop
	nop
	
	sw   $t5, 0($a3)	# Guardamos el disco en la torre de destino
	nop
	nop
	
	addi $a3, $a3, 32	# BP: Modificamos los apuntadores de las torres
	addi $a1, $a1, -32
	jr $ra
	nop
	nop

Exit: