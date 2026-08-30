function nr -d "Run a script from package.json for the current package manager"
  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  if count $argv > /dev/null
    command $manager $argv
  else
    cat package.json | \
      yq '.scripts | sort_keys(.) | keys | join(" ")' | \
      xargs gum filter | \
      xargs $manager run
  end
end
