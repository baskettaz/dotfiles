#!/bin/bash

########
# nvim #
########

# mkdir -p "$HOME/.config/nvim"
mkdir -p "$HOME/.config/nvim/undo"

rm -rf "$HOME/.config/nvim"
ln -sf "$HOME/dotfiles/nvim" "$HOME/.config"


#######
# X11 #
#######

rm -rf "$HOME/.config/X11"
ln -s "$HOME/dotfiles/X11" "$HOME/.config"
