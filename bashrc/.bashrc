#
# ~/.bashrc
#
# If not running interactively, don't do anything

export EDITOR="nvim"

#pokemon in terminal
export PATH="~/.local/bin:$PATH"
(pokeget random)

#for pywal
#(cat ~/.cache/wal/sequences &)

#starship
alias ls='ls --color=auto'
alias grep='grep --color=auto'
eval "$(starship init bash)"

#aliases
alias vim="ghostty -e nvim"
alias logout="hyprctl dispatch exit"

#Pinta nice
alias pinta="pinta ~/Pictures/other/preset.ora" 

#zoxide stuff
eval "$(zoxide init bash)"
alias cd="z"
