#!/usr/bin/env bash

# List all domains
# $ defaults domains | tr ',' '\n'

# vscode
defaults write com.microsoft.VSCode CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.EH CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCode.helper.NP CGFontRenderingFontSmoothingDisabled 0

# vscode insiders
defaults write com.microsoft.VSCodeInsiders CGFontRenderingFontSmoothingDisabled 0
defaults write com.microsoft.VSCodeInsiders.helper CGFontRenderingFontSmoothingDisabled 0

# hyper
defaults write co.zeit.hyper CGFontRenderingFontSmoothingDisabled 0
defaults write co.zeit.hyper.helper CGFontRenderingFontSmoothingDisabled 0
