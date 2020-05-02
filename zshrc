# Path to your oh-my-zsh configuration.
ZSH=$HOME/.dotfiles/oh-my-zsh

# Oh-my-zsh theme.
ZSH_THEME="jtriley"

# Red dots displayed while waiting for completion.
COMPLETION_WAITING_DOTS="true"

# Loaded plugins.
plugins=(autojump colored-man-pages catimg cp history vi-mode)

# Bind 'jk' to command mode.
bindkey -M viins 'jk' vi-cmd-mode

# Load zmv batch renaming.
autoload zmv
alias zmv='noglob zmv -W'

# Use oh-my-zsh!
source $ZSH/oh-my-zsh.sh

# Shift+Tab for reverse completion menu traversal.
bindkey '^[[Z' reverse-menu-complete
bindkey '^[[H' beginning-of-line
# bindkey '' end-of-line
bindkey '^[[P' delete-char
bindkey '^[[1;5D' backward-word
bindkey '^[[1;5C' forward-word
bindkey '^H' backward-kill-word
bindkey '^[[M' kill-word

# ... and use those colors actually.
alias ls='exa'
alias dir='dir --color=auto'
alias vdir='vdir --color=auto'
alias grep='grep --color=auto'

# Aptitude aliases.
alias sa='sudo aptitude'
alias sai='sa install'
alias sau='sa update'
alias sap='sa upgrade'
alias saup='sau; sap'

# Meh.
alias ll='ls -l'
alias la='ll -a'
# alias vlc='vlc --avcodec-hw vaapi --vout glx'
# alias vim='nvim'

# Git aliases.
alias gs='git status'
alias ga='git add'
alias gb='git branch'
alias gc='git commit'
alias gd='git diff'
alias go='git checkout'
alias gps='git push'
alias gpl='git pull'

# Gurobi setup
#export GUROBI_HOME=/opt/gurobi/gurobi702/linux64
#export LD_LIBRARY_PATH=$LD_LIBRARY_PATH:$GUROBI_HOME/lib

# Torch setup
# . /home/aoe/torch/install/bin/torch-activate

# source /home/aoe/opt/miniconda3/etc/profile.d/conda.sh

# # ex - archive extractor
# # usage: ex <file>
ex ()
{
  if [ -f $1 ] ; then
    case $1 in
      *.tar.bz2)   tar xjf $1   ;;
      *.tar.gz)    tar xzf $1   ;;
      *.bz2)       bunzip2 $1   ;;
      *.rar)       unrar x $1     ;;
      *.gz)        gunzip $1    ;;
      *.tar)       tar xf $1    ;;
      *.tbz2)      tar xjf $1   ;;
      *.tgz)       tar xzf $1   ;;
      *.zip)       unzip $1     ;;
      *.Z)         uncompress $1;;
      *.7z)        7z x $1      ;;
      *)           echo "'$1' cannot be extracted via ex()" ;;
    esac
  else
    echo "'$1' is not a valid file"
  fi
}

# better yaourt colors
# export YAOURT_COLORS="nb=1:pkg=1:ver=1;32:lver=1;45:installed=1;42:grp=1;34:od=1;41;5:votes=1;44:dsc=0:other=1;35"

# eval `keychain --eval --quiet --noask --agents ssh id_rsa`
# if [ -n "$DESKTOP_SESSION" ]; then
#     eval $(gnome-keyring-daemon --start)
#     export SSH_AUTH_SOCK
# fi

# export TERM='xterm-256color'

# dip!!!!!!!!
alias ca='conda activate'
alias cde='conda deactivate'
alias cab='cde; ca base; cd ~/work/ai-core-modules'
alias cam='cde; ca ai-core-modules; cd ~/work/ai-core-modules'
alias cai='cde; ca ai-core-api; cd ~/work/ai-core-api'
alias cap='cde; ca profiler; cd ~/work/dataset_profiler'
alias ci='conda install'
alias halmos='ssh niklmate@halmos.felk.cvut.cz'
alias boruvka='ssh niklmate@boruvka.felk.cvut.cz'
alias zorn='ssh niklmate@zorn.felk.cvut.cz'
alias mds='sshfs niklmate@halmos.felk.cvut.cz:/home.stud/niklmate/dip/src/datasets /home/aoe/skola/dip/src/mounted'
alias ms='sshfs niklmate@halmos.felk.cvut.cz:/home.stud/niklmate/dip/src/saved /home/aoe/skola/dip/src/saved'
alias uds='fusermount3 -u /home/aoe/skola/dip/src/mounted'
alias us='fusermount3 -u /home/aoe/skola/dip/src/saved'

# cad
# cd /home/aoe/skola/dip/src

# Set up the prompt
# autoload -Uz promptinit
# promptinit
# prompt adam1



# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=10000
SAVEHIST=10000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit

# Share history across multiple instances of zsh
setopt sharehistory
# Remove superfluous blanks from each command line being added to the history
# list
setopt histreduceblanks
# Remove command lines from the history list when the first character on the
# line is a space, or when one of the expanded aliases contains a leading space
setopt histignorespace
# Do not enter command lines into the history list if they are duplicates of the
# previous event.
setopt histignorealldups
# Switching directories for lazy people
setopt autocd
# See: http://zsh.sourceforge.net/Intro/intro_6.html
setopt autopushd pushdminus pushdsilent pushdtohome pushdignoredups
# Don't kill background jobs when I logout
setopt nohup
# See: http://zsh.sourceforge.net/Intro/intro_2.html
setopt extendedglob
# Do not require a leading '.' in a filename to be matched explicitly
# setopt globdots
# Use vi key bindings in ZSH
setopt vi
# Automatically use menu completion after the second consecutive request for
# completion
setopt automenu
# If the argument to a cd command (or an implied cd with the AUTO_CD option set)
# is not a directory, and does not begin with a slash, try to expand the
# expression as if it were preceded by a '~'
setopt cdablevars
# Try to make the completion list smaller (occupying less lines) by printing
# the matches in columns with different widths
setopt listpacked
# Don't show types in completion lists
setopt nolisttypes
# If a completion is performed with the cursor within a word, and a full
# completion is inserted, the cursor is moved to the end of the word
setopt alwaystoend
# Try to correct the spelling of commands
setopt correct
# https://github.com/robbyrussell/oh-my-zsh/issues/449
setopt no_nomatch
# Disable annoying confirm
# setopt rmstarsilent

DIRSTACKSIZE=8
alias dh='dirs -v'


zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
# zstyle ':completion:*' format 'Completing %d'
zstyle ':completion:*' group-name ''
zstyle ':completion:*' menu select=2
eval "$(dircolors -b)"
zstyle ':completion:*:default' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' list-colors ''
zstyle ':completion:*' list-prompt %SAt %p: Hit TAB for more, or the character to insert%s
zstyle ':completion:*' matcher-list '' 'm:{a-z}={A-Z}' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=* l:|=*'
zstyle ':completion:*' menu select=long
zstyle ':completion:*' select-prompt %SScrolling active: current selection at %p%s
zstyle ':completion:*' use-compctl false
zstyle ':completion:*' verbose true

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#)*=0=01;31'
zstyle ':completion:*:kill:*' command 'ps -u $USER -o pid,%cpu,tty,cputime,cmd'

# Completion
autoload -U promptinit && promptinit
autoload -U compinit compdef && compinit

# Search backwards and forwards with a pattern
bindkey -M vicmd '/' history-incremental-pattern-search-backward
bindkey -M vicmd '?' history-incremental-pattern-search-forward

# set up for insert mode too
bindkey -M viins '^R' history-incremental-pattern-search-backward
bindkey -M viins '^F' history-incremental-pattern-search-forward

# Prompt
# prompt pure

# # Reversesearch
# bindkey -e

# export PATH="/home/mnikl/bin:$PATH"
# export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/home/mnikl/.local/opt/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/home/mnikl/.local/opt/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/home/mnikl/.local/opt/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/home/mnikl/.local/opt/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

