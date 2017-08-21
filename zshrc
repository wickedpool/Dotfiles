lias gccW="gcc -Wall -Wextra -Werror"
alias norm="norminette"
alias ga="git add -A"
alias gc="git commit -m"
alias gp="git push"
alias gs='git status'
alias gck='git checkout'
alias grb='git rebase'
alias gbr='git branch'
alias gpl='git pull'
alias gfe='git fetch'
alias gme='git merge'
alias bdf='git diff'

lias g="git"
alias v="vim"
alias ..='cd ..'
alias .2='cd ../..'
alias .3='cd ../../..'
alias .4='cd ../../../../'
alias .5='cd ../../../../../'
alias .6='cd ../../../../../../'
alias .7='cd ../../../../../../../'
alias .8='cd ../../../../../../../../'
alias cd..='cd ..'
alias down="cd ~/Downloads"
alias dsk="cd ~/Desktop"

# list w/ color
alias ls="command ls ${colorflag}"

export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

alias l="ls -l ${colorflag}"
alias la="ls -la ${colorflag}"

#only dir
alias lsd='ls -l ${colorflag} | grep "^d"'

# ip
alias ip="dig +short myip.opendns.com @resolver1.opendns.com"

MAIL="thgiraud@student.42.fr"
export MAIL

autoload -U colors && colors
autoload -U compinit && compinit

PROMPT="
%{$fg[blue]%}%n@%{$reset_color%}%{$fg[white]%}%m%{$reset_color%}%{$fg[red]%} %~ %{$reset_color%} %b$(git_super_status) %{↴ %}
"

source ~/.zsh/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

Load Homebrew config script
source $HOME/.brewconfig.zsh
