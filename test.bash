#!/bin/bash
# SPDX-FileCopyrightText: 2023 Toshito Kimura
# SPDX-License-Identifire: BSD-3-Clause


ng () {
    echo NG at Line $1
    res=1
}

res=0

### I/O テスト ###
out=$(python3 trig_calculator.py s 30)
[ "${out}" = "sin 30.0(deg) = 0.500" ] || ng $LINENO

[ "$res" = 0 ] && echo OK
exit $res

