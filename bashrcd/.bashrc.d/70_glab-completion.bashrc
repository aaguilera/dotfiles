#!/usr/bin/env bash
#
# Bash autocomplete for gitlab-cli
#
# This script should run after the "mise" script, in case the "glab" command
# has been installed using mise.
#
command -v glab >/dev/null 2>&1 && eval "$(glab completion -s bash)"
