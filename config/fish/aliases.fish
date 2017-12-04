# Directory Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

abbr cask 'brew cask'

# Scripts
alias r 'yarn run'
alias s 'yarn start'
alias d 'yarn run dev'
alias b 'yarn run build'
alias t 'yarn run test'

# Only view top level installs
alias ng 'npm list -g --depth=0 2>/dev/null'
alias nl 'npm list --depth=0 2>/dev/null'

# Git Helpers
abbr g 'hub'
abbr gs 'git status --short --branch'
abbr ga 'git add -A .'
abbr gc 'git commit'
abbr gb 'git branch'
abbr gd 'git diff'
abbr gp 'git push'
abbr gl 'git pull'
abbr gt 'git tag'
abbr gm 'git merge'
abbr gi 'gitignore'
abbr gco 'git checkout'

# Misc
alias m 'make'

# Apps
function a ; atom . ; end
function c ; code . ; end