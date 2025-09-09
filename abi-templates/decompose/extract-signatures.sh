#!/bin/bash
set -e

echo "Extracting decomposition function signatures..."
nm -g check_Decompose.o | grep ' T ' | awk '{print $3}' | sort > actual-signatures.txt
