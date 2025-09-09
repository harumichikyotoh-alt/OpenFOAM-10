#!/bin/bash
set -e

echo "Extracting PETSc function signatures..."
nm -g check_PETSc_Vec.o | grep ' T ' | awk '{print $3}' | sort > actual-signatures.txt
