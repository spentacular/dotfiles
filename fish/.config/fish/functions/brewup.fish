# Update Homebrew
function brewup -d "Update homebrew and cleanup outdated files"
  brew update; and brew doctor; and brew outdated; and brew upgrade; and brew cleanup
end