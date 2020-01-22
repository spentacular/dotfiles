# requires jq
# requires fzy
function r
  cat package.json | jq '.scripts' | jq 'keys' | string match -r "[\w|:|-]+" | string trim | fzy | read -l result; and yarn run "$result"
end
