#!/bin/bash

for file in ~/HCC-Final-Project/label_result/*
do
    FILENAME=$(basename ${file})
    FILENAME="${FILENAME%.*}"

    for folder in ~/HCC-Final_Project/origin_image/*
    do
        cd folder

        if [[ -f ${FILENAME}.jpg ]]
        then
            cp ${FILENAME}.jpg  ~/HCC-Final-Project/target_image/
        fi
    done

done
