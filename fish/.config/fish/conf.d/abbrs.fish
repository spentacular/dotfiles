set -q MY_ABBRS_INITIALIZED; and return

# Git
abbr -a -- g git
abbr -a -- gs 'git st'
abbr -a -- ga 'git add -A .'
abbr -a -- gp 'git push'
abbr -a -- gc 'git commit -am'
abbr -a -- gb 'git branch'

# Yarn
abbr -a -- s 'yarn start'
abbr -a -- b 'yarn build'
abbr -a -- t 'yarn test'

# Misc
abbr --add dotdot --regex '^\.\.+$' --function multicd
abbr --add !! --position anywhere --function last_history_item

# prevents rerunning
set -g MY_ABBRS_INITIALIZED true
