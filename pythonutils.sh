#!/bin/bash

# activate python environments
activatepy() {
    pushd . "$@" > /dev/null
    sd gr # go to root of git repository
    source ".venv/bin/activate"
    popd "$@" > /dev/null
}

# initialize repository
initpy() {
    git init
    echo "Insert python version"
    local version=`pyenv versions --bare | fzf`
    pyenv local "${version}"
    poetry init -n --author "Juan S. Lara <julara@unal.edu.co>" --python "${version}"
    poetry env use "$HOME/.pyenv/shims/python"
}

# jupytext
jt() {
    case "$1" in
        *.ipynb)
            jupytext --to py "$1"
            ;;
        *.py)
            jupytext --to notebook "$1"
            ;;
    esac
}

# legacy python venv
localpy() {
    python -m venv .venv
}
