// check_PETSc_Vec.c
#include <petscvec.h>

void test() {
    Vec v;
    VecCreate(PETSC_COMM_WORLD, &v);
    VecSet(v, 1.0);
}
