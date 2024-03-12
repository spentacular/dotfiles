# Cleanup .DS_Store files
function dscleanup -d "Recursively delete .DS_Store files"
  if type -q fd
    fd -H '^\.DS_Store$' -tf -X rm
  else
    echo "fd needs to be installed"
  end
end
