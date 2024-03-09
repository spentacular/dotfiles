# Cleanup .DS_Store files
function dscleanup -d "Recursively delete .DS_Store files"
  find . -type f -name "*.DS_Store" -ls -delete
end