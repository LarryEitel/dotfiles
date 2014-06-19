
# Easier navigation
alias ..="cd .."
alias ...="cd ../.."
alias ....="cd ../../.."
alias .....="cd ../../../.."

# Git
alias g="git"
alias G="git"
alias gita="git add ."
alias gitcm="git commit -m"
alias gitp="git push"

# Vim
alias vundle="vim +PluginClean! +PluginInstall +qall"
alias v="vim"
alias vv="vim ."
alias :q="exit"

# Archives
alias mktar="tar -pvczf"
alias untar="tar -zxvf"

alias aliases='more /vagrant/dotfiles/.bash_aliases'
alias valiases='vi /vagrant/dotfiles/.bash_aliases && source /vagrant/dotfiles/.bash_aliases'
alias bashrc='more /vagrant/dotfiles/.bashrc'
alias vbashrc='vi /vagrant/dotfiles/.bashrc && source /vagrant/dotfiles/.bashrc'
alias vrc='sudo vi /vagrant/dotfiles/.vimrc'


alias Areload='sudo apachectl graceful'
alias Arestart='sudo apache2ctl restart'
alias Astop='sudo apache2ctl stop'
alias Astart='sudo apache2ctl start'
alias Aconfigtest='sudo apache2ctl configtest'



# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
  colorflag="--color"
else # OS X `ls`
  colorflag="-G"
fi


alias findrd="find -type f -printf '%T+\t%p\n' | sort -n"
alias ll='ls -alF ${colorflag}'
alias la='ls -A ${colorflag}'
alias l='ls -CF ${colorflag}'
alias perms='stat -c "%a %n" *' # List file/dir permission #'s

export CLICOLOR=1
export LS_COLORS='no=00:fi=00:di=01;34:ln=01;36:pi=40;33:so=01;35:do=01;35:bd=40;33;01:cd=40;33;01:or=40;31;01:ex=01;32:*.tar=01;31:*.tgz=01;31:*.arj=01;31:*.taz=01;31:*.lzh=01;31:*.zip=01;31:*.z=01;31:*.Z=01;31:*.gz=01;31:*.bz2=01;31:*.deb=01;31:*.rpm=01;31:*.jar=01;31:*.jpg=01;35:*.jpeg=01;35:*.gif=01;35:*.bmp=01;35:*.pbm=01;35:*.pgm=01;35:*.ppm=01;35:*.tga=01;35:*.xbm=01;35:*.xpm=01;35:*.tif=01;35:*.tiff=01;35:*.png=01;35:*.mov=01;35:*.mpg=01;35:*.mpeg=01;35:*.avi=01;35:*.fli=01;35:*.gl=01;35:*.dl=01;35:*.xcf=01;35:*.xwd=01;35:*.ogg=01;35:*.mp3=01;35:*.wav=01;35:'

# Ssh for rcopy
alias sshr="ssh -R 2224:localhost:2224"

# sug
alias sug='cd /var/www/sugdev'
alias vsug='sug && vi'
alias vsugdocs='cd ~/devdocs/sug && vi'

# dotfiles
alias psdotfiles='cd /vagrant/dotfiles && ./gpush.sh'
alias pldotfiles='cd /vagrant/dotfiles && git pull'

# devdocs
alias psdevdocs='cd ~/devdocs && ./gpush.sh'
alias pldevdocs='cd ~/devdocs && git pull'
alias docs='cd ~/devdocs'
alias vdocs='cd ~/devdocs && vi'

