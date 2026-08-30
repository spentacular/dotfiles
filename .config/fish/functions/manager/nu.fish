function nu -d "Update dependencies for the current package manager"
  argparse --name=nu 'i/interactive' -- $argv
  or return

  set -l manager (__detect_manager)
  if test $status -eq 1
    echo $manager
    return
  end

  if test -n "$_flag_i"
    if test $manager = "yarn"
      command yarn upgrade-interactive $argv
    else if $manager = "pnpm"
      command pnpm update -i $argv
    end

    return
  end

  if test $manager = "yarn"
    command yarn upgrade $argv
  else
    command $manager update $argv
  end
end
