# This script install the following tools:
#
# alacritty       terminal emulator
# exa             an alternative to ls with better outputs
# fzf             fuzzy finder 
# lazygit         git TUI
# neovim          text editor
# ripgrep         faster grep
# zsh             interactive shell
# zoxyde          cd with autojump for frequent directories

# Add copr stuff
sudo dnf copr enable atim/lazygit -y

# Install packages
sudo dnf install -y \
    alacritty \
    exa \
    fzf \ lazygit \
    neovim python3-neovim \
    ripgrep \
    zsh 

# powerlevel10k manual install
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.local/share/powerlevel10k

# Install Meslo patched nerd font
mkdir -p '/home/maxime/.local/share/fonts/meslo'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf \
    -o '/home/maxime/.local/share/fonts/meslo/MesloLGS_NF_Regular.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf \
    -o '/home/maxime/.local/share/fonts/meslo/MesloLGS_NF_Bold.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf \
    -o '/home/maxime/.local/share/fonts/meslo/MesloLGS_NF_Italic.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf \
    -o '/home/maxime/.local/share/fonts/meslo/MesloLGS_NF_Bold_Italic.ttf'

fc-cache -v # update the font cache




