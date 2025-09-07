#include <stdio.h>
#include <stddef.h>
#include <scotch.h>

int main() {
    printf("sizeof(SCOTCH_Graph) = %zu\n", sizeof(SCOTCH_Graph));
    printf("offsetof(baseval)    = %zu\n", offsetof(SCOTCH_Graph, baseval));
    printf("offsetof(vertnbr)    = %zu\n", offsetof(SCOTCH_Graph, vertnbr));
    printf("offsetof(verttab)    = %zu\n", offsetof(SCOTCH_Graph, verttab));
    printf("offsetof(edgetab)    = %zu\n", offsetof(SCOTCH_Graph, edgetab));
    return 0;
}
