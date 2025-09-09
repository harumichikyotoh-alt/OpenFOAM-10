#!/bin/bash
set -e

echo "Compiling decomposition ABI test code..."

g++ -I$GITHUB_WORKSPACE/src/OpenFOAM/lnInclude \
    -I$GITHUB_WORKSPACE/src/parallel/decompose/decompositionMethods/lnInclude \
    -I$GITHUB_WORKSPACE/src/OSspecific/POSIX/lnInclude \
    -c check_Decompose.c -o check_Decompose.o
