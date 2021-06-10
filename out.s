FUNCTION mod :
PARAM v1
PARAM v2
t3 := v1 / v2
t2 := t3 * v2
t1 := v1 - t2
RETURN t1
FUNCTION quick_power_mod :
PARAM v3
PARAM v4
PARAM v5
v6 := #1
IF v3 <= #0 GOTO label6
GOTO label10
LABEL label10 :
IF v4 <= #0 GOTO label6
GOTO label9
LABEL label9 :
IF v5 <= #0 GOTO label6
GOTO label7
LABEL label6 :
t4 := #0 - #1
RETURN t4
GOTO label8
LABEL label7 :
ARG v5
ARG v3
t11 := CALL mod
v3 := t11
LABEL label3 :
IF v4 != #0 GOTO label4
GOTO label5
LABEL label4 :
ARG #2
ARG v4
t7 := CALL mod
IF t7 == #1 GOTO label1
GOTO label2
LABEL label1 :
t6 := v6 * v3
ARG v5
ARG t6
t5 := CALL mod
v6 := t5
LABEL label2 :
t8 := v4 / #2
v4 := t8
t10 := v3 * v3
ARG v5
ARG t10
t9 := CALL mod
v3 := t9
GOTO label3
LABEL label5 :
RETURN v6
LABEL label8 :
FUNCTION main :
DEC v8 12
v7 := #0
LABEL label11 :
IF v7 < #3 GOTO label12
GOTO label13
LABEL label12 :
READ t12
t14 := &v8
t15 := v7 * #4
t13 := t14 + t15
*t13 := t12
t16 := v7 + #1
v7 := t16
GOTO label11
LABEL label13 :
t19 := &v8
t20 := #0 * #4
t18 := t19 + t20
t21 := *t18
t23 := &v8
t24 := #1 * #4
t22 := t23 + t24
t25 := *t22
t27 := &v8
t28 := #2 * #4
t26 := t27 + t28
t29 := *t26
ARG t29
ARG t25
ARG t21
t17 := CALL quick_power_mod
WRITE t17
RETURN #0
