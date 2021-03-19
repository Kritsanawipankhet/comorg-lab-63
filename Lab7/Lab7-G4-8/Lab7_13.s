    .data
    .balign 4

get_num_1: .asciz "Enter Number 1 : "
    .balign 4

get_num_2: .asciz "Enter Number 2 : "
    .balign 4

pattern: .asciz "%d"
    .balign 4

num1: .word 0
    .balign 4

num2: .word 0
    .balign 4

output: .asciz  "%d %% %d = %d\n"
    .balign 4

lr_bu: .word 0
    .balign 4

lr_bu_2: .word 0
    .text

modulus_func:
    LDR R2,addr_lr_bu_2
    STR lr,[R2]

loop:
    CMP R0,R1
    BLT end
    SUBS R0,R0,R1
    B loop

end:
    BX lr

addr_lr_bu_2: .word lr_bu_2
    .global main

main:
    LDR R1, addr_lr_bu
    STR lr,[R1]

    LDR R0, addr_get_num_1
    BL printf

    LDR R0,addr_pattern
    LDR R1,addr_num_1
    BL scanf

    LDR R0, addr_get_num_2
    BL printf

    LDR R0,addr_pattern
    LDR R1,addr_num_2
    BL scanf

    LDR R0,addr_num_1
    LDR R0,[R0]
    LDR R1,addr_num_2
    LDR R1,[R1]
    BL modulus_func

    MOV R3, R0

    LDR R0, addr_output
    LDR R1 ,addr_num_1
    LDR R1,[R1]
    LDR R2,addr_num_2
    LDR R2,[R2]
    BL printf
    BX lr

addr_get_num_1: .word   get_num_1
addr_get_num_2: .word   get_num_2
addr_pattern:   .word   pattern
addr_num_1:     .word   num1
addr_num_2:     .word   num2
addr_output:    .word   output
addr_lr_bu:     .word   lr_bu

.global printf
.global scanf
