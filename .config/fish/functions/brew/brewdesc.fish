# from: https://github.com/mattmc3/fishconf/blob/f293fe44ade363ac2cb34051f2b2c23157ffe808/functions/homebrew/brewdesc.fish
function brewdesc -d 'Show descriptions of brew installs'
  brew leaves |
    xargs brew desc --eval-all |
    string replace -r '^(.*:)(\s+[^\[].*)$' '$1'(set_color blue)'$2'(set_color normal)
end
