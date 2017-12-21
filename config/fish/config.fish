# Go
# set go workspace path
set -xg GOPATH ~/.go
# add the go bin path to be able to execute our programs
set -x PATH $PATH /usr/local/opt/go/libexec/bin $GOPATH/bin

# Set node_modules to the end of path
# https://github.com/zeke/add-local-binaries-to-path
set -xg PATH $PATH ./node_modules/.bin

source ~/.config/fish/aliases.fish
source ~/.config/fish/functions.fish
source ~/.asdf/asdf.fish

status --is-interactive; and . (jump shell | psub)