## plusコマンド,minusコマンド
![test](https://github.com/ayamaruu/robosys2023/actions/workflows/test.yml/badge.svg)

* 標準入力から読み込んだ数字を足す。
* 標準入力から読み込んだ数字を引く。
* 標準入力から読み込んだ数字を足して合計が100以下なら0を返して「合計は100以下です」と表示し、合計が100以上なら1を返して「合計は100以上です」と表示する
* 各行を整数に変換しようとしますが、もし整数に変換できない場合（ValueErrorが発生した場合）、浮動小数点数に変換

## 導入方法
下記のリンクからサイトにとぶ
```
 https://github.com/ayamaruu/robosys2023.git
```
## test.bash
```
ng () { echo NG at Line $1  res=1 }
```
* ng関数を定義し、引数として渡された行番号を使って"NG at Line"とメッセージを表示、res=1とする
```
res=0
```
* res=0として初期化、エラーしていない状態、として定義する
```
out=$(seq 1 | ./plus)
```
* out変数にseq 1 | ./plusの結果を代入する
```
[ "${out}" = 1 ] || ng ${LINENO}
```
* outの値が1と等しいかについてテストし、等しくなければng関数を実行する、${LINENO}は行番号を示す。
```
out=$(seq 1 | ./plus)
[ "${out}" = 1 ] || ng ${LINENO}

out=$(seq 2 | ./plus)
[ "${out}" = 3 ] || ng ${LINENO}

out=$(seq 3 | ./plus)
[ "${out}" = 6 ] || ng ${LINENO}

out=$(seq 5 | ./plus)
[ "${out}" = 15 ] || ng ${LINENO}

out=$(seq 7 | ./plus)
[ "${out}" = 28 ] || ng ${LINENO}

out=$(seq 10 | ./plus)
[ "${out}" = 55 ] || ng ${LINENO}
```
* 上と同様にあっているかテストし、等しくなければng関数を実行す
```
out=$(seq 3 | ./minus)
[ "${out}" = -6 ] || ng ${LINENO}

out=$(seq 5 | ./minus)
[ "${out}" = -15 ] || ng ${LINENO}

out=$(seq 10 | ./minus)
[ "${out}" = -55 ] || ng ${LINENO}
```
* out変数にseq 数字 | ./minusの結果を代入する
outの値が等しいかについてテストし、等しくなければng関数を実行する、${LINENO}は行番号を示す。
```
[ "$res" = 0 ] && echo OK
```
* 前に記述したものでエラーが起きなかった場合resの値は0のままなのでOKと表示する

## 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10
* sysライブラリ

## テスト環境
* Ubuntu 22.04.2 LTS

このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.
[ryuichiueda/my_slides robosys_2022](http://githb.com/ryuichiueda/my_slides/tree/master/robosys_2022)
© 2023 Ayaka Murakoshi
