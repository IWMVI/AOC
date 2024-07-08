.data   
num:        .asciiz "\nInforme um número"
inter1:     .asciiz "\nNo intervalo [0-25] existem "
inter2:     .asciiz "\nNo intervalo [26-50] existem "
inter3:     .asciiz "\nNo intervalo [51-75] existem "
inter4:     .asciiz "\nNo intervalo [76-100] existem "
numeros:    .asciiz " números"
maio:       .asciiz "\nInforme números entre [0-100]!"
.text   
main:       
    li      $v0,    4
    la      $a0,    num
    syscall 

    li      $v0,    5
    syscall 
    move    $t0,    $v0

    ble     $t0,    25,         um
    ble     $t0,    50,         dois
    ble     $t0,    75,         tres
    ble     $t0,    100,        quatro
    bgt     $t0,    100,        maior

    li      $v0,    10
    syscall 

um:         
    add     $t1,    $t1,        1
    blt     $t0,    $zero,      zero
    jal     main

    li      $v0,    10
    syscall 

dois:       
    add     $t2,    $t2,        1
    jal     main

    li      $v0,    10
    syscall 

tres:       
    add     $t3,    $t3,        1
    jal     main

    li      $v0,    10
    syscall 

quatro:     
    add     $t4,    $t4,        1
    jal     main

    li      $v0,    10
    syscall 

maior:      
    li      $v0,    4
    la      $a0,    maio
    syscall 
    jal     main

    li      $a0,    10
    syscall 

zero:       
    sub     $t1,    $t1,        1

    li      $v0,    4
    la      $a0,    inter1
    syscall 
    li      $v0,    1
    move    $a0,    $t1
    syscall 
    li      $v0,    4
    la      $a0,    numeros
    syscall 

    li      $v0,    4
    la      $a0,    inter2
    syscall 
    li      $v0,    1
    move    $a0,    $t2
    syscall 
    li      $v0,    4
    la      $a0,    numeros
    syscall 

    li      $v0,    4
    la      $a0,    inter3
    syscall 
    li      $v0,    1
    move    $a0,    $t3
    syscall 
    li      $v0,    4
    la      $a0,    numeros
    syscall 

    li      $v0,    4
    la      $a0,    inter4
    syscall 
    li      $v0,    1
    move    $a0,    $t4
    syscall 
    li      $v0,    4
    la      $a0,    numeros
    syscall 

    li      $v0,    10
    syscall 
