# Activa direnv
if [ -f "$(which direnv)" ]; then
    eval "$(direnv hook bash)"
fi

