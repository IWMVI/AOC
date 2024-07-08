.data   
altura: .asciiz "Coloque a altura em cm:"       #$t1=altura
maior:  .asciiz "\nA maior altura do grupo:"    #$t2=maior
menor:  .asciiz "\nA menor altura do grupo:"    #$t3=menor
.text   
main:   
    la      $t5,    0
enquanto:
    li      $v0,    4
    la      $a0,    altura
    syscall 

    li      $v0,    5
    syscall 
    move    $t1,    $v0

    beq     $t5,    1,      igual
    bgt     $t1,    $t2,    maio
    blt     $t1,    $t3,    meno

faca:   
    add     $t5,    $t5,    1
    blt     $t5,    5,      enquanto

    li      $v0,    4
    la      $a0,    maior
    syscall 
    li      $v0,    1
    move    $a0,    $t2
    syscall 

    li      $v0,    4
    la      $a0,    menor
    syscall 
    li      $v0,    1
    move    $a0,    $t3
    syscall 

    li      $v0,    10
    syscall 

igual:  
    move    $t2,    $t1
    add     $t3,    $t2,    0
    jal     faca

maio:   
    move    $t2,    $t1
    jal     faca

meno:   
    move    $t3,    $t1
    jal     faca
