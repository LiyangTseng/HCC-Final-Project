#!/bin/bash

for file in ~/HCC-Final-Project/label_result/*
do
    FILENAME=$(basename ${file})
    FILENAME="${FILENAME%.*}"

    for folder in ~/HCC-Final-Project/origin_image/*/
    do
        echo ${folder}
    done

done
