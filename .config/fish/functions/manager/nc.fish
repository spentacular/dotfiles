function nc -d "Run create command for the current package manager"
  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  command $manager create $argv
end
