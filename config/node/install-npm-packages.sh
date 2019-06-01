#!/bin/sh
npm update -g
PACKAGES=(
    git-open
    jslint
)
npm install -g ${PACKAGES[@]}