
# Docker
dock() {
    PREV_PATH="${PWD}"
    cd ~/projects/devops/docker
    docker-compose $@
    cd "${PREV_PATH}"
}

# Alternative dock command syntax: alias dock="cd ~/projects/devops/docker && clear && docker-compose $@"

alias dock-stop-apiworker="dock stop atlas-api-worker"
alias dock-start-apiworker="dock start atlas-api-worker"

# SSH into containers
alias ssh-allit="dock exec allit entrypoint.bash bash"
alias ssh-atlas-api="dock exec atlas-api entrypoint.bash bash"
alias ssh-atlas-ui="dock exec atlas-ui entrypoint.bash bash"
alias ssh-atlas-shared="dock exec allit entrypoint.bash bash" # cd /var/www/atlas_shared
alias ssh-boost="dock exec boost entrypoint.bash bash"
alias ssh-onnitwholesale="dock exec onnitwholesale entrypoint.bash bash"


# SSH into prod EC2 instances

alias ssh-prod-app-1a-4="ssh -i ~/.ssh/id_rsa wanderson@app-1a-4.onnit.io"
alias ssh-prod-appworker01="ssh -i ~/.ssh/id_rsa wanderson@appworker01.onnit.io"

# PHPUnit
alias phpunit-allit="dock exec allit entrypoint.bash bash -c \"vendor/bin/phpunit -c test -d error_reporting=2147483647 -d display_errors=1\""
alias phpunit-atlas-api="dock exec atlas-api entrypoint.bash bash -c \"vendor/bin/phpunit -c tests\""
alias phpunit-atlas-shared="dock exec allit entrypoint.bash bash -c 'cd /var/www/atlas_shared && vendor/bin/phpunit -c tests/ --exclude-group=database'"

# Build projects
alias build-allit="dock exec allit entrypoint.bash bash -c \"composer install && cd onnit && yarn build\""
alias build-atlas-api="dock exec atlas-api entrypoint.bash bash -c \"composer install\""
alias build-atlas-shared="dock exec allit entrypoint.bash bash -c \"cd /var/www/atlas_shared && composer install\""
alias build-all="build-allit && build-atlas-shared && build-atlas-api"

# AWS
aws-login() {
    aws ecr get-login --no-include-email --region us-west-2
}

# Database refresh
alias db-cre="export LOCAL_DB_NAME=10460_onnit; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail ) && dock exec atlas-api entrypoint.bash bash -c \"php artisan db:seed && php artisan migrate\" && db-maintenance"
alias db-maintenance="export LOCAL_DB_NAME=maintenance; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-wholesale="export LOCAL_DB_NAME=onnitwholesale; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-boost="export LOCAL_DB_NAME=boost; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"

alias db-wp-academy="export LOCAL_DB_NAME=wp_academygym; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-academy="export LOCAL_DB_NAME=academy; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"

