.data   
lado1:  .asciiz "Indique a altura:"
lado2:  .asciiz "\nIndique a base:"
area:   .asciiz "A area do terreno:"
.text   
li      $v0,    4
la      $a0,    lado1
syscall 

li      $v0,    5
syscall 
move    $t0,    $v0

li      $v0,    4
la      $a0,    lado2
syscall 

li      $v0,    5
syscall 
move    $t1,    $v0

mul     $t2,    $t0,    $t1

li      $v0,    4
la      $a0,    area
syscall 

li      $v0,    1
move    $a0,    $t2
syscall 
