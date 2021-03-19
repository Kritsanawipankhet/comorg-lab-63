    .global main
main:
    MOV R0, #0
    MOV R1, #255
    MOV R2, #100
    ORR R0, R1, R2
    BX LR
