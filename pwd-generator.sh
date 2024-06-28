#!/bin/bash

INFILE=/words.txt

SYMBOLS=("*" "/" "!" "@" "&" "%" "^" "$")
SYMBOLS_LENGTH=${#SYMBOLS[@]}

genType=$1

getComplex() {
    # Generate complex pwd
    # klsjdf8u3oii*+"*k4jinfioja9fs
    length=15

    pwd=""

    for i in $(seq 1 $length)
    do
        rnd=$(getRandomNumber 0 8)

        case $rnd in
            0|1|2)
                # a-z
                c=$(getRandomLowerCaseChar)
                pwd+=$c
                ;;
            3|4|5)
                # A-Z
                c=$(getRandomUpperCaseChar)
                pwd+=$c
                ;;
            6|7)
                # 0-9
                n=$(getRandomNumber 0 10)
                pwd+=$n
                ;;
            8)
                # */!@&%^$
                rndSymbol=$(getRandomNumber 0 $((SYMBOLS_LENGTH-1)))
                c=${SYMBOLS[$rndSymbol]}
                pwd+=$c
                ;;
        esac
    done

    echo $pwd
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
    word1=$(getRandomWord)
    word2=$(getRandomWord)
    number=$(getRandomNumber 0 999)
    echo "$word1$word2$number"
}

getRandomWord() {
    # Get Random word from words.txt
        word=$(shuf -n 1 $INFILE)
        echo $word
}

checkForBreach() {
    # TODO check if pwd got breached
    echo "NOT IMPLEMENTED"
}

getRandomNumber() {
    min=$1
    max=$2
    echo $((RANDOM % (max - min + 1) + min))
}

getRandomLowerCaseChar() {
    number=$(getRandomNumber 0 26)
    printf "\\$(printf %o $((number + 97)))"
}

getRandomUpperCaseChar() {
    number=$(getRandomNumber 0 26)
    printf "\\$(printf %o $((number + 65)))"
}

help() {

}

main() {
    case $genType in
        "complex")
            echo "complex"
            echo $(getComplex)
            ;;
        "word-based")
            echo "word-based"
            echo $(getWordBased)
            ;;
        "simple")
            echo "simple"
            echo $(getSimple)
            ;;
        * )
            help
            ;;
    esac
}

if [ "$0" = "$BASH_SOURCE" ]; then
    main
fi