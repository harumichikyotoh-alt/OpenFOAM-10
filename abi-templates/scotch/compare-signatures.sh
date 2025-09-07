#!/bin/bash
echo "Comparing only waves-used functions..."

grep -Ff function-signatures.txt extracted-signatures.txt > matched.txt
diff -u function-signatures.txt matched.txt > signature-diff.txt

if [ -s signature-diff.txt ]; then
    echo "⚠️ 一部の関数定義が一致しません。詳細は signature-diff.txt を確認してください。"
else
    echo "✅ waves モジュールが使用する関数の定義はすべて一致しています。"
fi
