.data   
dividendo:  .asciiz "\nColoque o número do dividendo:"
divisor:    .asciiz "Colque o número do divisor:"
divzero:    .asciiz "O divisor não pode ser nulo!"
resul:      .asciiz "Resultado:"
.text   
main:       
    jal     zero
    li      $v0,    10
    syscall 
zero:       
    li      $v0,    4
    la      $a0,    dividendo
    syscall 
    li      $v0,    5
    syscall 
    move    $t0,    $v0

    li      $v0,    4
    la      $a0,    divisor
    syscall 
    li      $v0,    5
    syscall 
    move    $t1,    $v0

    beq     $t1,    0,          ins

    div     $t0,    $t0,        $t1

    li      $v0,    4
    la      $a0,    resul
    syscall 
    li      $v0,    1
    move    $a0,    $t0
    syscall 

    li      $v0,    10
    syscall 

ins:        
    li      $v0,    4
    la      $a0,    divzero
    syscall 
    jal     zero
