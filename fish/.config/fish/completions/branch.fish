source $__fish_data_dir/completions/git.fish

# Merge command

complete -f -x -c branch -a '(__fish_git_branches)'
