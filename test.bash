#!/bin/bash
# SPDX-FileCopyrightText: 2023 Toshito Kimura
# SPDX-License-Identifire: BSD-3-Clause

ng() {
    echo "NG at Line $1"
    res=1
}

res=0

### I/O テスト ###

# Test case 1: sin
out=$(echo 30 | ./trig_calculator | grep "sin 30.0(deg)")
[ "${out}" = "Enter angle in degrees: sin 30.0(deg) = 0.500" ] || ng $LINENO

# Test case 2: cos
out=$(echo 30 | ./trig_calculator | grep "cos 30.0(deg)")
[ "${out}" = "cos 30.0(deg) = 0.866" ] || ng $LINENO

# Test case 3: tan
out=$(echo 30 | ./trig_calculator | grep "tan 30.0(deg)")
[ "${out}" = "tan 30.0(deg) = 0.577" ] || ng $LINENO

# Test case 4: Invalid input
out=$(echo  "invalid" | ./trig_calculator)
[ "${out}" = "Enter angle in degrees: Invalid input. Please enter a valid number for the angle." ] || ng $LINENO

[ "$res" = 0 ] && echo "OK"
exit $res

