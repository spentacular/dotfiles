# Directory Nav
function ..    ; cd .. ; end
function ...   ; cd ../.. ; end
function ....  ; cd ../../.. ; end
function ..... ; cd ../../../.. ; end

# Git
alias g 'hub'
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
alias r 'yarn run'
alias s 'yarn start'
alias d 'yarn run dev'
alias b 'yarn run build'
alias t 'yarn run test'

# Misc
alias mit 'license-up mit Spencer Hamm spencerhamm.com'
alias cask 'brew cask'
alias services 'brew services'
alias chmox='chmod +x'
alias fs="stat -f \"%z bytes\""

# Use modern make
# https://github.com/tj/mmake
if test -x $GOPATH/bin/mmake
  alias make=mmake
end
