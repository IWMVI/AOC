.data   
msg:    .asciiz "Indique um número"
msg1:   .asciiz "Resultado:"
zero:   .float  0.0
.text   
    li      $v0,    4
    la      $a0,    msg
    syscall 

    li      $v0,    5
    syscall 
    move    $t0,    $v0

    bgt     $t0,    0,      dobro
    blt     $t0,    0,      triplo
    li      $v0,    10
    syscall 

dobro:  
    mul     $t0,    $t0,    2
    li      $v0,    4
    la      $a0,    msg1
    syscall 
    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 
triplo: 
    mul     $t0,    $t0,    3
    li      $v0,    4
    la      $a0,    msg1
    syscall 

    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 
