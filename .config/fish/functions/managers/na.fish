function na -d "Add a dependency for the current package manager"
  set -l manager (__detect)

  if test $manager = "npm"
    npm install $argv
  else
    $manager add $argv
  end
end
