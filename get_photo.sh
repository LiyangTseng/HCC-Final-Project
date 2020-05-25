#!/bin/bash

for DIR in ~/HCC-Final-Project/Finish_Label/*
do
    TYPE_NAME=$(basename ${DIR})

    for image in ${DIR}/*.xml
    do
        FILENAME=$(basename ${image})
        FILENAME="${FILENAME%.*}"

        if [[ -d "~/test/${TYPE_NAME}" ]]
        then
            cp ~/HCC-Final-Project/image/${TYPE_NAME}/${FILENAME}.jpg  ~/test/${TYPE_NAME}/
        else
            mkdir ~/test/${TYPE_NAME}
            cp ~/HCC-Final-Project/image/${TYPE_NAME}/${FILENAME}.jpg  ~/test/${TYPE_NAME}/
        fi
    done
done
