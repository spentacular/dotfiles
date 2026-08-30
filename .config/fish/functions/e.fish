function e --wraps='open -b com.microsoft.VSCode' --description "Open in default editor"
  if count $argv > /dev/null
    # $EDITOR $argv
    code $argv
  else
    code .
  end
end
