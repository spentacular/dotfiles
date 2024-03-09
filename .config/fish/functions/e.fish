function e -d "Open in default editor"
  if count $argv > /dev/null
    # $EDITOR $argv
    $VISUAL $argv
  else
    $VISUAL .
  end
end
