#!/bin/bash
echo "Running SCOTCH ABI checks..."

# 明示的にヘッダパスを指定（環境変数が未定義の場合）
INCLUDE_DIR=${SCOTCH_INCDIR:-/usr/include/scotch}

for src in check_*.c; do
    exe="${src%.c}"
    gcc "$src" -I"$INCLUDE_DIR" -lscotch -o "$exe" && ./"$exe"
done
