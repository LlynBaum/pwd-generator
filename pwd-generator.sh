#!/bin/bash

genType=$1

case $genType in
    "complex")
        echo "complex"
        ;;
    "word-based")
        echo "word-based"
        ;;
    "simple")
        echo "simple"
        ;;
    * )
        echo "help"
        ;;
esac