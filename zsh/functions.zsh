# check your ip address
checkip() { dig +short myip.opendns.com @resolver1.opendns.com }

dockip() {
  docker inspect --format '{{ .NetworkSettings.IPAddress }}' "$@"
}

function pkg
{
  if [ -f yarn.lock ]; then
    yarn "$@"
  else
    npm "$@"
  fi
}

function gclean
{
    git fetch -p && git branch -vv | awk '/: gone]/{print $1}' | xargs git branch -D
}

# start a countdown clock in the current window, blocks until it reaches 0.
# uses noti to display a popup notification once the countdown is finished
#
# USAGE:
#   countdown    (start a timer for 25 minutes)
#   countdown 15 (start a timer for 15 minutes)
function countdown
{
    AMOUNT=$1
    if [ -z $AMOUNT ]; then AMOUNT=25 fi

    local now=$(date +%s)
    local end=$((now + $AMOUNT * 60))
    while (( now < end )); do
        printf "%s\r" "$(date -u -j -f %s $((end - now)) +%T)"
        sleep 0.25
        now=$(date +%s)
    done
    echo
    noti -t "Countdown" -m "Countdown is finished!"
}
