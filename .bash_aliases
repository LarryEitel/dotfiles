# some more ls aliases
alias ll='ls -alF'
alias la='ls -A'
alias l='ls -CF'

alias aliases='more ~/.bash_aliases'
alias valiases='vi ~/.bash_aliases && source ~/.bash_aliases'
alias bashrc='more ~/.bashrc'
alias vbashrc='vi ~/.bashrc && source ~/.bashrc'
alias vrc='vi ~/.vimrc'

# sug
alias sug='cd /srv/www/virthosts/sug.dev'
alias vsug='sug && vi'
alias vsugdocs='cd ~/devdocs/sug && vi'

# dotfiles
alias psdotfiles='cd ~/dotfiles && ./gpush.sh'
alias pldotfiles='cd ~/dotfiles && git pull'

# devdocs
alias psdevdocs='cd ~/devdocs && ./gpush.sh'
alias pldevdocs='cd ~/devdocs && git pull'
alias docs='cd ~/devdocs'
alias vdocs='cd ~/devdocs && vi'


