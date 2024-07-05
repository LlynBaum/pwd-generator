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
    password=$1

    sha1_hash=$(echo -n $password | openssl dgst -sha1 | awk '{print $2}')

    prefix=${sha1_hash:0:5}
    suffix=${sha1_hash:5}

    response=$(curl -s "https://api.pwnedpasswords.com/range/$prefix")

    if echo "$response" | grep -iq "$suffix"; then
        return 1
    else
        return 0
    fi
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
    echo "Password Generator Script"
    echo ""
    echo "Usage: $0 [option]"
    echo ""
    echo "Options:"
    echo "  complex      Generate a complex password with a mix of upper and lower case letters, numbers, and symbols."
    echo "  word-based   Generate a word-based password composed of four random words separated by dashes."
    echo "  simple       Generate a simple password with two random words followed by a number."
    echo ""
    echo "Example:"
    echo "  $0 complex"
    echo "  $0 word-based"
    echo "  $0 simple"
    echo ""
    echo "This script generates passwords based on the specified option. The 'complex' option generates a more secure password,"
    echo "'word-based' option generates a password that is easier to remember, and 'simple' option generates a password that is"
    echo "a combination of words and a number."
}

generate() {
    case $genType in
        "complex")
            pwd=$(getComplex)
            echo $pwd
            ;;
        "word-based")
            pwd=$(getWordBased)
            echo $pwd
            ;;
        "simple")
            pwd=$(getSimple)
            echo $pwd
            ;;
        * )
            help
            ;;
    esac
}

main() {
    while true; do
        pwd=$(generate)
        checkForBreach $pwd
        isPwned=$?
        if [ $isPwned -eq 0 ]; then
            echo $pwd
            exit 0
        fi
    done
}

if [ "$0" = "$BASH_SOURCE" ]; then
    main
fi