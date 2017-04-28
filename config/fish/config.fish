# Configs
set -xg PATH $PATH ./node_modules/.bin

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.asdf/asdf.fish

status --is-interactive; and . (jump shell | psub)