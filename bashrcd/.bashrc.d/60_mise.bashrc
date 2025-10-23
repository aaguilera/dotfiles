#!/usr/bin/env bash
# Activate mise-en-place (see https://mise.jdx.dev/)
if [ -f ~/.local/bin/mise ]; then
    eval "$(~/.local/bin/mise activate bash)"
    eval "$(mise completion bash --include-bash-completion-lib)"
elif [ -f /usr/bin/mise ]; then
    eval "$(/usr/bin/mise activate bash)"
    eval "$(mise completion bash --include-bash-completion-lib)"
fi

