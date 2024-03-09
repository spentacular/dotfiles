complete -c g -w git

complete -c g -n __fish_git_needs_command -a track -d 'Change branch tracking'
complete -f -c g -n '__fish_git_using_command track' -a "(__fish_git_remotes)"
