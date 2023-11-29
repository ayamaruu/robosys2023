#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ayaka Murakoshi
# SPDX-Linense-Identifier: BSD-3-Clause
ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
out=$(seq 5 | ./plus)
[ "${out}" = 15.0 ] || ng ${LINENO}

### STRANGE INPUT ###
out=$(seq あ | ./plus)
[ "$?" = 1 ]      || ng ${LINENO}
[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit 0

* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.
* [ryuichiueda/my_slides robosys_2022](http://githb.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Ayaka Murakoshi

