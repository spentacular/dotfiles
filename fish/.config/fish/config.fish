# Remove fish help message on every new session
# set fish_greeting

# Keep simpler aliases in a separate file
source ~/.config/fish/aliases.fish
# source ~/.config/fish/functions.fish

# Main variables because other stuff depends on these
# set -gx EDITOR "code-insiders --wait"
# set -gx VOLTA_HOME "$HOME/.volta"
# set -gx PNPM_HOME "$HOME/Library/pnpm"
# set -gx BUN_INSTALL "$HOME/.bun"

# Add any user custom configs
if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end

# fish_add_path -p /opt/homebrew/bin /usr/local/bin ~/bin
# fish_add_path -a $VOLTA_HOME/bin
# fish_add_path -a $PNPM_HOME
# fish_add_path -a $BUN_INSTALL/bin

# if type -q zoxide
#   zoxide init fish | source
# end

# Set node_modules to the end of path
# https://github.com/zeke/add-local-binaries-to-path
# set -gx PATH $PATH ./node_modules/.bin
# fish_add_path -a ./node_modules/.bin
