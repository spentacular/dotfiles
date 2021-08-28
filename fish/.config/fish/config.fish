# Remove fish help message on every new session
set fish_greeting

# Keep simpler aliases in a separate file
source ~/.config/fish/aliases.fish

# Main variables because other stuff depends on these
set -xg EDITOR "code-insiders"
set -xg VOLTA_HOME $HOME/.volta

# Add any user custom configs
if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end

# Node Version Manager
fish_add_path $VOLTA_HOME/bin
# Homebrew
fish_add_path -a /opt/homebrew/bin
fish_add_path -a /usr/local/bin
# Local bins
fish_add_path -a ~/bin

# Set node_modules to the end of path
# https://github.com/zeke/add-local-binaries-to-path
set -xg PATH $PATH ./node_modules/.bin
