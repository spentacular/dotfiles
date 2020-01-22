# Update Homebrew
function brewup -d "Update homebrew and cleanup outdated files"
  brew update
  brew doctor
  brew outdated
  brew upgrade
  brew cleanup
end
