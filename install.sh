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


######
# i3 #
######

rm -rf "$HOME/.config/i3"
ln -s "$HOME/dotfiles/i3" "$HOME/.config"


#######
# zsh #
#######

mkdir -p "$HOME/.config/zsh"

ln -s "$HOME/dotfiles/zsh/.zshenv" "$HOME"
ln -s "$HOME/dotfiles/zsh/.zshrc" "$HOME/.config/zsh"
ln -sf "$HOME/dotfiles/zsh/aliases" "$HOME/.config/zsh/aliases"

rm -rf "$HOME/.config/zsh/external"
ln -s "$HOME/dotfiles/zsh/external" "$HOME/.config/zsh"
