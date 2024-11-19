# Add to bashrc
add_to_bashrc() { grep -qF "$1" ~/.bashrc || printf '%s\n' "$1" >> ~/.bashrc; }
add_to_bashrc "add_to_bashrc() { grep -qF \"\$1\" ~/.bashrc || printf '%s\n' \"\$1\" >> ~/.bashrc; }"

# Work in this temp Directory
cd ~ && mkdir tempAlaaSetup && cd tempAlaaSetup

# Update and install all
sudo apt update
sudo apt-get install -y libevent-dev bison byacc autotools-dev automake build-essential pkg-config autoconf-archive ncurses-dev tree neovim fzf golang-go xsel glow

# Tmux
sudo apt remove -y tmux
git clone https://github.com/tmux/tmux.git
cd tmux/
sh autogen.sh
./configure && make
sudo make install
add_to_bashrc "export PATH=\"\$HOME/.local/bin:\$PATH\""

# Fabric
go install github.com/danielmiessler/fabric@latest
add_to_bashrc "export GOROOT=/usr/local/go"
add_to_bashrc "export GOPATH=$HOME/go"
add_to_bashrc "export PATH=\$GOPATH/bin:\$GOROOT/bin:\$HOME/.local/bin:\$PATH"

# Copy paste to Clipboard
add_to_bashrc "alias pbcopy='xsel --input --clipboard'"
add_to_bashrc "alias pbpaste='xsel --output --clipboard'"


# Zoxide
curl -sSfL https://raw.githubusercontent.com/ajeetdsouza/zoxide/main/install.sh | sh
add_to_bashrc "eval \"\$(zoxide init --cmd cd bash)\""

# Clean Up
cd ~ && rm -fr ~/tempAlaaSetup