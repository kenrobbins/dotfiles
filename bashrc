if [ "$TERM" == "xterm" ]
then
    export TERM='xterm-256color'
fi

shopt -s histverify

export CDPATH=.:/home/ken/src:/home/ken

alias tmux="TERM='screen-256color' tmux"
alias ack="ack-grep"
alias pp="python -mjson.tool"

function git_branch {
    branch=$( git branch --no-color 2>/dev/null | awk '{if ($1 == "*") {printf "(%s)", $2}}' )
    echo -en "\e[0;37m$branch\e[0m"
}
PROMPT_COMMAND="git_branch"

export EDITOR=vim
