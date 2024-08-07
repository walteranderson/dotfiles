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

# remove all branches that don't have an origin
function gclean
{
    git fetch -p && for branch in $(git for-each-ref --format '%(refname) %(upstream:track)' refs/heads | awk '$2 == "[gone]" {sub("refs/heads/", "", $1); print $1}'); do git branch -D $branch; done
}
