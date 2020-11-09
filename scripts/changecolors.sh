#!/bin/bash

color_dir=$HOME/.aaron-williamson-alacritty-theme/colors
light_color=base16-gruvbox-light-hard.yml
dark_color=base16-gruvbox-dark-soft.yml

alacritty-colorscheme -C $color_dir -t $light_color $dark_color

fil=~/.config/nvim/init.vim

if grep -Fxq 'colo gruvbox' $fil; then
    sed -i 's/colo gruvbox/colo sol/g' $fil
else
    sed -i 's/colo sol/colo gruvbox/g' $fil
fi
