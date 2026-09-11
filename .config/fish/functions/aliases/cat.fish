function cat --wraps="bat" -d "Wrapper around cat"
  if type -q bat
    bat -p $argv
  else
    cat
  end
end
