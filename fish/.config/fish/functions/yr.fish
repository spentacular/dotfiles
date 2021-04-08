function yr
  if count $argv > /dev/null
    yarn run $argv
  else
    set -l keys (cat package.json | jq '.scripts | keys | @sh' | tr ' ' '\n' | sed -e 's/"//g' | sed -e "s/'//g")
    printf '%s\n' $keys | fzf --ansi --reverse --no-info | xargs yarn run
  end
end
