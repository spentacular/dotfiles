# if status is-interactive
# Git
# alias g 'git'
# alias gs 'git status --short --branch'
# alias ga 'git add -A .'
# alias gp 'git push'
# alias gl 'git pull'
# alias gm 'git merge'
# alias gd 'git diff'
# alias gc 'git commit'
# alias gb 'git branch'
# alias gt 'git tag'

# Yarn
alias s 'yarn start'
alias d 'yarn run dev'
alias b 'yarn run build'
alias t 'yarn run test'
# end

# abbr g 'git'
# abbr gs 'git st'
# abbr ga 'git add -A .'
# abbr gp 'git push'
# abbr gc 'git commit -am'

# abbr --add dotdot --regex '^\.\.+$' --function multicd

# function subcommand_abbr
#   set -l cmd "$argv[1]"
#   set -l short "$argv[2]"
#   set -l long "$argv[3]"

#   # Check that these strings are safe, since we're going to eval. 👺
#   if not string match --regex --quiet '^[a-z]*$' "$short"
#     or not string match --regex --quiet '^[a-z- ]*$' "$long"
#     echo "Scary unsupported alias or expansion $short $long"; exit 1; 
#   end

#   set -l abbr_temp_fn_name (string join "_" "abbr" "$cmd" "$short")
#   # Subcommand arg expanesion via commandline -tokenize + abbr --position anywhere
#   # thx lgarron for inspiration: https://github.com/lgarron/dotfiles/blob/2bc3e0282b/dotfiles/fish/.config/fish/abbr.fish & https://github.com/lgarron/dotfiles/blob/main/dotfiles/fish/.config/fish/dev.fish
#   # https://www.reddit.com/r/fishshell/comments/16s0bsi/leveraging_abbr_for_git_aliases/
#   set -l abbr_temp_fn "function $abbr_temp_fn_name
#     set --local tokens (commandline --tokenize)
#     if test \$tokens[1] = \"$cmd\"
#       echo $long
#     else
#       echo $short
#     end; 
#   end; 
#   abbr --add $short --position anywhere --function $abbr_temp_fn_name"
#   eval "$abbr_temp_fn"
# end

# subcommand_abbr git c "commit -am"
# subcommand_abbr git cm "commit -am"
# subcommand_abbr git co "checkout"
# subcommand_abbr git s "status"
# subcommand_abbr git amend "commit --amend --all --no-edit"
