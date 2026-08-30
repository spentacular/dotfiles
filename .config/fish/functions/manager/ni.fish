function ni -d "Install dependencies for the current package manager"
  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  command $manager install $argv
end
