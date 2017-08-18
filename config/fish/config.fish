# Go
set -xg GOPATH ~/.go
set PATH $PATH $GOPATH/bin

# Set node_modules to the end of path
# https://github.com/zeke/add-local-binaries-to-path
set -xg PATH $PATH ./node_modules/.bin

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.asdf/asdf.fish

status --is-interactive; and . (jump shell | psub)

if test -x /usr/local/bin/direnv
  eval (direnv hook fish)
end