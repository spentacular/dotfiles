function findup
  set -l start (pwd)
  set -l currentpath (pwd)
  set -l packageroot

  while not test "$currentpath" = "/"
    echo "$currentpath"
    set packagejson "$currentpath/package.json"

    if test -f "$packagejson"
      set packageroot ($currentpath)
      break
    end

    set currentpath (realpath "$currentpath/..")
  end

  cd $start
  echo $packageroot
  # return $packageroot
end
