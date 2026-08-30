function __detect_manager
  set -l git_root (command git rev-parse --show-toplevel 2>/dev/null)

  if test -n "$git_root"
    if test -e "$git_root/package.json"
      __detect_manager_switch $git_root
    else
      echo "Inside a .git directory, but no package.json found in project root"
      return 1
    end
  else if test -e "$PWD/package.json"
    __detect_manager_switch $pwd
  else
    echo "No package.json found in current directory"
    return 1
  end
end

function __detect_manager_switch
  if test -e "$argv/pnpm-lock.yaml"
    echo "pnpm"
  else if test -e "$argv/yarn.lock"
    echo "yarn"
  else if test -e "$argv/bun.lockb"
    echo "bun"
  else if test -e "$argv/package-lock.json"
    echo "npm"
  else
    echo "pnpm"
  end
end
