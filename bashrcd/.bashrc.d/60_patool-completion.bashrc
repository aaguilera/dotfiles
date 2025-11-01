#!/usr/bin/env bash
#
# Fix bash autocomplete for patool
# requires package python3-argcomplete
#
if [ -f /usr/bin/register-python-argcomplete ]; then
    if [ -f /usr/bin/patool ]; then
        eval "$(register-python-argcomplete patool)"
    fi
fi
