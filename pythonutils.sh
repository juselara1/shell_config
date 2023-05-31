#!/bin/bash

# activate python environments
activatepy() {
    pushd . "$@" > /dev/null
    sd gr # go to root of git repository
    source ".venv/bin/activate"
    popd "$@" > /dev/null
}

# python venv
localpy() {
    python -m venv .venv
}
