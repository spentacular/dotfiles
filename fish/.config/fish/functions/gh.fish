# https://github.com/jdxcode/gh
if not set -q GH_BASE_DIR
  set GH_BASE_DIR $HOME/src
end

function gh
  set git_host github.com
  set -l repo ""

  if [ (count $argv) -ne 2 ]
    echo "USAGE: gh [user] [repo]"
    return -1
  end

  set user $argv[1]
  set repo $argv[2]

  set -l path $GH_BASE_DIR/$git_host/$user/$repo
  if not test -d $path
    git clone git@$git_host:$user/$repo.git $path
    cd $path; and git branch --set-upstream-to=origin/master master
  end

  cd $path
end