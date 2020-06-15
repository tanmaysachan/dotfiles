#!/bin/bash

preserve=0
restore=0

while getopts ":p:r:" opt; do
    case $opt in
        p) preserve=1
        ;;
        r) restore=1
        ;;
        \?) echo "Invalid option -$OPTARG" >&2
        ;;
    esac
done

files="\.[^.]*"

if [ $restore -eq 1 ]; then
    for file in $files; do
        mv ~/${file}.old ~/$file
    done
    exit 0
fi

for file in $files; do
    if [ $preserve -eq 1 ]; then
        echo Applying ${file}...
        mv ~/$file ~/${file}.old
    fi
    cp ./$file ~/$file
done
