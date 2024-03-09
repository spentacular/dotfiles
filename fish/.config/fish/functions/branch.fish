function branch -d "Fuzzy-find and checkout a branch"
  if count $argv > /dev/null
    command git checkout $argv
  else
    git branch \
      | grep -v "^\*" \
      | fzy \
      | xargs git switch
  end
end
