#!/usr/bin/env bash
# Activate tailscale bash completion
if [ -f /usr/bin/tailscale ]; then
    eval "$(tailscale completion bash)"
fi

