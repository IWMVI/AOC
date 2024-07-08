.data   
peq:    .asciiz "Digite o número de camisetas pequenas vendidas"
med:    .asciiz "Digite o número de camisetas medias vendidas"
gran:   .asciiz "Digite o número de camisetas grandes vendidas"
venda:  .asciiz "Valor arrecadado:"
.text   
li      $v0,    4
la      $a0,    peq
syscall 

li      $v0,    5
syscall 
move    $t0,    $v0

mul     $t0,    $t0,    10


li      $v0,    4
la      $a0,    med
syscall 

li      $v0,    5
syscall 
move    $t1,    $v0

mul     $t1,    $t1,    12
add     $t0,    $t0,    $t1

li      $v0,    4
la      $a0,    gran
syscall 

li      $v0,    5
syscall 
move    $t1,    $v0

mul     $t1,    $t1,    15
add     $t0,    $t0,    $t1

li      $v0,    4                                                   #print
la      $a0,    venda
syscall 

li      $v0,    1
move    $a0,    $t0
syscall 
