# Set up the prompt

HOSTNAME=icarus

autoload -Uz promptinit
promptinit
prompt walters

bindkey -e

# Set default editor
export EDITOR="emacs -nw"

export MPD_HOST=localhost
export MPD_PORT=6600

# Keep 1000 lines of history within the shell and save it to ~/.zsh_history:
HISTSIZE=1000
SAVEHIST=1000
HISTFILE=~/.zsh_history

# Use modern completion system
autoload -Uz compinit
compinit
zstyle ':completion:*' auto-description 'specify: %d'
zstyle ':completion:*' completer _expand _complete _correct _approximate
zstyle ':completion:*' format 'Completing %d'
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

# Environmental variables
# ---------------------------------------------------------------------------
# add xmonad executable to $PATH
if [ -d ~/.xmonad ]; then
    PATH=$PATH:~/.xmonad
    export PATH
fi

if [ -d ~/bin ]; then
    PATH=~/bin:$PATH
    export PATH
fi

JAVA_HOME=/opt/java
if [ -d $JAVA_HOME ]; then
    export JAVA_HOME
    PATH=$JAVA_HOME/bin:$PATH
fi

export JAVA_FONTS=/usr/share/fonts/TTF
#export _JAVA_OPTIONS='-Dswing.defaultlaf=javax.swing.plaf.gtk.GTKLookAndFeel'

GRADLE_HOME=/home/data/dev/bin/springsource/gradle-1.1
if [ -d $GRADLE_HOME ]; then
    export GRADLE_HOME
    export PATH=$GRADLE_HOME/bin:$PATH
fi

# tmux
# ---------------------------------------------------------------------------

# set the correct term in tmux
[ -n "$TMUX" ] && export TERM=screen-256color


if which tmux 2>&1 >/dev/null; then
    # if no session is started, start a new session
    test -z ${TMUX} && tmux

    # when quitting tmux, try to attach
    while test -z ${TMUX}; do
        tmux attach || break
    done
fi

# aliases
# ---------------------------------------------------------------------------
alias cdmus='cd /home/data/music'
alias cdmov='cd /home/data/movies'
alias cddev='cd /home/data/dev/'
alias cdproj='cd /home/data/dev/projects'
alias cdlib='cd /home/data/library'
alias emacs='emacs -nw'
alias sqlplus='rlwrap sqlplus'
alias start-ora='sudo /etc/rc.d/oracle-xe start'
alias stop-ora='sudo /etc/rc.d/oracle-xe stop'
alias ls='ls --color'
alias ec='emacsclient'
alias heroku='~/.gem/ruby/1.9.1/gems/heroku-2.24.0/bin/heroku'

# aliases for Git
alias ga='git add'
alias gp='git push'
alias gl='git log'
alias gs='git status'
alias gd='git diff'
alias gdc='git diff --cached'
alias gm='git commit -m'
alias gma='git commit -am'
alias gb='git branch'
alias gc='git checkout'
alias gra='git remote add'
alias grr='git remote rm'
alias gpu='git pull'
alias gcl='git clone'
