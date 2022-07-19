PACKAGES := `echo */`

brew:
  stow brew

install:
  stow -t ~ {{PACKAGES}} --no-folding

uninstall:
  stow -Dt ~ {{PACKAGES}}

list:
  @echo {{PACKAGES}}

bins:
  chmod +x bin/bin/*
  chmod +x git/bin/*
