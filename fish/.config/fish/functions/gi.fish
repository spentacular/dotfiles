function gi -d "Create .gitignore file from gitignore.io api"
  # Create .gitignore if it doesn't exist
  if not test -f .gitignore
    touch .gitignore
  end

  # curl the gitignore api & output to .gitignore
  # gi node,macos
  curl -L -s https://www.gitignore.io/api/$argv >> .gitignore
end