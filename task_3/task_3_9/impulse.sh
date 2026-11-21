#!/bin/bash

if [ $# -lt 2 ]; then
    echo "Недостаточно входящих данных"
    exit 1
fi

GENE=$1
LEVEL=$2

echo "Экспрессия гена $GENE составляет $LEVEL единиц"
