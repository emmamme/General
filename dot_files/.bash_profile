# export PATH=/Users/chenluyuan/UT/Courses/ECE353/Lab/Blitz:$PATH

# Setting PATH for Python 3.4
# The orginal version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.4/bin:${PATH}"
PATH="/opt:${PATH}"
PATH="/opt/bin:${PATH}"
export PATH

# python2 
export python2='/usr/bin/python'

#PS1="\w$ "
PS1='[\h \W]\$ '

# Everybody prefers 'mcd' to do this
function mcd() {
	mkdir -p "$@"
	cd "$@"
}
export -f mcd

# GCC
alias gcc='/usr/local/Cellar/gcc49/4.9.3/bin/gcc-4.9'

# Matlab
alias ml='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop'
alias mr='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop -r'
alias mlg='open /Applications/MATLAB_R2014b.app'

alias c="cp -rvf"
alias s="open -a Sublime\ Text"
alias h="cd /Users/chenluyuan"
alias d="pwd"
alias v="/usr/local/Cellar/macvim/7.4-101/MacVim.app/Contents/MacOS/Vim"
alias r="rm -rvf"
alias ll="ls -lhd */"
alias f="find ./ -iname"
alias m="mv -fv"
alias ..="cd ../"
alias ff="find ./ | xargs grep"
alias l="ls -lhG"
alias ag='alias | grep '

alias brc='vim ~/.bash_profile'
alias src='source ~/.bash_profile'

# misc
alias tar-tar='tar -xvf '
alias tar-gz='tar -zxvf '
alias tar-bz='tar -xjvf '
alias tar-n='tar -czvf new.tar.gz '

alias vi="gvim"

alias pd="pushd $(pwd)"
alias po="popd"

# paths
alias gds='cd /Users/chenluyuan/Developer/GDS/'
alias mle='cd /Users/chenluyuan/Developer/Learning/ML'
alias dev='cd /Users/chenluyuan/Developer/'
export PATH="/usr/local/sbin:$PATH"

# tensorflow
alias tb='tensorboard --logdir=./data'

# git
alias gc='git checkout'
alias gb='git branch'
alias gm='git merge'
alias gf='git fetch'
alias gp='git push'
alias gs='git status'


[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh
