#!/usr/bin/env bash
# Set up zoxide in Bash
# zoxide is a smarter "cd" command, that
# remembers your most used directories
command -v zoxide >/dev/null 2>&1 && eval "$(zoxide init bash)"
