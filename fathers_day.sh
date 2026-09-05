#!/bin/bash

clear

cols=$(tput cols)
confetti_rows=5
amount=15

for ((i=0; i<amount; i++)); do
    x[$i]=$((RANDOM % cols + 1))
    y[$i]=$((RANDOM % confetti_rows + 1))
done

printf '\n'
printf '        *        .       *       .        *\n'
printf '   .       *   .    *       .    *   .       *\n'
printf '       *       Happy Father'"'"'s Day!       *\n'
printf '   *       .       *       .       *       .\n'
printf '\n'

sleep 0.5

cat << 'EOF'

==============================================================
                    Happy Father's Day!
==============================================================

                         /\_/\
                        ( o.o )
                         > ^ <

           Thank you for everything you've done



==============================================================

                  Thank you, Dad!!

==============================================================

                 Have an awesome day!

==============================================================

EOF

while true; do
    for ((i=0; i<amount; i++)); do
        printf "\033[${y[$i]};${x[$i]}H "

        y[$i]=$((y[$i] + 1))

        if [ ${y[$i]} -gt $confetti_rows ]; then
            y[$i]=1
            x[$i]=$((RANDOM % cols + 1))
        fi

        printf "\033[${y[$i]};${x[$i]}H"

        case $((i % 6)) in
            0) printf "\033[31m*\033[0m" ;;
            1) printf "\033[33m.\033[0m" ;;
            2) printf "\033[32m+\033[0m" ;;
            3) printf "\033[34mo\033[0m" ;;
            4) printf "\033[35mx\033[0m" ;;
            5) printf "\033[36m#\033[0m" ;;
        esac
    done

    sleep 0.15
done
