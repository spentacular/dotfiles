function rmnm -d "Recursively delete node_modules"
  if type -q fd
    fd node_modules -I -t d -E "**/node_modules/**/node_modules" -X rm -rf
  else
    echo "fd needs to be installed"
  end
end
