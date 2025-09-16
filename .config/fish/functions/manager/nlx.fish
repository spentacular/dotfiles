function ni -d "Download and execute current package manager"
  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  if test $manager = "pnpm"
    command pnpm dlx $argv
  else if $manager = "bun"
    command bunx $argv
  else
    command npx add $argv
  end
end
