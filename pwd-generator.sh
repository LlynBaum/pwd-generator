#!/bin/bash

INFILE=/words.txt

genType=$1

getComplex() {
    # Generate complex pwd
}

getWordBased() {
    # Generate Word-Based pwd
}

getSimple() {
    # Generate simple pwd
}

getRandomWord() {
    # Get Random word from words.txt
}

checkForBreach() {
    # TODO check if pwd got breached
}

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

if [ "$0" = "$BASH_SOURCE" ]; then
    main
fi