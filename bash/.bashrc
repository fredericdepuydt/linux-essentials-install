# Environment variables.
# You may want to put all your environment variables into a separate file like
# ~/.bash_env, instead of adding them here directly.
# See /usr/share/doc/bash-doc/examples in the bash-doc package.
if [ -f ~/.bash_env ]; then
    . ~/.bash_env
fi

# Python binaries.
# set PATH so it includes python binary location private bin if it exists
if [ -d "/usr/local/bin/python3" ] ; then
    PATH="/usr/local/bin/python3:$PATH"
fi

# run .bash_logout on session exit as
exit_session() {
    . "$HOME/.bash_logout"
}
trap exit_session SIGHUP