function ni -d "Install dependencies for the current package manager"
  set -l manager (__detect)
  $manager install $argv
end
