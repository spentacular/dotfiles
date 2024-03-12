function nc -d "Run create command for the current package manager"
  set -l manager (__detect)
  $manager create $argv
end
