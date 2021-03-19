#include <stdio.h>
#include <stdlib.h>

int main(void)
{
    int A,B,C;
    printf("Enter Number 1 : ");
    scanf("%d", &A);
    printf("Enter Number 2 : ");
    scanf("%d", &B);
    while(B != 0){
        C = B;
        B = A%C;
        A = C;
    }
    printf("%d\n",A);
    return 0;
}
