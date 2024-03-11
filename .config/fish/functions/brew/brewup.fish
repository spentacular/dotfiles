# Update Homebrew
function brewup -d "Update homebrew and cleanup outdated files"
  brew update && brew upgrade && brew cleanup
end
