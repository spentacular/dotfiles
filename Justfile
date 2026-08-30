basepath := env_var_or_default('HOME', '~') / ".homebrew"
brew := "--brew --file " + basepath / "Brewfile"
cask := "--cask --file " + basepath / "Caskfile"
mas := "--mas --file " + basepath / "Masfile"

default:
  @just --list

stow:
  stow .

unstow:
  stow -D .

bins:
  chmod +x bin/*

#####################################################################
_install target:
  brew bundle install {{target}}

[group('install')]
install: install-brew install-cask install-mas

[group('install')]
install-brew: (_install brew)

[group('install')]
install-cask: (_install cask)

[group('install')]
install-mas: (_install mas)

#####################################################################
_dump target:
  brew bundle dump --force {{target}}

[group('dump')]
dump: dump-brew dump-cask dump-mas

[group('dump')]
dump-brew: (_dump brew)

[group('dump')]
dump-cask: (_dump cask)

[group('dump')]
dump-mas: (_dump mas)

#####################################################################
_cleanup target:
  brew bundle cleanup {{target}}

[group('cleanup')]
cleanup-brew: (_cleanup brew)

[group('cleanup')]
cleanup-cask: (_cleanup cask)

[group('cleanup')]
cleanup-mas: (_cleanup mas)

#####################################################################
# https://pawelgrzybek.com/change-macos-user-preferences-via-command-line/
[group('defaults')]
defaults-list:
  defaults domains | tr ',' '\n'
