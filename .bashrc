SSH_ENV=$HOME/.ssh/environment

# ----------------------
# SSH agent
# ----------------------

function start_agent {
    echo "Initializing new SSH agent..."
    # spawn ssh-agent
    /usr/bin/ssh-agent | sed 's/^echo/#echo/' > "${SSH_ENV}"
    echo succeeded
    chmod 600 "${SSH_ENV}"
    . "${SSH_ENV}" > /dev/null
    /usr/bin/ssh-add
}

if [ -f "${SSH_ENV}" ]; then
     . "${SSH_ENV}" > /dev/null
     ps -ef | grep ${SSH_AGENT_PID} | grep ssh-agent$ > /dev/null || {
        start_agent;
    }
else
    start_agent;
fi

# ----------------------
# Windows Aliases
# ----------------------

alias explr='start .'
alias tree='find . -print | sed -e "s;[^/]*/;|____;g;s;____|; |;g"'
alias bashr='. ~/.bashrc'

# ----------------------
# Gulp Aliases
# ----------------------

alias glpw='gulp watch'
alias glpb='gulp build'
alias glpr='gulp release'

# ----------------------
# Git Aliases
# ----------------------

alias g='git'

alias ga='g add'
alias gaa='g add .'
alias gaaa='g add --all'
alias gau='g add --update'
alias gb='g branch'
alias gbd='g branch --delete '
alias gbc='gb --merged | egrep -v "(^\*|master|develop)" | xargs git branch -d'
alias gc='g commit'
alias gcm='g commit --message'
alias gcf='g commit --fixup'
alias gco='g checkout'
alias gcob='g checkout -b'
alias gcom='g checkout master'
alias gcod='g checkout develop'
alias gd='g diff'
alias gdh='g diff HEAD'
alias gi='g init'
alias glg='g log --graph --oneline --decorate --all'
alias gld='g log --pretty=format:"%h %ad %s" --date=short --all'
alias gm='g merge --no-ff'
alias gma='g merge --abort'
alias gmc='g merge --continue'
alias gull='g pull'
alias gullr='g pull --rebase'
alias gfull='g fetch && gull'
alias gush='g push'
alias gr='g rebase'
alias gs='g status'
alias gss='g status --short'
alias gst='g stash'
alias gsta='g stash apply'
alias gstd='g stash drop'
alias gstl='g stash list'
alias gstp='g stash pop'
alias gsts='g stash save'

# ----------------------
# Git Functions
# ----------------------

function glf() { g log --all --grep="$1"; }

function gas() { gaa; gs; }

function gazy() {
    gas;

    read -p "Is this correct [Y/N/D (details)]: " -n 1 -r
    echo
    if [[ $REPLY =~ ^[Dd]$ ]]
    then
	gdh

        read -p "Is this correct [Y/N]: " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]
        then
            gcm "$1"
            gush
        fi
    elif [[ $REPLY =~ ^[Yy]$ ]]
    then
        gcm "$1"
        gush
    fi
}