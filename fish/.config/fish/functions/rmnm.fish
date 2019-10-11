# Recursively delete node_modules
function rmnm -d "Recursively delete node_modules"
  find . -name "node_modules" -exec rm -rf '{}' +
end