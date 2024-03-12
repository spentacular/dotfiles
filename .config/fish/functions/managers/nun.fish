function nun -d "Uninstall dependencies for the current package manager"
  set -l manager (__detect)

  if test $manager = "npm"
    npm uninstall $argv
  else
    $manager remove $argv
  end
end
