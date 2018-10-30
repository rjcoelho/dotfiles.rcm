#!/bin/sh
npm update -g
PACKAGES=(
    git-open
    jira-cmd
    jslint
)
npm install -g ${PACKAGES[@]}