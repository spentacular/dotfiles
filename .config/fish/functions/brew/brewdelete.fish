function brewdelete -d "Delete installed homebrew formulae"
  argparse --name=nu 'a/all' -- $argv
  or return

  if test -n "$_flag_a"
    brew list | gum choose --no-limit | xargs brew uninstall
  else
    brew leaves | gum choose --no-limit | xargs brew uninstall
  end
end
