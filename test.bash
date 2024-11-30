#!/bin/bash
# SPDX-FileCopyrightText: 2024 Yuma Sakurai <yuumin0131@outlook.jp>
# SPDX-License-Identifier: BSD-3-Clause

get_zodiac() {
    date=$((10#$1))  
    if   [[ $date -ge 1222 && $date -le 1231 ]] || [[ $date -ge 101 && $date -le 119 ]]; then
        echo "山羊座です"
    elif [[ $date -ge 120 && $date -le 131 ]] || [[ $date -ge 201 && $date -le 218 ]]; then
        echo "みずがめ座です"
    elif [[ $date -ge 219 && $date -le 229 ]] || [[ $date -ge 301 && $date -le 320 ]]; then
        echo "魚座です"
    elif [[ $date -ge 321 && $date -le 331 ]] || [[ $date -ge 401 && $date -le 419 ]]; then
        echo "牡羊座です"
    elif [[ $date -ge 420 && $date -le 430 ]] || [[ $date -ge 501 && $date -le 520 ]]; then
        echo "牡牛座です"
    elif [[ $date -ge 521 && $date -le 531 ]] || [[ $date -ge 601 && $date -le 621 ]]; then
        echo "双子座です"
    elif [[ $date -ge 622 && $date -le 630 ]] || [[ $date -ge 701 && $date -le 722 ]]; then
        echo "蟹座です"
    elif [[ $date -ge 723 && $date -le 731 ]] || [[ $date -ge 801 && $date -le 822 ]]; then
        echo "獅子座です"
    elif [[ $date -ge 823 && $date -le 831 ]] || [[ $date -ge 901 && $date -le 922 ]]; then
        echo "乙女座です"
    elif [[ $date -ge 923 && $date -le 930 ]] || [[ $date -ge 1001 && $date -le 1023 ]]; then
        echo "天秤座です"
    elif [[ $date -ge 1024 && $date -le 1031 ]] || [[ $date -ge 1101 && $date -le 1122 ]]; then
        echo "蠍座です"
    elif [[ $date -ge 1123 && $date -le 1130 ]] || [[ $date -ge 1201 && $date -le 1221 ]]; then
        echo "射手座です"
    else
        echo "そんな誕生日はない"
    fi
}


ng () {
    echo "${1}行目が違うよ: 入力='${2}', 正解='${3}', 結果='${4}'"
    res=1
}

res=0

tests=(
    "1225 山羊座です"    
    "0105 山羊座です"    
    "0215 みずがめ座です" 
    "0310 魚座です"      
    "0405 牡羊座です"    
    "0525 双子座です"    
    "0730 獅子座です"    
    "0925 天秤座です"    
    "1125 射手座です"    
    "9999 そんな誕生日はない" 
)

for ((i=0; i<${#tests[@]}; i++)); do
    
    line="${tests[$i]}"
    input=$(echo "$line" | awk '{print $1}')
    expected=$(echo "$line" | awk '{print $2}')

    
    output=$(get_zodiac "$input")

    if [ "$output" != "$expected" ]; then
        ng "$((i + 1))" "$input" "$expected" "$output"
    fi
done

[ "$res" = 0 ] && echo "OK"
exit $res