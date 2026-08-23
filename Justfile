brewfile := "~/.homebrew/Brewfile"
caskfile := "~/.homebrew/Caskfile"
masfile := "~/.homebrew/Masfile"

stow:
  stow .

unstow:
  stow -D .

bins:
  chmod +x bin/*

[group('install')]
install: install-brew install-cask install-mas

[group('install')]
install-brew:
  brew bundle install --file {{brewfile}}

[group('install')]
install-cask:
  brew bundle install --file {{caskfile}}

[group('install')]
install-mas:
  brew bundle install --file {{masfile}}

[group('dump')]
dump: dump-brew dump-cask dump-mas

[group('dump')]
dump-brew:
  brew bundle dump --brew --force --file {{brewfile}}

[group('dump')]
dump-cask:
  brew bundle dump --cask --force --file {{caskfile}}

[group('dump')]
dump-mas:
  brew bundle dump --mas --force --file {{masfile}}

[group('cleanup')]
cleanup-brew:
  brew bundle cleanup --brew --file {{brewfile}}

[group('cleanup')]
cleanup-cask:
  brew bundle cleanup --cask --file {{caskfile}}

[group('cleanup')]
cleanup-mas:
  brew bundle cleanup --mas --file {{masfile}}
