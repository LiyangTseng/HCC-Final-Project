#!/bin/bash

for file in ~/HCC-Final-Project/label_result/*
do
    FILENAME=$(basename ${file})
    FILENAME="${FILENAME%.*}"

    cp ~/HCC-Final-Project/clear_image/${FILENAME}.jpg  ~/test/
done
