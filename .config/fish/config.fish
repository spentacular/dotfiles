# These came from the following file:
# eval ($HOMEBREW_PREFIX/bin/brew shellenv)
if test -e /opt/homebrew/bin/brew
  set -gx HOMEBREW_PREFIX "/opt/homebrew";
  set -gx HOMEBREW_CELLAR "/opt/homebrew/Cellar";
  set -gx HOMEBREW_REPOSITORY "/opt/homebrew";
end

# Add homebrew completions
if test -e $HOMEBREW_PREFIX/share/fish/completions
  set -a fish_complete_path $HOMEBREW_PREFIX/share/fish/completions
  set -a fish_complete_path $HOMEBREW_PREFIX/share/fish/vendor_completions.d
end

set -gx HOMEBREW_NO_ANALYTICS 1

# Variables for specific tools
set -gx VOLTA_HOME "$HOME/.volta"
set -gx PNPM_HOME "$HOME/Library/pnpm"
set -gx BUN_INSTALL "$HOME/.bun"

# Path setup
fish_add_path -p /opt/homebrew/bin /opt/homebrew/sbin /usr/local/bin
fish_add_path -a ~/bin
fish_add_path -a $VOLTA_HOME/bin
fish_add_path -a $PNPM_HOME
fish_add_path -a $BUN_INSTALL/bin

# Add function subdirectories to fish_function_path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# Editor variables
set -gx PAGER less
set -gx VISUAL code-insiders
set -gx EDITOR hx

# disable new user greeting
set fish_greeting

# Add any computer specific configs
if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end
