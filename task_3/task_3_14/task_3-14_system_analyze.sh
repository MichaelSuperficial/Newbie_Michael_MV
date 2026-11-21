#!/bin/bash

df -h | awk 'NR > 1 {
    use = $5
    sub(/%/, "", use)

    printf "%-25s %s\n", $1, $5

    if (use + 0 > 90) {
        printf "  ⚠ ВНИМАНИЕ: %s заполнена на %s (больше 90%%)\n", $1, $5
    }
}'
