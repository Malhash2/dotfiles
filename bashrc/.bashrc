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

#idk lol
alias ls='ls --color=auto'
alias grep='grep --color=auto'
eval "$(starship init bash)"

#nvim to vim
alias vim="ghostty -e nvim"
#Pinta nice
alias pinta="pinta ~/Pictures/other/preset.ora" 

#zoxide stuff
eval "$(zoxide init bash)"
