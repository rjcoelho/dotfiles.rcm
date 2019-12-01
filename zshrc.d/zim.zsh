# Define zim location
export ZIM_HOME=${ZDOTDIR:-${HOME}}/.zim
export ZIM_CONTRIB=${ZDOTDIR:-${HOME}}/.rc.d

# Start zim
[[ -s ${ZIM_HOME}/init.zsh ]] && source ${ZIM_HOME}/init.zsh
