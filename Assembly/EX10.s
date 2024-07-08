.data   
info:   .asciiz "\nInforme um número inteiro de 100 a 999:"
x:      .asciiz "\nCentena="                                #$t3
y:      .asciiz "\nDezena="                                 #$t2
z:      .asciiz "\nUnidade="                                #$t1
entre:  .asciiz "\nInforme um número entre 100-999!"
.text   
main:   
    li      $v0,    4
    la      $a0,    info
    syscall 

    li      $v0,    5
    syscall 
    move    $t0,    $v0

    blt     $t0,    100,    mm
    bgt     $t0,    999,    mm

    div     $t1,    $t0,    10
    mfhi    $t1

    sub     $t2,    $t0,    $t1
    div     $t2,    $t2,    10
    div     $t2,    $t2,    10
    mfhi    $t2

    div     $t3,    $t0,    100
    mfhi    $t3
    sub     $t3,    $t0,    $t3
    div     $t3,    $t3,    100

    li      $v0,    4
    la      $a0,    x
    syscall 
    li      $v0,    1
    move    $a0,    $t3
    syscall 

    li      $v0,    4
    la      $a0,    y
    syscall 
    li      $v0,    1
    move    $a0,    $t2
    syscall 

    li      $v0,    4
    la      $a0,    z
    syscall 
    li      $v0,    1
    move    $a0,    $t1
    syscall 

    li      $v0,    10
    syscall 

mm:     
    li      $v0,    4
    la      $a0,    entre
    syscall 
    jal     main
