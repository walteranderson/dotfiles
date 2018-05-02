
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
alias ssh-allit="dock exec allit bash"
alias ssh-atlas-api="dock exec atlas-api bash"
alias ssh-atlas-ui="dock exec atlas-ui bash"
alias ssh-atlas-shared="dock exec allit bash" # cd /var/www/atlas_shared
alias ssh-boost="dock exec boost bash"
alias ssh-onnitwholesale="dock exec onnitwholesale bash"

# SSH into prod EC2 instances

alias ssh-prod-app-1a-4="ssh -i ~/.ssh/id_rsa wanderson@app-1a-4.onnit.io"

# PHPUnit
alias phpunit-allit="dock exec allit bash -c \"vendor/bin/phpunit -c test -d error_reporting=2147483647 -d display_errors=1\""
alias phpunit-atlas-api="dock exec atlas-api bash -c \"vendor/bin/phpunit -c tests\""
alias phpunit-atlas-shared="dock exec allit bash -c 'cd /var/www/atlas_shared && vendor/bin/phpunit -c tests/ --exclude-group=database'"

# Build projects
alias build-allit="dock exec allit bash -c \"composer install && cd onnit && yarn build\""
alias build-atlas-api="dock exec atlas-api bash -c \"composer install\""
alias build-atlas-shared="dock exec allit bash -c \"cd /var/www/atlas_shared && composer install\""
alias build-all="build-allit && build-atlas-shared && build-atlas-api"

# AWS
alias aws-login="$(aws ecr get-login --no-include-email --region us-east-1)"

# Database refresh
alias db-cre="export LOCAL_DB_NAME=10460_onnit; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail ) && dock exec atlas-api bash -c \"php artisan db:seed && php artisan migrate\" && db-maintenance"
alias db-maintenance="export LOCAL_DB_NAME=maintenance; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-wholesale="export LOCAL_DB_NAME=onnitwholesale; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-boost="export LOCAL_DB_NAME=boost; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"

alias db-wp-academy="export LOCAL_DB_NAME=wp_academygym; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"
alias db-academy="export LOCAL_DB_NAME=academy; ( curl -sSL http://devdata.onnit.io/mysql/local-import.bash | bash -eo pipefail )"

