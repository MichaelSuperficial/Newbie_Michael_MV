#!/bin/bash

printf "%-15s %-7s %-7s %-7s %-7s\n" "Файл" "A" "T" "G" "C"

for file in *.fasta; do
    if [ ! -s "$file" ]; then
        continue
    fi

    seq=$(grep -v "^>" "$file" | tr -d '\n' | tr 'a-z' 'A-Z')

    A=$(echo -n "$seq" | grep -o "A" | wc -l)
    T=$(echo -n "$seq" | grep -o "T" | wc -l)
    G=$(echo -n "$seq" | grep -o "G" | wc -l)
    C=$(echo -n "$seq" | grep -o "C" | wc -l)

    printf "%-15s %-7s %-7s %-7s %-7s\n" "$file" "$A" "$T" "$G" "$C"
done
