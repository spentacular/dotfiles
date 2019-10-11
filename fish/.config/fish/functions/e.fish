function e -d "Open in code-insiders"
  if count $argv > /dev/null
    code-insiders $argv
  else
    code-insiders .
  end
end
