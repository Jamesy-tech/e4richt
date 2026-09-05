#!/bin/bash

clear

cols=$(tput cols)
rows=$(tput lines)

for ((i=0; i<35; i++)); do
    x[$i]=$((RANDOM % cols + 1))
    y[$i]=$((RANDOM % rows + 1))
    speed[$i]=$((RANDOM % 3 + 1))
done

printf '\n'
printf '        *        .       *       .        *\n'
printf '   .       *   .    *       .    *   .       *\n'
printf '       *       Happy Father'"'"'s Day!       *\n'
printf '   *       .       *       .       *       .\n'
printf '\n'

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
    for ((i=0; i<35; i++)); do
        y[$i]=$((y[$i] + speed[$i]))

        if [ ${y[$i]} -gt $rows ]; then
            y[$i]=1
            x[$i]=$((RANDOM % cols + 1))
            speed[$i]=$((RANDOM % 3 + 1))
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

    sleep 0.08
done
