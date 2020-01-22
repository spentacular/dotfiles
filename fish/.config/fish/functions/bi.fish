function bi --description "Install brew plugins"
  set -l plugin (brew search | fzy)

  if not test (count $plugin) = 0
    brew install "$plugin"
  end
end
