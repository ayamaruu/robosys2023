#!/bin/bash

out=$(seq 5 | ./plus)

[ "${out}" = 15.0 ]

#if文みたいにこれがあってたら$?の時に0を返却する
