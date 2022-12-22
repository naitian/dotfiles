# Naitian's Little Helpers

fun () {
    if [[ $1 == "hi" ]]
    then
        echo "hello"
    fi
}

# Python http.server
# - will choose the next available port
# - requires python3
serve () {
    if [[ "$1" == "" ]]
    then
        port=8000
    else
        port=$1
    fi
    python3 -m http.server $port 2> /dev/null || serve $(expr $port + 1)
}

# Sets terminal window title
title () {
    echo -ne "\033]0;"$*"\007"
}

# Stash unstaged before pulling
pulls () {
    git stash
    git pull -r
    git stash pop
}

passcard () {
    cd $PROJECTS/../Sysadmin/passcard/
    if [[ "$1" == "get" ]] || [[ "$1" == "dump" ]]
    then
        ./passcard.py "$@" | less
    else
        ./passcard.py "$@"
    fi
    cd $OLDPWD
}

vnc () {
    ssh -L "590$1:localhost:590$1" root@$2.csl.tjhsst.edu
}

website () {
    cd $PROJECTS/blog/_util/
    ./help.py "$@"
    deactivate
    cd $OLDPWD
}

tj () {
    pass -c school/ion.tjhsst.edu/2018nzhou
    ssh tj
}

vonda () {
  mamba create -n $1
  echo "conda activate $1" > .envrc
  echo 'unset PS1' >> .envrc
  direnv allow
}

venv () {
    python3 -m venv env
    echo 'source $(dirname "${BASH_SOURCE[0]}")/env/bin/activate' > .envrc
    echo 'unset PS1' >> .envrc
    direnv allow
}

# tm - create new tmux session, or switch to existing one. Works from within tmux too. (@bag-man)
# `tm` will allow you to select your tmux session via fzf.
# `tm irc` will attach to the irc session (if it exists), else it will create it.
tm () {
    [[ -n "$TMUX" ]] && change="switch-client" || change="attach-session"
    if [ $1 ]; then
        tmux $change -t "$1" 2>/dev/null || (tmux new-session -d -s $1 && tmux $change -t "$1"); return
    fi
    session=$(tmux list-sessions -F "#{session_name}" 2>/dev/null | fzf --exit-0) &&  tmux $change -t "$session" || echo "No sessions found."
}

pdfbibrender () {
    pdflatex -shell-escape -interaction nonstopmode $1.tex;
    biber $1;
    pdflatex -shell-escape -interaction nonstopmode $1.tex;
    open ${1}.pdf;
}

pdfrender () {
    pdflatex -shell-escape -interaction nonstopmode $1.tex;
    open ${1}.pdf;
}

openvpn () {
    cat ~/.password.txt | sudo openconnect -b --quiet --passwd-on-stdin -u naitian --authgroup="UMVPN-All Traffic alt" https://umvpn.umnet.umich.edu
}

closevpn () {
    sudo killall -SIGINT openconnect
}
