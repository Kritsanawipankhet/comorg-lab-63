#include <stdio.h>

int main(void)
{
    FILE *fp;
    int c;
    fp = fopen("makefile", "r");
    while (c != -1)
    {
        c = fgetc(fp);
        printf("%c", c);
        printf(" = %x\n", c);
    }
    fclose(fp);
    return 0;
}
