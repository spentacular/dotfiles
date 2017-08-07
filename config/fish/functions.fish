# Alias hub with git
function git
  hub $argv
end

# Make directory and CD into it
function mcd --description 'Make directory and move into it'
  mkdir -p $argv; and cd $argv
end

# Cleanup .DS_Store files
function dscleanup --description 'Recursively delete .DS_Store files'
  find . -type f -name "*.DS_Store" -ls -delete
end

# Open file in iA Writer
function ia --description 'Open file in iA Writer'
  open $argv -a /Applications/iA\ Writer.app
end

# Single line list all with hidden files
function ll --description 'List contents of directory'
  ls -1a $argv
end

function brewup
  brew update; and brew doctor; and brew outdated; and brew upgrade; and brew cleanup
end

# Recursively delete node_modules
function rmnm
  find . -name "node_modules" -exec rm -rf '{}' +
end