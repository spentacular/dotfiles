# Directory Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Yarn
abbr yr 'yarn run'
abbr ys 'yarn start'
abbr yd 'yarn run dev'
abbr yb 'yarn run build'
abbr yt 'yarn run test'

# Git
alias g 'hub'
alias gs 'git status --short --branch'
alias ga 'git add -A .'
alias gp 'git push'
alias gl 'git pull'
alias gm 'git merge'
abbr gd 'git diff'
abbr gi 'gitignore'
abbr gc 'git commit'
abbr gb 'git branch'
abbr gt 'git tag'
abbr gco 'git checkout'

# Misc
alias mit 'license-up mit Spencer Hamm spencerhamm.com'
abbr cask 'brew cask'

# Apps
function a ; atom . ; end
function c ; code . ; end