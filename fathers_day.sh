#!/bin/bash

TITLE="Happy Father's Day!"
MESSAGE="Thank you for everything you've done"
MESSAGE3="I really appreciate everything you do"
THANKS="Thank you, Dad!!"
ENDING="I hope you have a great day!"
FROM="From James (coding is life)"
EXTRA="..."

clear

WIDTH=62

type_text() {
    text="$1"
    delay="$2"

    for ((i=0; i<${#text}; i++)); do
        printf '%s' "${text:$i:1}"
        sleep "$delay"
    done

    printf '\n'
}

center_text() {
    text="$1"
    padding=$(( (WIDTH - ${#text}) / 2 ))
    printf '%*s%s\n' "$padding" "" "$text"
}

border() {
    printf '%*s\n' "$WIDTH" '' | tr ' ' '='
}

printf '\n'

center_text '*        .       *       .        *'
center_text '.       *   .    *       .    *   .       .'
center_text "$TITLE"
center_text '*       .       *       .       *       .'

sleep 0.2

printf '\n'

type_text "$(border)" 0.002
type_text "$(center_text "$TITLE")" 0.012
type_text "$(border)" 0.002

printf '\n'

type_text "$(center_text '/\_/\\')" 0.008
type_text "$(center_text '( o.o )')" 0.008
type_text "$(center_text '> ^ <')" 0.008

printf '\n'

type_text "$(center_text "$MESSAGE")" 0.012
type_text "$(center_text "$MESSAGE3")" 0.012

printf '\n'

type_text "$(border)" 0.002
type_text "$(center_text "$THANKS")" 0.015
type_text "$(border)" 0.002

printf '\n'

type_text "$(center_text "$EXTRA")" 0.012

printf '\n'

type_text "$(border | tr '=' '-')" 0.002
type_text "$(center_text "$FROM")" 0.02
type_text "$(border | tr '=' '-')" 0.002

printf '\n'

type_text "$(center_text "$ENDING")" 0.012

printf '\n'

type_text "$(border)" 0.002

printf '\n'
