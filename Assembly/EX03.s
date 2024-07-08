.data   
ht:         .asciiz "Indique o tempo de horas trabalhadas"
hex:        .asciiz "Indique o tempo de horas extras"
salbrut:    .asciiz "Salário bruto:"
salliqui:   .asciiz "\nSalário liquido"
.text   
li      $v0,    4
la      $a0,    ht
syscall 

li      $v0,    5
syscall 
mul     $t0,    $v0,        10


li      $v0,    4
la      $a0,    hex
syscall 

li      $v0,    5
syscall 

mul     $t1,    $v0,        15
add     $t1,    $t1,        $t0

li      $v0,    4                                           #print
la      $a0,    salbrut
syscall 
li      $v0,    1
move    $a0,    $t0
syscall 

li      $v0,    4
la      $a0,    salliqui
syscall 
li      $v0,    1
move    $a0,    $t1
syscall 
