function na -d "Add a dependency for the current package manager"
  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  if test $manager = "npm"
    command npm install $argv
  else
    command $manager add $argv
  end
end
