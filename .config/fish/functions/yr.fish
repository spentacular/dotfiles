function yr
  if count $argv > /dev/null
    yarn run $argv
  else
    cat package.json | \
      yq '.scripts | sort_keys(.) | keys | join(" ")' | \
      xargs gum filter | \
      xargs yarn run
  end
end
