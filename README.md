ng () { echo NG at Line $1  res=1 }
#ng関数を定義し、引数として渡された行番号を使って"NG at Line"とメッセージを表示、res=1とする
res=0
#res=0として初期化、エラーしていない状態、として定義する
out=$(seq 5 | ./plus)
#out変数にseq 5 | ./plusの結果を代入する
[ "${out}" = 14.0 ] || ng ${LINENO}
#outの値が14.0と等しいかについてテストし、等しくなければng関数を実行する、${LINENO}は行番号を示す。
[ "$res" = 0 ] && echo OK
#前に記述したものでエラーが起きなかった場合resの値は0のままなのでOKと表示する




* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* © 2023 Ayaka Murakoshi

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.
* [ryuichiueda/my_slides robosys_2022](http://githb.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Ayaka Murakoshi
# robosys2023
testoo
