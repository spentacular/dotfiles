function nu -d "Update dependencies for the current package manager"
  argparse --name=nu 'i/interactive' -- $argv
  or return

  set -l manager (__detect)

  if test -n "$_flag_i"
    if test $manager = "yarn"
      yarn upgrade-interactive $argv
    else if $manager = "pnpm"
      pnpm update -i $argv
    end

    return
  end

  if test $manager = "yarn"
    yarn upgrade $argv
  else
    $manager update $argv
  end
end
