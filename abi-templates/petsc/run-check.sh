#!/bin/bash
set -e

echo "Compiling PETSc ABI test code..."
gcc -Wall -Wextra -c check_PETSc_Vec.c -o check_PETSc_Vec.o $(pkg-config --cflags petsc)
