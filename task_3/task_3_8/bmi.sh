#!/bin/bash

read -p "Введите массу тела�ин:" MASS

# -s �аете
read -p "Введите свой рост:" HEIGHT

RESULT=$(( MASS * 10000 / (HEIGHT * HEIGHT) ))
echo $RESULT
