function fco -d "Fuzzy-find and checkout a branch"
  git for-each-ref refs/heads/ --format='%(refname:short)' | fzf --reverse --no-info | xargs git checkout
end
