while true
do
  date_fmt=$(date +'%a %b %d %Y')
  time_fmt=$(date +'%I:%M %p')
  battery_status=$(cat /sys/class/power_supply/BAT0/status)

  battery_info=$(upower --show-info $(upower --enumerate |\
    grep 'BAT') |\
    egrep "percentage" |\
    awk '{print $2}')

  echo "$battery_status $battery_info | $date_fmt | $time_fmt"

  sleep 1
done
