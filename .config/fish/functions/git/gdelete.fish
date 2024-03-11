function gdelete -d "Delete selected branches"
  git branch --format="%(refname:short)" | \
    grep -vE "(main|master)" | \
    gum choose --no-limit $branches | \
    xargs git branch -D
end
