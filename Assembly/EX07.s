.data   
num:    .asciiz "Coloque um número:"
resul:  .asciiz "O resultado:"
.text   
    li      $v0,    4
    la      $a0,    num
    syscall 

    li      $v0,    5
    syscall 
    move    $t0,    $v0

    div     $t1,    $t0,    2
    mul     $t1,    $t1,    2

    beq     $t1,    $t0,    par

    add     $t0,    $t0,    8

    li      $v0,    4
    la      $a0,    resul
    syscall 

    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 

par:    
    add     $t0,    $t0,    5

    li      $v0,    4
    la      $a0,    resul
    syscall 

    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 
