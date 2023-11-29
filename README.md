## plusコマンド,minusコマンド
![test](https://github.com/ayamaruu/robosys2023/actions/workflows/test.yml/badge.svg)

* plusコマンド　標準入力から読み込んだ数字を足す。
```
#!/usr/bin/python3
```
python3でプログラムを実行するためのシバン。
```
import sys
```
sysライブラリを使えるようにするためのモジュールのインポートを行う
```
ans=0
```
変数ansを初期化する。ansは合計の値を入力するためのもの
```
for line in sys.stdin:
```
標準入力からのデータを読み取るループ。
```
    try:
         ans += int(line)
    except:
         ans += float(line)
```
入力された数字を整数に変換して足す。できなかった場合は浮動小数点に変換して加算を行う。
```
print(ans)
```
ループが終わった後の値を標準出力に表示する

* minusコマンド　標準入力から読み込んだ数字を引く。
```
#!/usr/bin/python3
```
python3でプログラムを実行するためのシバン。
```
import sys
```
sysライブラリを使えるようにするためのモジュールのインポートを行>う
```
ans=0
```
変数ansを初期化する。ansは合計の値を入力するためのもの
```
for line in sys.stdin:
```
標準入力からのデータを読み取るループ。
```
    try:
         ans -= int(line)
    except:
         ans -= float(line)
```
入力された数字にマイナスの符号をつけたものを整数に変換して足す。できなかった場合は浮動小数点に変換して加算を行う。
```
print(ans)
```
ループが終わった後の合計の値を標準出力に表示する
## 導入方法
下記のリンクからサイトにとぶ
```
 https://github.com/ayamaruu/robosys2023.git
```
以下の3つのリンクよりプログラムをダウンロードすることができます
```
https://github.com/ayamaruu/robosys2023/blob/dev/plus
https://github.com/ayamaruu/robosys2023/blob/dev/minus
https://github.com/ayamaruu/robosys2023/blob/dev/test.bash
```
これらのプログラムを使用し、それぞれをファイルに保存し、ターミナルで以下の操作を行うことによって使用可能になる
```
chmod +x ファイル名
```
## 必要なソフトウェア
* Python
  * テスト済み: 3.7~3.10
* sysライブラリ

## テスト環境
* Ubuntu 22.04.2 LTS

このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.
ryuichiueda/my_slides robosys_2022
© 2023 Ayaka Murakoshi
