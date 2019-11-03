#!/usr/bin/env bash

# List all domains
# $ defaults domains | tr ',' '\n'
domains=(
  com.microsoft.VSCode
  com.microsoft.VSCode.helper
  com.microsoft.VSCode.helper.EH
  com.microsoft.VSCode.helper.NP
  com.microsoft.VSCodeInsiders
  com.microsoft.VSCodeInsiders.helper
  co.zeit.hyper
  co.zeit.hyper.helper
)

for i in "${domains[@]}"; do
  defaults write $i CGFontRenderingFontSmoothingDisabled 0
done
