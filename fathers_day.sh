#!/bin/bash

clear

cols=$(tput cols)
rows=$(tput lines)

for frame in {1..25}; do
    clear

    for i in {1..45}; do
        x=$((RANDOM % cols + 1))
        y=$((RANDOM % (rows - 2) + 1))

        printf "\033[${y};${x}H"

        case $((RANDOM % 5)) in
            0) printf "\033[31m*\033[0m" ;;
            1) printf "\033[33m.\033[0m" ;;
            2) printf "\033[32m+\033[0m" ;;
            3) printf "\033[34mo\033[0m" ;;
            4) printf "\033[35mx\033[0m" ;;
        esac
    done

    sleep 0.08
done

clear

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

       *    .    *    .    *    .    *    .    *
    .     *    .     *    .     *    .     *    .
       *    .    *    .    *    .    *    .    *

                  Thank you, Dad!!

       *    .    *    .    *    .    *    .    *
    .     *    .     *    .     *    .     *    .
       *    .    *    .    *    .    *    .    *

==============================================================

EOF

printf '\n'
printf '                 Have an awesome day!\n'
printf '\n'

sleep 0.5

for frame in {1..12}; do
    for i in {1..12}; do
        x=$((RANDOM % cols + 1))
        y=$((RANDOM % rows + 1))

        printf "\033[${y};${x}H"

        case $((RANDOM % 5)) in
            0) printf "\033[31m*\033[0m" ;;
            1) printf "\033[33m.\033[0m" ;;
            2) printf "\033[32m+\033[0m" ;;
            3) printf "\033[34mo\033[0m" ;;
            4) printf "\033[35mx\033[0m" ;;
        esac
    done

    sleep 0.1
done

printf '\033[999;1H'
