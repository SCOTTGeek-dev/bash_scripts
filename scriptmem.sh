mem=$( free -h | grep 'Mem:' | tr -s " " | cut -d " " -f 3)
proc=$(ps -e -o pid,%mem --sort=-%mem | head -n 2)

echo -e "the process using highest memory is \n $proc"

echo "you are using $mem in RAM"
