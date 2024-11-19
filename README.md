# Dotfiles

## Installation

### Full Install
   ```bash
   sudo apt-get update
   sudo apt install -y stow
   git clone https://github.com/alaamroue/.dotfiles ~/.dotfiles --recurse-submodules 
   cd ~/.dotfiles
   stow .
   ./setup.sh
   tmux source ~/.config/tmux/tmux.conf

   ```

### Installing Tmux:
   ```bash
   sudo apt-get update
   sudo apt-get install -y libevent-dev bison byacc autotools-dev automake build-essential pkg-config autoconf-archive ncurses-dev
   sudo apt remove -y tmux
   git clone https://github.com/tmux/tmux.git
   cd tmux/
   sh autogen.sh
   ./configure && make
   sudo make install
   source ~/.bashrc
   ```

### Usefull Tools
   ```bash
   sudo apt-get update
   sudo apt-get install -y tree neovim fzf
