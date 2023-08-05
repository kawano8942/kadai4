#!/bin/bash

# 引数の数をチェック
if [ $# -ne 2 ]; then
  echo "正確に2つの引数が必要です。"
  exit 1
fi

# 引数が整数かどうかをチェック
if ! [[ $1 =~ ^[0-9]+$ ]] || ! [[ $2 =~ ^[0-9]+$ ]]; then
  echo "引数は正の整数である必要があります。"
  exit 1
fi

a=$1
b=$2

# 最大公約数を計算
while [ $b -ne 0 ]; do
  temp=$b
  b=$(( $a % $b ))
  a=$temp
done

echo $a#!/bin/bash

# 引数の数をチェック
if [ $# -ne 2 ]; then
  echo "引数の数が正しくありません。2つの自然数を指定してください。"
  exit 1
fi

# 引数が自然数かどうかをチェック
if ! [[ $1 =~ ^[1-9][0-9]*$ ]] || ! [[ $2 =~ ^[1-9][0-9]*$ ]]; then
  echo "引数は正の整数である必要があります。"
  exit 1
fi

# 引数が大きすぎないかチェック（オプション）
if [ $1 -gt 1000000 ] || [ $2 -gt 1000000 ]; then
  echo "引数は1000000以下の正の整数である必要があります。"
  exit 1
fi

a=$1
b=$2

# 最大公約数を計算
while [ $b -ne 0 ]; do
  temp=$b
  b=$(( $a % $b ))
  a=$temp
done

echo $a
exit 0
