#!/bin/bash

genType=$1

main() {
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
}

src=$0

if [ "$0" = "$BASH_SOURCE" ]; then
    main
fi