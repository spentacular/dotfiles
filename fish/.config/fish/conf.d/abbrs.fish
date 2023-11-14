set -q MY_ABBRS_INITIALIZED; and return

# Git
abbr -a -- g git
abbr -a -- gs 'git st'
abbr -a -- ga 'git add -A .'
abbr -a -- gp 'git push'
abbr -a -- gc 'git commit -am'
abbr -a -- gb 'git branch'

# Misc
abbr --add dotdot --regex '^\.\.+$' --function multicd

set -g MY_ABBRS_INITIALIZED true
