function nun -d "Uninstall dependencies for the current package manager"
  set -l manager (__detect_manager)

  if test $manager = "npm"
    command npm uninstall $argv
  else
    command $manager remove $argv
  end
end
