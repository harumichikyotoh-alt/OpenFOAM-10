#!/bin/bash
set -e

echo "Comparing against expected decomposition signatures..."
diff -u expected-signatures.txt actual-signatures.txt > signature-diff.txt || true
