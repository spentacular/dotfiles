# Directory Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Git
alias g 'git'
alias gs 'git status --short --branch'
alias ga 'git add -A .'
alias gp 'git push'
alias gl 'git pull'
alias gm 'git merge'
alias gd 'git diff'
alias gc 'git commit'
alias gb 'git branch'
alias gt 'git tag'
abbr gco 'git checkout'

# Yarn
# alias r 'yarn run'
alias s 'yarn start'
alias d 'yarn run dev'
alias b 'yarn run build'
alias t 'yarn run test'
