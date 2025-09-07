#!/bin/bash
HEADER=/usr/include/scotch/scotch.h
grep -E 'SCOTCH_[a-zA-Z0-9_]+\s*\(' "$HEADER" \
  | grep -v '^#' \
  | grep -v '//' \
  | sed 's/;$//' \
  | grep -v '^$' \
  | sort \
  > extracted-signatures.txt

