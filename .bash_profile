# Git branch in prompt.
parse_git_branch() {
    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\u@\h \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

export PATH=/usr/pkg/bin:/usr/pkg/sbin:$HOME/local/node/bin:$PATH

[[ -s /Users/sxkcl/.nvm/nvm.sh ]] && . /Users/sxkcl/.nvm/nvm.sh # This loads NVM

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH="$POSTGRES_HOME:$PATH"

##
# Your previous /Users/sxkcl/.bash_profile file was backed up as /Users/sxkcl/.bash_profile.macports-saved_2014-06-24_at_03:18:19
##

# MacPorts Installer addition on 2014-06-24_at_03:18:19: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

alias ..="cd .."
alias ...="cd ../.."
function mkd () { mkdir -p "$@" && cd "$1"; }


# Added by install_latest_perl_osx.pl
[ -r /Users/sxkcl/.bashrc ] && source /Users/sxkcl/.bashrc
