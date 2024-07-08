.data   
a:  .asciiz "Digite o valor de A"
b:  .asciiz "Digite o valor de B"
c:  .asciiz "Valor de c:"
.text   
    li      $v0,    4
    la      $a0,    a
    syscall 
    li      $v0,    5
    syscall 
    move    $t0,    $v0

    li      $v0,    4
    la      $a0,    b
    syscall 
    li      $v0,    5
    syscall 
    move    $t1,    $v0

    beq     $t0,    $t1,    soma

    mul     $t0,    $t1,    $t0

    li      $v0,    4
    la      $a0,    c
    syscall 
    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 

soma:
    add     $t0,    $t0,    $t1
    li      $v0,    4
    la      $a0,    c
    syscall 
    li      $v0,    1
    move    $a0,    $t0
    syscall 
    li      $v0,    10
    syscall 
