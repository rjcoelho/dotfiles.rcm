#!/bin/sh
npm update -g
PACKAGES=(
    cfn-include
    git-open
    jira-cmd
    jslint
)
npm install -g ${PACKAGES[@]}