#!/bin/bash

INFILE=/words.txt

genType=$1

getComplex() {
    # Generate complex pwd
    # klsjdf8u3oii*+"*k4jinfioja9fs
}

getWordBased() {
    # Generate Word-Based pwd
    # 4 words, separated by -
    word1=$(getRandomWord)
    word2=$(getRandomWord)
    word3=$(getRandomWord)
    word4=$(getRandomWord)
    echo "$word1-$word2-$word3-$word4"
}

getSimple() {
    # Generate simple pwd
    # 2 Words + number
}

getRandomWord() {
    # Get Random word from words.txt
        word=$(shuf -n 1 $INFILE)
        echo $word
}

checkForBreach() {
    # TODO check if pwd got breached
}

getRandomNumber() {
    min=$1
    max=$2
    echo $((RANDOM % (max - min + 1) + min))
}

getRandomLowerCaseChar() {
    number=((getRandomNumber 0 26))
    printf "\\$(printf %o $((number + 97)))"
}

getRandomUpperCaseChar() {
    number=((getRandomNumber 0 26))
    printf "\\$(printf %o $((number + 65)))"
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