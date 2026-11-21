#!/bin/bash

for i in {1..10}; do
    echo "Файл $i" > "test$i.txt"
done

i=10
while [ $i -ge 1 ]; do
    rm "test$i.txt"
    echo "Удалён test$i.txt"
    i=$((i - 1))
done
