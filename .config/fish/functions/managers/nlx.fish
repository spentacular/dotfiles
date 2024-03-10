function ni -d "Download and execute current package manager"
  set -l manager (__detect)

  if test $manager = "pnpm"
    pnpm dlx $argv
  else if $manager = "bun"
    bunx $argv
  else
    npx add $argv
  end
end
