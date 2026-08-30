# These came from the following file:
# eval (brew shellenv)
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
set -gx BUN_INSTALL "$HOME/.bun"
set -gx STARSHIP_CONFIG "$XDG_CONFIG_HOME/starship/starship.toml"

# Path setup
set -g prepath (
  path filter \
    /opt/homebrew/bin \
    /opt/homebrew/sbin \
    /usr/local/bin \
    $HOME/bin \
    $BUN_INSTALL/bin \
    $HOME/.cargo/bin \
    $HOME/.lmstudio/bin
)

fish_add_path --prepend --move $prepath

# Add function subdirectories to fish_function_path
set fish_function_path (path resolve $__fish_config_dir/functions/*/) $fish_function_path

# Editor variables
set -gx PAGER less
set -gx VISUAL zed
set -gx EDITOR hx

# Shared variables for internal functions
set -g ignored_git_dirs main master next

# Add any computer specific configs
if test -e "$HOME/.extra.fish";
  source ~/.extra.fish
end

# if type -q starship
#   starship init fish | source
# end
