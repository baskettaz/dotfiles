fpath=($ZDOTDIR/external $fpath)

# setup vim as natural zsh-terminal-editor of choice
bindkey -v          # switch between NORMAL and INSERT mode
export KEYTIMEOUT=1 # makes the switch faster

# vim navigation keys 
# (!) this configuration comes before compinit
zmodload zsh/complist
bindkey -M menuselect 'h' vi-backward-char
bindkey -M menuselect 'j' vi-up-line-or-history
bindkey -M menuselect 'k' vi-forward-char
bindkey -M menuselect 'l' vi-down-line-or-history

# source "$XDG_CONFIG_HOME/zsh/aliases"
source "$ZDOTDIR/aliases"



setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

autoload -U compinit; compinit
# Autocomplete hidden files
_comp_options+=(globdots)
source "~/dotfiles/zsh/external/completion.zsh"


source "~/dotfiles/zsh/external/bd.zsh"

autoload -Uz prompt_purification_setup; prompt_purification_setup


# Push the currrent directory visited on to the stack
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd
setopt PUSHD_SILENT

autoload -Uz cursor_mode && cursor_mode

# custom scripts
source $DOTFILES/zsh/scripts.sh


# fuzzy finder
# the command sources fzf-completion to zsh
# key bindings
# 1) CTRL + t - Search for a file in current dir and sub-dirs
# 2) CTRL + r - Search for an entry in the command history
# 3) ALT  + c - Allow to select a sub-dir and make it cwd
if [ $(command -v "fzf")]; then
  source /usr/share/fzf/completion
  source /usr/share/fzf/key-bindings.zsh
fi

if ["$(tty)"="/dev/tty1"];
then
  pgrep i3 || exec startx "$XDG_CONFIG_HOME/X11/.xinitrc"
fi



