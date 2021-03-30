function e -d "Open in default editor"
  if count $argv > /dev/null
    $EDITOR $argv
  else
    $EDITOR .
  end
end
