#!/bin/bash

# 最大公約数を計算するスクリプトmain.shのテスト
function test_gcd {
  result=$(./main.sh $1 $2)
  if [ "$result" -eq "$3" ]; then
    echo "テスト成功: $1 と $2 の最大公約数は $3"
  else
    echo "テスト失敗: $1 と $2 の最大公約数は $3 のはずが $result が返されました"
    exit 1
  fi
}

# 引数が少ないケースのテスト
echo "引数が少ないケースのテスト"
result=$(./main.sh 2)
expected="引数の数が正しくありません。2つの自然数を指定してください。"
if [ "$result" == "$expected" ]; then
  echo "引数が少ないケースのテスト成功"
else
  echo "エラー: 引数が少ない場合にエラーメッセージが出なかった"
  exit 1
fi

# 引数が多いケースのテスト
echo "引数が多いケースのテスト"
result=$(./main.sh 2 3 4)
if [ "$result" == "$expected" ]; then
  echo "引数が多いケースのテスト成功"
else
  echo "エラー: 引数が多い場合にエラーメッセージが出なかった"
  exit 1
fi

# さまざまなテストケースでテスト
echo "通常のケースのテスト"
test_gcd 2 4 2
test_gcd 15 10 5
test_gcd 121 11 11

# 負の数のテスト
echo "負の数のケースのテスト"
result=$(./main.sh -2 4)
expected="引数は正の整数である必要があります。"
if [ "$result" == "$expected" ]; then
  echo "負の数のケースのテスト成功"
else
  echo "エラー: 負の数が入力された場合にエラーメッセージが出なかった"
  exit 1
fi

# 小数のテスト
echo "小数のケースのテスト"
result=$(./main.sh 2.5 4)
if [ "$result" == "$expected" ]; then
  echo "小数のケースのテスト成功"
else
  echo "エラー: 小数が入力された場合にエラーメッセージが出なかった"
  exit 1
fi

# 全てのテストがパスした
echo "全てのテストが成功しました！"
