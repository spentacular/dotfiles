function prev -d "Find and preview from list"
  fd --type f | fzf --preview 'bat --line-range 0:20 --color "always" {}'
end
