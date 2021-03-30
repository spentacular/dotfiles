function _fnm_autoload_hook --on-variable PWD
  status --is-command-substitution; and return
  if test -f .node-version -o -f .nvmrc
    fnm use
  end
end
