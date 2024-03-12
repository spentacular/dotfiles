set -q MY_ABBRS_INITIALIZED; and return

# Git
abbr -a -- g git
abbr -a -- gs 'git st'
abbr -a -- ga 'git add -A .'
abbr -a -- gp 'git push'
abbr -a -- gc 'git commit -m'
abbr -a -- gb 'git branch'
abbr -a -- gi 'gignore'

# Yarn
abbr -a -- s 'nr start'
abbr -a -- b 'nr build'
abbr -a -- t 'nr test'

# Misc
abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr --add !! --position anywhere --function last_history_item

# prevents rerunning
set -g MY_ABBRS_INITIALIZED true
