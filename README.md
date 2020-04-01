# dotfiles

My dotfiles

# Usage

**WARNING:** Always review the configuration files and customize them to fit your needs.

Clone this repo in your `$HOME/.dotfiles` directory:

    git clone https://github.com/aaguilera/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    git submodule update --remote --merge

Then create soft links to whatever configuration files are useful to you.
You can use `stow` to create links automatically in your $HOME directory:

    cd ~/.dotfiles
    stow vim
    stow git

