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
   ```

## RHEL Dump
```
   wsl --import rhel8wsl D:\wsl\rhel8wsl "D:\wsl\xxxxx.tar.gz"
   wsl -d rhel8wsl
   passwd
   su
   subscription-manager register
   dnf install sudo
   sudo dnf install ncurses
   dnf groupinstall "Development Tools"
   dnf install openssl-devel
   sudo dnf install ncurses-devel
   sudo dnf install glibc-langpack-en
   sudo dnf install gcc make automake autoconf libtool
   sudo dnf install procps-ng
   sudo dnf install perl-CPAN
   perl -MCPAN -e 'install Test::More'
   perl -MCPAN -e 'install Test::Output'
```

## texinfo
```
   cd ~
   git clone https://git.savannah.gnu.org/git/texinfo.git
   cd texinfo
   chmod +x ./info/makedoc
   cp ./info/makedoc /usr/local/bin
   ./configure
   make -j$(nproc)
   sudo make install
```

## stow
```
   cd ~
   git clone https://git.savannah.gnu.org/git/stow.git
   cd stow
   autoreconf -iv
   ./configure
   make -j$(nproc)
   sudo make install
```

## libevent
```
   cd ~
   git clone https://github.com/libevent/libevent.git
   cd libevent
   mkdir build && cd build
   cmake ..
   make -j$(nproc)
   sudo make install
```

## tmux
```
   cd ~
   git clone https://github.com/tmux/tmux.git
   cd tmux/
   sh autogen.sh
   ./configure && make
   sudo make install
   echo 'export LD_LIBRARY_PATH=/usr/local/lib64:$LD_LIBRARY_PATH' >> ~/.bashrc
   source ~/.bashrc
```

## dot file
```
   cd ~
   git clone https://github.com/alaamroue/.dotfiles ~/.dotfiles --recurse-submodules 
   cd ~/.dotfiles
   stow .
   tmux source ~/.config/tmux/tmux.conf
   # press cntr+B then shift+i
```

## ninja
```
   cd ~
   git clone https://github.com/ninja-build/ninja.git
   cd ninja
   python3 configure.py --bootstrap
   sudo install ninja /usr/local/bin/
```

## cmake
```
   cd ~
   git clone https://gitlab.kitware.com/cmake/cmake.git
   cd cmake
   ./configure
   make -j$(nproc)
   sudo make install
```

## clang
```
   cd ~
   git clone https://github.com/llvm/llvm-project.git
   cd llvm-project
   mkdir build
   cd build
   cmake -G Ninja -DLLVM_ENABLE_PROJECTS="clang" -DCMAKE_BUILD_TYPE=Release -DCMAKE_INSTALL_PREFIX=/usr/local ../llvm
   ninja
   make -j$(nproc)
   ninja install
```
