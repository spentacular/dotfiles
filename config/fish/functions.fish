# Alias hub with git
function git
  hub $argv
end

# Make directory and CD into it
function mcd
  mkdir -p $argv; and cd $argv
end

# Cleanup .DS_Store files
function dscleanup
  find . -type f -name "*.DS_Store" -ls -delete
end

# Open file in iA Writer
function ia
  open $argv -a /Applications/iA\ Writer.app
end