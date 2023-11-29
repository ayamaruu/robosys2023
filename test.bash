#!/bin/bash -xv
# SPDX-FileCopyrightText: 2023 Ayaka Murakoshi
# SPDX-Linense-Identifier: BSD-3-Clause
ng () {
	echo NG at Line $1
	res=1
}

res=0

### I/O TEST ###
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

out=$(seq 3 | ./minus)
[ "${out}" = -6 ] || ng ${LINENO}

out=$(seq 5 | ./minus)
[ "${out}" = -15 ] || ng ${LINENO}

out=$(seq 10 | ./minus)
[ "${out}" = -55 ] || ng ${LINENO}


### STRANGE INPUT ###
#out=$(seq あ | ./plus)
#[ "$?" = 1 ]      || ng ${LINENO}
#[ "${out}" = "" ] || ng ${LINENO}

[ "$res" = 0 ] && echo OK
exit $res


* このソフトウェアパッケージは、3条項BSDライセンスの下、再頒布および使用が許可されます.
* このパッケージのコードは下記のスライド(CC-BY-SA 4.0 by Ryuichi Ueda)のものを,本人の許可を得て自身の著作としたものです.
* [ryuichiueda/my_slides robosys_2022](http://githb.com/ryuichiueda/my_slides/tree/master/robosys_2022)
* © 2023 Ayaka Murakoshi

