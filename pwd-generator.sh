#!/bin/bash

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