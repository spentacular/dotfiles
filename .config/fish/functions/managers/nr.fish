function nr -d "Run a script from package.json for the current package manager"
  set -l manager (__detect)

  if count $argv > /dev/null
    $manager $argv
  else
    cat package.json | \
      yq '.scripts | sort_keys(.) | keys | join(" ")' | \
      xargs gum filter | \
      xargs $manager run
  end
end
