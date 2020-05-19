#!/bin/bash

AMOUNT_FILES="$(ls -1 | wc -l)"
BASE_NAME="$(basename "$PWD" | tr '[:upper:]' '[:lower:]')"
COUNT=1

for filename in ./*.jpg
do
    mv ${filename} "${BASE_NAME}_${COUNT}.jpg"
    COUNT=$((COUNT+1))
done
