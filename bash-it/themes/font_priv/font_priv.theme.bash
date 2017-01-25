#!/usr/bin/env bash
#
# One line prompt showing the following configurableinformation
# for git:
# (virtual_env) pwd git_char|git_branch git_dirty_status|→
#
# The → arrow shows the exit status of the last command:
# - bold green: 0 exit status
# - bold red: non-zero exit status
#
# Example outside git repo:
# ~ →
#
# Example inside clean git repo:
# .bash_it ±|master|→
#
# Example inside dirty git repo:
# .bash_it ±|master ✗|→
#
# Example with virtual environment:
# (venv) ~ →
#

SCM_NONE_CHAR=''
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX="${green}|"
SCM_THEME_PROMPT_SUFFIX="${green}|"
SCM_GIT_SHOW_MINIMAL_INFO=true

VIRTUALENV_THEME_PROMPT_PREFIX='('
VIRTUALENV_THEME_PROMPT_SUFFIX=') '

function prompt_command() {
    # This needs to be first to save last command return code
    local RC="$?"

    virtualenv="${white}$(virtualenv_prompt)"

    # Set return status color
    if [[ ${RC} == 0 ]]; then
        ret_status="${bold_green}"
    else
        ret_status="${bold_red}"
    fi

    # Append new history lines to history file
    history -a

    PS1="${virtualenv}${bold_cyan}\W $(scm_prompt_char_info)${ret_status}→ ${normal}"
}

unset PROMPT_COMMAND
safe_append_prompt_command prompt_command
