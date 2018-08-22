export PATH=/usr/local/bin:$PATH
export HOMEBREW_CASK_OPTS="--appdir=/Applications"
export NODE_PATH="/usr/local/lib/node_modules"


# -- PERSONAL CONFIG -----------------------------------------------------


alias url="open -a /Applications/Google\ Chrome.app"
alias foobar="ps -ef"
alias cdorchard=". ~/.bashscripts/cdorchard.sh"
alias setuporchard=". ~/.bashscripts/setuporchard.sh"
alias openlocal="url http://localhost:3000"
alias quickcommit=". ~/.bashscripts/quickcommit.sh"
alias tmux_start=". ~/.bashscripts/tmux_start.sh"
alias love="/Applications/love.app/Contents/MacOS/love"

function _update_ps1() {
    PS1="$(powerline-shell $?)"
}

if [ "$TERM" != "linux" ]; then
    PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
fi


# -- SSH CONFIG --------------------------------------------------------


# appleseed
alias ssa='ssh ian@192.168.1.10'

# silvia
alias sss='ssh ian@192.168.1.9'

# removekey function
removekey() { sed -i "" "/${1}/d" ~/.ssh/known_hosts; }


# -- PYTHON CONFIG -----------------------------------------------------


# Setting PATH for Python 3.6
# The original version is saved in .bash_profile.pysave
PATH="/Library/Frameworks/Python.framework/Versions/3.6/bin:${PATH}"
export PATH


# -- NVM CONFIG -----------------------------------------------------


export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
alias cbuild='watchmedo shell-command --patterns="*.py;*.txt" --recursive --command='"'"'echo "" && osascript -e "quit app \"Python\"" && python3 main.py'"'"
alias ctest='watchmedo shell-command --patterns="*.py;*.css" --recursive --command='"'"'echo "" && python3 -m pytest'"'"
alias ccov='watchmedo shell-command --patterns="*.py;*.qss" --recursive --command='"'"'echo "" && python3 -m pytest --cov=. --cov-report term-missing'"'"


# -- NOTES -----------------------------------------------------


##
# Your previous /Users/ianbateman/.bash_profile file was backed up as /Users/ianbateman/.bash_profile.macports-saved_2017-11-30_at_11:25:05
##

# MacPorts Installer addition on 2017-11-30_at_11:25:05: adding an appropriate PATH variable for use with MacPorts.
export PATH="/opt/local/bin:/opt/local/sbin:$PATH"
# Finished adapting your PATH environment variable for use with MacPorts.


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
