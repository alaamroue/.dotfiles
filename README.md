# Dotfiles

## Installation

### Full Install
   ```bash
   git clone https://github.com/alaamroue/.dotfiles ~/.dotfiles --recurse-submodules 
   cd ~/.dotfiles
   stow .
   ```

### Installing Tmux:
   ```bash
   sudo apt install libevent-dev
   sudo apt-get install bison -y
   sudo apt-get install byacc -y
   sudo apt remove tmux
   git clone https://github.com/tmux/tmux.git
   cd tmux/
   sh autogen.sh
   ./configure && make
   sudo make install
   source ~/.bashrc
   ```
