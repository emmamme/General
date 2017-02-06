# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# setting lang variable
export LC_ALL=en_US.UTF-8
export LANG='en_US.UTF-8'

# Set name of the theme to load. Optionally, if you set this to "random"
# it'll load a random theme each time that oh-my-zsh is loaded.
# See https://github.com/robbyrussell/oh-my-zsh/wiki/Themes
# Theme settings
ZSH_THEME="powerlevel9k/powerlevel9k"
POWERLEVEL9K_LEFT_PROMPT_ELEMENTS=(dir status)
POWERLEVEL9K_RIGHT_PROMPT_ELEMENTS=(vcs background_jobs)
POWERLEVEL9K_SHORTEN_DIR_LENGTH=3
POWERLEVEL9K_TIME_FORMAT="%D{%H:%M}"
#POWERLEVEL9K_DIR_HOME_BACKGROUND="white"
#POWERLEVEL9K_DIR_HOME_FOREGROUND="black"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_BACKGROUND="white"
#POWERLEVEL9K_DIR_HOME_SUBFOLDER_FOREGROUND="black"
#POWERLEVEL9K_TIME_BACKGROUND="blue"

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(git osx autojump sublime web-search wd)

source $ZSH/oh-my-zsh.sh

# jump
[[ -s $(brew --prefix)/etc/profile.d/autojump.sh ]] && . $(brew --prefix)/etc/profile.d/autojump.sh

# powerline 

if [[ -r /usr/local/lib/python2.7/site-packages/powerline_status-2.5.dev9999+git.cdd0cdbfee94238d38c1bef5f0548a4622518a05-py2.7.egg/powerline/bindings/zsh/powerline.zsh ]]; then
    source /usr/local/lib/python2.7/site-packages/powerline_status-2.5.dev9999+git.cdd0cdbfee94238d38c1bef5f0548a4622518a05-py2.7.egg/powerline/bindings/zsh/powerline.zsh
fi

# User configuration

# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias
alias -s py=gvim       # 在命令行直接输入 python 文件，会用 vim 中打开，以下类似
alias -s js=gvim
alias -s c=gvim
alias -s java=gvim
alias -s txt=gvim
alias -s matlab=gvim
alias -s m=gvim
alias -s gz='tar -xzvf'
alias -s tgz='tar -xzvf'
alias -s zip='unzip'
alias -s bz2='tar -xjvf'
alias zrc='vim ~/.zshrc'
alias szrc='source ~/.zshrc'

alias q='quick-look'
alias l='ls -lh'
alias ml='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop'
alias mr='/Applications/MATLAB_R2014b.app/bin/matlab -nodesktop -r'
alias mlg='open /Applications/MATLAB_R2014b.app'

alias c="cp -rvf"
alias h="cd /Users/chenluyuan"
alias v="/usr/local/Cellar/macvim/7.4-101/MacVim.app/Contents/MacOS/Vim"
alias r="rm -rvf"
alias ll="ls -lhd */"
alias f="find ./ -iname"
alias m="mv -fv"
alias ff="find ./ | xargs grep"
alias ag='alias | grep '

alias cpd="ls -lt ~/Downloads/* | head -1 | awk '{print $9}' | sed 's/.*\///' | awk '{print \"cp ~/Downloads/\" \$1 \" ./\" \$1}' | sh"

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
