# Get the Git branch
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ [\1]/'
}

# Custom bash prompt
export PS1="\[$(tput bold)\]\[$(tput setaf 5)\]→ \[$(tput setaf 6)\]\W\[$(tput setaf 3)\]\$(parse_git_branch) \[$(tput sgr0)\]"

export PATH=/opt/local/bin:/opt/local/sbin:${PATH}

# Aliases
source ~/.aliases

# Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# rbenv
if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi

# FUNCTIONS
mcd() {
  mkdir -p "$1" && cd "$1";
}
