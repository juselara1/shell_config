#!/bin/bash

# general path variables
export EDITOR=nvim
export REPOS="$HOME/repositories"
export DATA="$HOME/data"

export CONF_FILES="$HOME/.config"
export CONF_REPOS="$REPOS/config"

export SH_CONF="$CONF_REPOS/shell_config"
export STARSHIP_CONFIG="$CONF_REPOS/starship/config.toml"

export TMP_DATA="$REPOS/tmp"

export MYHID="$CONF_REPOS/myhid"

export CREDS_REPO="$REPOS/keo/credentials"
export GOOGLE_APPLICATION_CREDENTIALS="$TMP_DATA/.gcp_credentials.json"

export IMAGES="$REPOS/images"

export IPYTHONDIR="$CONF_REPOS/ipython"

export TERM="screen-256color"

# calling general bash scripts 
for file in "$CONF_REPOS/shell_scripts/*.sh"
do
    eval "$(cat $file)"
done

# starship
eval "$(starship init bash)"

# shared history
shopt -s histappend
PROMPT_COMMAND="${PROMPT_COMMAND:+$PROMPT_COMMAND$'\n'}history -a; history -c; history -r"

# vi mode
set -o vi

# fzf
[ -f ~/.fzf.bash ] && source ~/.fzf.bash

# pyenv
export PATH="$PATH:$HOME/.pyenv/bin/"
eval "$(pyenv init --path)"

# poetry
export PATH="$PATH:$HOME/.local/bin/"
