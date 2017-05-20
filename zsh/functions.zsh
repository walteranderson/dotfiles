# tail the latest log file in givingday
function gdlog {
  logs=($(ls ~/code/givingday/storage/logs/*.log))
  tail -f ${logs[-1]}
}

# check your ip address
checkip() { dig +short myip.opendns.com @resolver1.opendns.com }
