#!/bin/sh
npm update -g
PACKAGES=(
    cfn-include
    git-open
    jira-cmd
)
npm install -g ${PACKAGES[@]}