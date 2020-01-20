source ~/.config/fish/aliases.fish

if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end

# Add local bin files
set -xg fish_user_paths ~/bin $fish_user_paths

# Set default editor to vscode
set -xg EDITOR "code"

# Go
if test -d ~/go
  # set go workspace path
  set -xg GOPATH ~/go

  # add the go bin path to be able to execute our programs
  set -xg PATH $PATH /usr/local/opt/go/libexec/bin $GOPATH/bin
end

# Rust
if test -d $HOME/.cargo/bin
  set -xg PATH $HOME/.cargo/bin $PATH
end

# Might as well jump (Jump)
if test -x /usr/local/bin/jump
  status --is-interactive; and . (jump shell | psub)
end

# Direnv
if test -x /usr/local/bin/direnv
  eval (direnv hook fish)
end

# FNM - Node Version Manager
if test -x /usr/local/bin/fnm
  fnm env --multi | source
end

# Set node_modules to the end of path
# https://github.com/zeke/add-local-binaries-to-path
set -xg PATH $PATH ./node_modules/.bin

# set -g FZF_LEGACY_KEYBINDINGS 0
# set -g FZF_COMPLETE 0
# set -g FZF_DEFAULT_COMMAND "fd --type file --hidden --exclude '.git' --color=always"
# set -g FZF_FIND_FILE_COMMAND "$FZF_DEFAULT_COMMAND"
# set -g FZF_CD_COMMAND "fd --type directory --follow"
# set -g FZF_CTRL_T_COMMAND "command find -L \$dir -type f 2> /dev/null | sed '1d; s#^\./##'"

# set -gx VOLTA_HOME "$HOME/.volta"
# test -s "$VOLTA_HOME/load.fish"; and source "$VOLTA_HOME/load.fish"

# string match -r ".volta" "$PATH" > /dev/null; or set -gx PATH "$VOLTA_HOME/bin" $PATH
