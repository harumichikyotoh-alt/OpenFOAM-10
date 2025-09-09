#!/bin/bash
set -e

echo "Compiling decomposition ABI test code..."
g++ -I$WM_PROJECT_DIR/src/OpenFOAM/lnInclude \
    -I$WM_PROJECT_DIR/src/OSspecific/POSIX/lnInclude \
    -I$WM_PROJECT_DIR/src/decompositionMethods/lnInclude \
    -c check_Decompose.c -o check_Decompose.o
