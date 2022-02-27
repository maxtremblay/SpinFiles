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
    neovim \
    ripgrep \
    zsh 

# powerlevel10k manual install
git clone --depth=1 https://github.com/romkatv/powerlevel10k.git ~/.local/share/powerlevel10k

# Install Meslo patched nerd font
mkdir -p '/home/maxime/.local/share/fonts/MesloLGS NF'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Regular.ttf \
    -o '/home/maxime/.local/share/fonts/MesloLGS NF/MesloLGS NF Regular.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold.ttf \
    -o '/home/maxime/.local/share/fonts/MesloLGS NF/MesloLGS NF Bold.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Italic.ttf \
    -o '/home/maxime/.local/share/fonts/MesloLGS NF/MesloLGS NF Italic.ttf'
curl https://github.com/romkatv/powerlevel10k-media/raw/master/MesloLGS%20NF%20Bold%20Italic.ttf \
    -o '/home/maxime/.local/share/fonts/MesloLGS NF/MesloLGS NF Bold Italic.ttf'

fc-cache -v # update the font cache




