function vscode --wraps='open -b com.microsoft.VSCode' --description 'alias vscode open -b com.microsoft.VSCode'
  # https://github.com/fish-shell/fish-shell/issues/9127
  if test $VISUAL = 'code-insiders'
    open -b com.microsoft.VSCodeInsiders $argv
  else
    open -b com.microsoft.VSCode $argv
  end
end
