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

# Only view top level installs
alias ng 'npm list -g --depth=0 2>/dev/null'
alias nl 'npm list --depth=0 2>/dev/null'

# Git Helpers
alias g 'hub'
alias gs 'git status --short --branch'
alias ga 'git add -A .'
alias gc 'git commit'
alias gb 'git branch'
alias gd 'git diff'
alias gp 'git push'
alias gl 'git pull'
alias gt 'git tag'
alias gm 'git merge'
alias gi 'gitignore'
alias gco 'git checkout'

# Misc
alias m 'make'

# Apps
function a ; atom . ; end
function c ; code . ; end