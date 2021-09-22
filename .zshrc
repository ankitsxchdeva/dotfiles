#   _______| |__  _ __ ___ 
#  |_  / __| '_ \| '__/ __|
# _ / /\__ \ | | | | | (__ 
#(_)___|___/_| |_|_|  \___|

# Prompt color based on previous exit code
autoload -U colors && colors
arrow_color=$fg_bold[red]

# Prompt
PROMPT_COMMAND=set_exit_color
PS1="%{$arrow_color%}➜ %{$fg[blue]%}%c %(?..[%?] )"
export CLICOLOR=1

# Basic Setup
alias   ls="ls -p"
alias   vi="vim"

# Utils
alias   weather="curl -s wttr.in/Santa+Cruz+CA | head -n 7 | tail -n 5"
alias   battery="pmset -g batt"
alias   clockf="date +%r"
alias   clock="tty-clock -c -C 4 -t"
alias   wordc="pbpaste | wc -w"
alias   shee="tree -L 1 | ghead -n -2 | tail -n +2"
alias   stonks="curl https://terminal-stocks.herokuapp.com/market-summary"
alias   grip="grip -b"
alias   scrot="screencapture ~/Documents/$(date "+%m.%d-%H.%M.%S").png"

# Shortcuts
alias   resource="source ~/.zshrc"
alias   removeDock="defaults write com.apple.dock autohide-delay -float 1000; killall Dock"
alias   updateDots="cd; cp {.zshrc,.vimrc,.tmux.conf}  ~/Documents/dots; cd Documents/dots; git add .; git commit -m 'updated automatically'; git push; cd"
alias   mail="open https://mail.google.com/mail/u/0/#inbox"

# SSH setup
alias   ssh1="ssh asachde2@unix.ucsc.edu"    # UCSC-global (CentOs 3.10.0)
alias   ssh2="ssh ankit@192.168.1.79"        # Home-local  (manjaro 21.0.7)
alias   ssh3="ssh ankit@162.229.184.109"     # Home-global (ubuntu 20.04.2)
alias   ssh4="ssh -Y -p 8022 mininet@localhost" # Miniset virtualbox vm
# I dunno
alias pip="pip3"
alias py="python3"
alias python="python3"

# History
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Autocomplete
autoload -U compinit
zstyle ':completion:*' menu select
zstyle ':completion:*' matcher-list 'm:{[:lower:][:upper:]}={[:upper:][:lower:]}' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 'm:{[:lower:][:upper:]}={[:upper:][:lower:]} l:|=* r:|=*' 
zstyle ':completion:*' list-suffixes zstyle ':completion:*' expand prefix suffix 
zmodload zsh/complist
compinit
_comp_options+=(globdots)

# Plugins
source ~/.zsh_plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
export PATH="/opt/homebrew/opt/gnu-getopt/bin:$PATH"
