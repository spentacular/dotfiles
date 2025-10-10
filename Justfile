install:
  stow .

uninstall:
  stow -D .

installmas:
  brew bundle install --file=./Masfile

dumpmas:
  brew bundle dump --force --file=- | grep '^mas' > Masfile

bins:
  chmod +x bin/*
