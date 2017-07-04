# Directory Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

alias cask 'brew cask'

# Scripts
alias r 'npm run'
alias s 'npm start'
alias d 'npm run dev'
alias b 'npm run build'
alias t 'npm run test'

# General
alias ya 'npm add'
alias yd 'npm add --dev'
alias yg 'npm global add'

# Only view top level installs
alias ng 'npm list -g --depth=0 2>/dev/null'
alias nl 'npm list --depth=0 2>/dev/null'

# Git Helpers
alias g 'git'
alias gs 'git status --short --branch'
alias ga 'git add -A .'
alias gc 'git commit'
alias gb 'git branch'
alias gd 'git diff'
alias gp 'git push'
alias gl 'git pull'
alias gt 'git tag'
alias gm 'git merge'
alias gco 'git checkout'
alias gi 'gitignore'

# Apps
function a ; atom-beta . ; end
function c ; code . ; end