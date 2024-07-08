.data   
bmaior: .asciiz "Indique a base menor"
bmenor: .asciiz "Indique a base maior"
al:     .asciiz "Indique a altura"
area:   .asciiz "Tamanho da area:"
.text   
li      $v0,    4
la      $a0,    bmaior
syscall 
li      $v0,    5
syscall 
move    $t0,    $v0

li      $v0,    4
la      $a0,    bmenor
syscall 
li      $v0,    5
syscall 
add     $t0,    $t0,    $v0

li      $v0,    4
la      $a0,    al
syscall 

li      $v0,    5
syscall 
mul     $t0,    $t0,    $v0
div     $t0,    $t0,    2

li      $v0,    4
la      $a0,    area
syscall 

li      $v0,    1
move    $a0,    $t0
syscall 
