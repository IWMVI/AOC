.data   
cat1:   .asciiz "Valor do primeiro cateto"
cat2:   .asciiz "Valor do segundo cateto"
hip:    .asciiz "Valor da hipotenusa:"
zero:   .float  0.0
.text   
main:   
    li      $v0,    4
    la      $a0,    cat1
    syscall 
    li      $v0,    6
    syscall 
    lwc1    $f1,    zero
    mul.s   $f0,    $f0,    $f0
    add.s   $f12,   $f1,    $f0

    li      $v0,    4
    la      $a0,    cat2
    syscall 
    li      $v0,    6
    syscall 
    mul.s   $f0,    $f0,    $f0
    add.s   $f12,   $f12,   $f0

    sqrt.s  $f12,   $f12                    #raiz

    li      $v0,    4                       #print
    la      $a0,    hip
    syscall 
    li      $v0,    2
    syscall 
