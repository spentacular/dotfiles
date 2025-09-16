function gdelete -d "Delete selected branches"
  git branch --format="%(refname:short)" |
    egrep -v "$(string join '|' $ignored_git_dirs)" |
    gum choose --no-limit $branches |
    xargs git branch -D
end
