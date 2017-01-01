#!/usr/bin/env bash

SCM_CHECK=true
SCM_NONE_CHAR=''

SCM_THEME_PROMPT_DIRTY=" ${red}✗"
#SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_CLEAN=""
SCM_THEME_PROMPT_PREFIX="${green}|"
SCM_THEME_PROMPT_SUFFIX="${green}|"
#SCM_GIT_IGNORE_UNTRACKED=true
#SCM_GIT_SHOW_DETAILS=false
#SCM_GIT_SHOW_REMOTE_INFO=false

#GIT_THEME_PROMPT_DIRTY="${bold_blue}) ${bold_yellow}✗"
#GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
#GIT_THEME_PROMPT_CLEAN="${bold_blue})"
#GIT_THEME_PROMPT_PREFIX=" ${green}|"
#GIT_THEME_PROMPT_SUFFIX="${green}|"
#GIT_THEME_PROMPT_PREFIX=" ${bold_blue}git:(${bold_red}"
#GIT_THEME_PROMPT_SUFFIX="${normal}"

CLOCK_THEME_PROMPT_PREFIX=''
CLOCK_THEME_PROMPT_SUFFIX=' '
THEME_SHOW_CLOCK=true
THEME_SHOW_CLOCK_CHAR=false
THEME_CLOCK_CHAR_COLOR=${THEME_CLOCK_CHAR_COLOR:-"$red"}
THEME_CLOCK_COLOR=${THEME_CLOCK_COLOR:-"$bold_cyan"}
THEME_CLOCK_FORMAT=${THEME_CLOCK_FORMAT:-"%I:%M:%S"}

VIRTUALENV_THEME_PROMPT_PREFIX='('
VIRTUALENV_THEME_PROMPT_SUFFIX=') '

function prompt_command() {
    local RC="$?" # This needs to be first to save last command return code

    hostname="${bold_black}\u@\h"
    virtualenv="${white}$(virtualenv_prompt)"

    if [[ ${RC} == 0 ]]; then
        ret_status="${bold_green}"
    else
        ret_status="${bold_red}"
    fi

    # Add new function git_prompt_status to just give basic status info from oh-my-zsh
    #PS1="$(clock_prompt)${virtualenv}${hostname} ${ret_status}→ ${bold_cyan}\W$(scm_prompt_info) ${reset_color}"
    #PS1="$(clock_prompt)${virtualenv}${hostname} ${ret_status}→ ${bold_cyan}\W$(scm_prompt_status) ${normal}"
    # Ideal setup
    PS1="$(clock_prompt)${virtualenv}${hostname} ${bold_cyan}\W $(scm_char)$(scm_prompt_status)${ret_status}→ ${normal}"
}

safe_append_prompt_command prompt_command
