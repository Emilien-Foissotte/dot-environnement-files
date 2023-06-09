#!/bin/bash
set -euo pipefail

# be sure to have install neovim first and tmux
# sudo apt-get update && sudo apt-get install tmux neovim
git clone https://github.com/tmux-plugins/tpm ~/.tmux/plugins/tpm
cp ./.tmux.conf ~
tmux source ~/.tmux.conf
mkdir -p ~/.config/nvim
cp -r .config/nvim ~/.config/

# install nodejs npm and default-jre for mason lsp tools
# start neovim, packer will tell you it has install plugins
# then start Mason, :Mason to install all lintings, lsp servers etc..
