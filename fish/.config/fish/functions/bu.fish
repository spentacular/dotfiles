function bu --description "Uninstall brew plugin"
  set -l plugin (brew leaves | fzy)

  if not test (count $plugin) = 0
    brew uninstall "$plugin"
  end
end
