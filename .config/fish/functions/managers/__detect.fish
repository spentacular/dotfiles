function __detect
  set -l reporoot (git rev-parse --show-toplevel)

  if test -e "$reporoot/pnpm-lock.yaml"
    echo "pnpm"
  else if test -e "$reporoot/yarn.lock"
    echo "yarn"
  else if test -e "$reporoot/bun.lockb"
    echo "bun"
  else if test -e "$reporoot/package-lock.json"
    echo "npm"
  else
    echo "A package manager lockfile was not found"
  end
end
