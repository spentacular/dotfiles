function branch -d "Fuzzy-find and checkout a branch"
  if count $argv > /dev/null
    git checkout $argv
  else
    git branch |
      grep -v "^\*" |
      xargs gum filter |
      xargs git switch
  end
end
