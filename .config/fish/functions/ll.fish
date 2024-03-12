# Single line list all with hidden files
function ll -d "List contents of directory"
  if type -q exa
    eza -1 --group-directories-first $argv
  else
    ls -1a $argv
  end
end
