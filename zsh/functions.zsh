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
