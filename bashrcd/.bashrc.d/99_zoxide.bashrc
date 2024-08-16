# Set up zoxide in Bash
# zoxide is a smarter "cd" command, that
# remembers your most used directories
if [ -f "$(which zoxide)" ]; then
    eval "$(zoxide init bash)"
fi
