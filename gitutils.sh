#!/bin/bash

# git branch with fzf
gitb() {
    local branch=`git branch | sed "s/[^a-zA-Z]//g" | fzf`
    git checkout "$branch" 
}

# git log with fzf
gitl() {
    local commit=`git --no-pager log --decorate=short --pretty=oneline | fzf | grep -oP "^[a-zA-Z0-9]+"`
    git checkout "$commit"
}
