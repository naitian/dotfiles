export PROJECTS="$HOME/Documents/Projects"
export SYSADMINS="$HOME/Documents/School/CS/Sysadmin"
export LABS="$HOME/Documents/School/EECS281"
export SCHOOL="$HOME/Documents/School"
export ART="$HOME/Documents/Art"

export SMALL_WIDTH=60

export FZF_DEFAULT_COMMAND='rg --files --hidden --follow --glob "!.git/*"'

export CLICOLOR=1
export LSCOLORS=ExFxBxDxCxegedabagacad

export KDEDIRS=$KDEDIRS:$HOME/Library/Preferences/KDE:/usr/local/kde4
export PATH=/usr/local/kde4/bin:$PATH
export DYLD_LIBRARY_PATH=/usr/local/kde4/lib:$DYLD_LIBRARY_PATH
export XDG_DATA_HOME=$HOME/Library/Preferences/KDE/share
export XDG_DATA_DIRS=/usr/local/kde4/share:/usr/local/share:/usr/share
launchctl setenv DYLD_LIBRARY_PATH /usr/local/kde4/lib:$DYLD_LIBRARY_PATH

# Git prompt
GIT_PS1_SHOWCOLORHINTS=true
GIT_PS1_SHOWDIRTYSTATE=true
