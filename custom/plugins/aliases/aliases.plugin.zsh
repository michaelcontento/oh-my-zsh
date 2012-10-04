if [ "$(uname)" = "Darwin" ]; then
    COLOR="-G"
else
    COLOR="--color=auto"
fi

alias l="ls $COLOR -lh"
alias ll="ls $COLOR -lhA"

alias json_pp='python -mjson.tool'

alias less='less --quit-if-one-screen'

unset COLOR
