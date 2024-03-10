function nb -d "Binary for the current package manager"
  set -l manager (__detect)
  $manager $argv
end
