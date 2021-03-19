#include <stdio.h>

int main(void)
{
    int A, B;
    while (1)
    {
        printf("Enter Number 1 : ");
        scanf("%d", &A);
        if (A != 0)
        {
            while (1)
            {
                printf("Enter Number 2 : ");
                scanf("%d", &B);
                if(B != 0){
                    printf("%d %% %d = %d\n", A,B,A%B);
                    break;
                }else{
                    printf("Can't divide by zero \n");
                }
            }
        }else{
            printf("Can't divide by zero \n");
        }
        return 0;
    }
}

