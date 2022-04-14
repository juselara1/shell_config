#!/bin/bash

launch_pass () {
    tmux new-window "cd \"\$REPOS/pass/password_store\"; password=`cd \"\$REPOS/pass/password_store\"; find . -type f -not -path '*/\.*' | sed s/\.gpg//g | fzf`; pass -c \$password; read"
}
