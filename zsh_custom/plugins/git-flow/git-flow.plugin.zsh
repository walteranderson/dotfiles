git-checkout-hotfix() {
    git checkout "$(git config --get gitflow.prefix.hotfix)${1}"
}

git-checkout-feature() {
    git checkout "$(git config --get gitflow.prefix.feature)${1}"
}

git-checkout-release() {
    git checkout "$(git config --get gitflow.prefix.release)${1}"
}

git-checkout-support() {
    git checkout "$(git config --get gitflow.prefix.support)${1}"
}

alias gcm='git checkout $(git config --get gitflow.branch.master)'
alias gcd='git checkout $(git config --get gitflow.branch.develop)'
alias gch='git-checkout-hotfix'
alias gcf='git-checkout-feature'
alias gcr='git-checkout-release'
alias gcsp='git-checkout-support'

alias gff='git flow feature'
alias gffh='git flow feature help'
alias gffs='git flow feature start'
alias gfff='git flow feature finish'
alias gffp='git flow feature publish'
alias gfft='git flow feature track'
alias gffd='git flow feature diff'
alias gffr='git flow feature rebase'
alias gffri='git flow feature rebase -i'
alias gffc='git flow feature checkout'
alias gffpl='git flow feature pull'

alias gfr='git flow release'
alias gfrh='git flow release help'
alias gfrs='git flow release start'
alias gfrf='git flow release finish'
alias gfrfn='git flow release finish -n'
alias gfrfm='git flow release finish -m'
alias gfrp='git flow release publish'
alias gfrt='git flow release track'

alias gfh='git flow hotfix'
alias gfhh='git flow hotfix help'
alias gfhs='git flow hotfix start'
alias gfhf='git flow hotfix finish'
alias gfhfn='git flow hotfix finish -n'
alias gfrfm='git flow hotfix finish -m'

alias gfs='git flow support'
alias gfsh='git flow support help'
alias gfss'git flow support start'

alias gfv='git flow version'
